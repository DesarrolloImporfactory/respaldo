#!/bin/bash

# Directorio raíz
root_dir="/var/www/html"

# Directorio del repositorio
repo_dir="${root_dir}/repositorio"

# Recorre todas las carpetas en el directorio raíz
for dir in "${root_dir}"/*/; do
    # Verifica que no sea el directorio del repositorio
    if [[ "${dir}" != "${repo_dir}/" ]]; then
        # Copia todos los archivos del repositorio a la carpeta actual
        cp -r "${repo_dir}/"* "${dir}"
        echo "Archivos copiados a ${dir}"
    fi
done

echo "Actualización completa."
