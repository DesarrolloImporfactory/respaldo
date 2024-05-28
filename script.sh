#!/bin/bash

# El nombre del dominio como argumento
DOMINIO=$1

# Verificar si se proporcionó el nombre del dominio
if [ -z "$DOMINIO" ]; then
  echo "Error: No se proporcionó el nombre del dominio."
  exit 1
fi

# Definir la contraseña de sudo (¡No recomendado para producción!)
SUDO_PASSWORD="Mark2demasiado.."

# Crear la configuración de zona BIND9
echo "zone \"$DOMINIO.merkapro.ec\" IN {
 type master;
 file \"/etc/bind/zones/$DOMINIO.merkapro.ec\";
};" | echo $SUDO_PASSWORD | sudo -S tee -a /etc/bind/named.conf

# Crear el archivo de zona DNS
echo $SUDO_PASSWORD | sudo -S tee /etc/bind/zones/$DOMINIO.merkapro.ec > /dev/null <<EOF
;
; BIND data file for local loopback interface
;
\$TTL    604800
@       IN      SOA     $DOMINIO.merkapro.ec. root.merkapro.ec. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@               IN      NS      $DOMINIO.merkapro.ec.
$DOMINIO     IN      A       77.37.67.232
@       IN      AAAA    ::1
EOF

# Reiniciar BIND9 para cargar la nueva configuración
echo $SUDO_PASSWORD | sudo -S systemctl restart bind9

# Crear el archivo de configuración de Apache para el dominio
echo $SUDO_PASSWORD | sudo -S tee /etc/apache2/sites-available/$DOMINIO.merkapro.ec.conf > /dev/null <<EOF
<VirtualHost *:80>
    ServerAdmin soportet@merkapro.ec
    ServerName $DOMINIO.merkapro.ec
    ServerAlias $DOMINIO.merkapro.ec
    DirectoryIndex index.php index.html
    DocumentRoot /var/www/html/$DOMINIO
    ErrorLog \${APACHE_LOG_DIR}/$DOMINIO.merkapro.log
    CustomLog \${APACHE_LOG_DIR}/$DOMINIO.merkapro.log combined
</VirtualHost>

<IfModule mod_ssl.c>
<VirtualHost *:443>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html/$DOMINIO
    ErrorLog \${APACHE_LOG_DIR}/$DOMINIO.merkapro.log
    CustomLog \${APACHE_LOG_DIR}/$DOMINIO.merkapro.log combined
    ServerName $DOMINIO.merkapro.ec
    SSLCertificateFile /etc/letsencrypt/live/merkapro.ec/fullchain.pem
    SSLCertificateKeyFile /etc/letsencrypt/live/merkapro.ec/privkey.pem
    Include /etc/letsencrypt/options-ssl-apache.conf
</VirtualHost>
</IfModule>
EOF

# Habilitar el sitio en Apache y recargar el servicio
echo $SUDO_PASSWORD | sudo -S a2ensite $DOMINIO.merkapro.ec.conf
echo $SUDO_PASSWORD | sudo -S systemctl reload apache2

# Copiar la carpeta de la tienda al nuevo directorio del dominio
echo $SUDO_PASSWORD | sudo -S cp -r /var/www/html/choclostore /var/www/html/$DOMINIO

# Cambiar permisos del directorio del dominio
echo $SUDO_PASSWORD | sudo -S chmod -R 777 /var/www/html/$DOMINIO
echo "La tienda para $DOMINIO ha sido configurada y está lista para usarse."

# Iniciar sesión en MySQL y configurar la base de datos y el usuario
mysql -uroot -p'Mark2demasiado..' <<EOF
CREATE DATABASE IF NOT EXISTS imporsuit_$DOMINIO;
CREATE USER 'imporsuit_$DOMINIO'@'%' IDENTIFIED BY 'imporsuit_$DOMINIO';
GRANT ALL PRIVILEGES ON imporsuit_$DOMINIO.* TO 'imporsuit_$DOMINIO'@'%';
FLUSH PRIVILEGES;
EOF

# Cargar el archivo SQL en la base de datos
mysql -uroot -p'Mark2demasiado..' imporsuit_$DOMINIO < /var/www/base.sql

# Actualizar el archivo db.php con las nuevas credenciales
DB_FILE="/var/www/html/$DOMINIO/sysadmin/vistas/db.php"
sudo mkdir -p $(dirname "$DB_FILE")
echo $SUDO_PASSWORD | sudo -S tee $DB_FILE > /dev/null <<EOF
<?php
@define('DB_HOST', 'localhost');
@define('DB_USER', 'imporsuit_$DOMINIO');
@define('DB_PASS', 'imporsuit_$DOMINIO');
@define('DB_NAME', 'imporsuit_$DOMINIO');

\$host = 'localhost';
\$usuario = 'imporsuit_$DOMINIO';
\$contrasena = 'imporsuit_$DOMINIO';
\$base_de_datos = 'imporsuit_$DOMINIO';
EOF

# Mensaje final
echo "Configuración completa para $DOMINIO."
