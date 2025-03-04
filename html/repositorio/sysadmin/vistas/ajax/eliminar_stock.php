<?php
include 'is_logged.php'; //Archivo verifica que el usario que intenta acceder a la URL esta logueado
$id_producto = $_SESSION['id'];
/*Inicia validacion del lado del servidor*/
if (empty($_POST['quantity_remove'])) {
    $errors[] = "Cantidad vacía";
} else if (!empty($_POST['quantity_remove'])) {
    /* Connect To Database*/
    require_once "../db.php";
    require_once "../php_conexion.php";
    require_once "../funciones.php";
    // escaping, additionally removing everything that could be (html/javascript-) code
    $quantity  = intval($_POST['quantity_remove']);
    $reference = mysqli_real_escape_string($conexion, (strip_tags($_POST["reference_remove"], ENT_QUOTES)));
    $motivo    = mysqli_real_escape_string($conexion, (strip_tags($_POST["motivo_remove"], ENT_QUOTES)));
    $user_id   = $_SESSION['id_users'];
    $nota      = "eliminó $quantity producto(s) al inventario";
    $fecha     = date("Y-m-d H:i:s");
    $tipo      = 2;
    guardar_historial($id_producto, $user_id, $fecha, $nota, $reference, $quantity, $tipo, $motivo);
    $update = eliminar_stock($id_producto, $quantity);

//GURDAMOS LAS EN EL KARDEX
    @$sql_kardex  = mysqli_query($conexion, "select * from kardex where producto_kardex='" . $id_producto . "' order by id_kardex DESC LIMIT 1");
    @$rww         = mysqli_fetch_array($sql_kardex);
    @$costo       = $rww['costo_saldo'];
    @$saldo_total = $quantity * $costo;
    @$id_producto = $rww['producto_kardex'];
    @$costo_saldo = $rww['costo_saldo'];
    @$cant_saldo  = $rww['cant_saldo'] - $quantity;
    @$tienda      = get_row('productos', 'tienda', 'id_producto', $id_producto);
    //$nueva_cantidad = $cant_saldo - $cantidad;
    @$nuevo_saldo = $cant_saldo * $costo;
    @$tip         = 4;

     if($tienda=='enviado'){
     if (isset($_SERVER['HTTPS']) &&
    ($_SERVER['HTTPS'] == 'on' || $_SERVER['HTTPS'] == 1) ||
    isset($_SERVER['HTTP_X_FORWARDED_PROTO']) &&
    $_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https'
) {
    $protocol = 'https://';
} else {
    $protocol = 'http://';
}
$server_url = $protocol . $_SERVER['HTTP_HOST'];   

if ($_SERVER['HTTP_HOST'] == 'localhost') {
    $destino = new mysqli('localhost', 'root', '', 'master');
} else {
    $destino = new mysqli('localhost', 'imporsuit_marketplace', 'imporsuit_marketplace', 'imporsuit_marketplace');
}

$stock= get_row('productos', 'stock_producto', 'id_producto', $id_producto);
 $update  = mysqli_query($destino, "update productos set stock_producto='$stock' where id_producto_origen='$id_producto' and tienda='$server_url' and inv_producto=0"); //Actualizo la nueva cantidad en el inventario
                    
    }
    
    guardar_salidas($fecha, $id_producto, $quantity, $costo, $saldo_total, $cant_saldo, $costo_saldo, $nuevo_saldo, $fecha, $user_id, $tip);
// FIN

    if ($update) {
        $messages[] = "El Stock  ha sido Eliminado satisfactoriamente.";
    } else {
        $errors[] = "Lo siento algo ha salido mal intenta nuevamente." . mysqli_error($conexion);
    }
} else {
    $errors[] = "Error desconocido.";
}

if (isset($errors)) {

    ?>
    <div class="alert alert-danger" role="alert">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Error!</strong>
        <?php
foreach ($errors as $error) {
        echo $error;
    }
    ?>
    </div>
    <?php
}
if (isset($messages)) {

    ?>
    <div class="alert alert-success" role="alert">
        <strong>¡Bien hecho!</strong>
        <?php
foreach ($messages as $message) {
        echo $message;
    }
    ?>
    </div>
    <?php
}

?>