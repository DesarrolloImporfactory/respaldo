<?php
include 'is_logged.php'; //Archivo verifica que el usario que intenta acceder a la URL esta logueado
/*Inicia validacion del lado del servidor*/
if (empty($_POST['id_cliente']) or empty($_POST['factura'])) {
    echo 'cliente'.$_POST['id_cliente'].'fac'.$_POST['factura'];
    $errors[] = "EL CLIENTE NO TIENE RUC O NO SE ESCOGIO UN DOCUMENTO PARA FACTURAR";
} else if (!empty($_POST['id_cliente'])) {
    /* Connect To Database*/
    require_once "../db.php";
    require_once "../php_conexion.php";
    //Archivo de funciones PHP
    require_once "../funciones.php";
    $session_id     = session_id();
    $simbolo_moneda = get_row('perfil', 'moneda', 'id_perfil', 1);
//Comprobamos si hay archivos en la tabla temporal
    /*$sql_count = mysqli_query($conexion, "select * from tmp_ventas where session_id='" . $session_id . "'");
    $count     = mysqli_num_rows($sql_count);
    if ($count == 0) {
    echo "<script>
    swal({
    title: 'No hay Productos agregados en la factura',
    text: 'Intentar nuevamente',
    type: 'error',
    confirmButtonText: 'ok'
    })</script>";
    exit;
    }*/
    // escaping, additionally removing everything that could be (html/javascript-) code
    $id_cliente        = intval($_POST['id_cliente']);
    $id_vendedor       = intval($_SESSION['id_users']);
    $users             = intval($_SESSION['id_users']);
    $condiciones       = mysqli_real_escape_string($conexion, (strip_tags($_REQUEST['condiciones'], ENT_QUOTES)));
    $numero_cotizacion = mysqli_real_escape_string($conexion, (strip_tags($_REQUEST["cotizacion"], ENT_QUOTES)));
    $numero_factura    = mysqli_real_escape_string($conexion, (strip_tags($_REQUEST["factura"], ENT_QUOTES)));
    
    //$secuencialfactura = mysqli_real_escape_string($conexion, (strip_tags($_REQUEST["secuencialfactura"], ENT_QUOTES)));
     
    $id_comp           = 1;
    @$tip_doc           = intval($_POST['tip_doc']);
    //$trans             = mysqli_real_escape_string($conexion, (strip_tags($_REQUEST["trans"], ENT_QUOTES)));
    $trans='.';
        $formaPago          = mysqli_real_escape_string($conexion, (strip_tags($_REQUEST["formaPago"], ENT_QUOTES)));
    $plazodias          = mysqli_real_escape_string($conexion, (strip_tags($_REQUEST["plazodias"], ENT_QUOTES)));
    
    @$resibido          = floatval($_POST['resibido']);
    $date_added        = date("Y-m-d H:i:s");
    //Operacion de Creditos
    if ($condiciones == 4) {
        $estado = 2;
    } else {
        $estado = 1;
    }
//Seleccionamos el ultimo compo numero_fatura y aumentamos una
    $sql        = mysqli_query($conexion, "select LAST_INSERT_ID(id_factura) as last from facturas_ventas order by id_factura desc limit 0,1 ");
    $rw         = mysqli_fetch_array($sql);
    if ($rw && isset($rw['last'])) {
    $id_factura = $rw['last'] + 1;
} else {
    $id_factura = 1;
}
   
   
// finde la ultima fatura
    //Control de la  numero_fatura y aumentamos una
    $query_id = mysqli_query($conexion, "SELECT RIGHT(numero_factura,6) as factura FROM facturas_ventas ORDER BY factura DESC LIMIT 1")
    or die('error ' . mysqli_error($conexion));
    $count = mysqli_num_rows($query_id);

    if ($count != 0) {

        $data_id = mysqli_fetch_assoc($query_id);
        $factura = $data_id['factura'] + 1;
    } else {
        $factura = 1;
    }

    $buat_id = str_pad($factura, 6, "0", STR_PAD_LEFT);
    $factura = "CFF-$buat_id";
    //echo $factura;
// fin de numero de fatura
    // consulta principal
    $nums          = 1;
    $impuesto      = get_row('perfil', 'impuesto', 'id_perfil', 1);
    $sumador_total = 0;
    $sum_total     = 0;
    $t_iva         = 0;
    //echo "select * from productos, detalle_fact_cot where productos.id_producto=detalle_fact_cot.id_producto and detalle_fact_cot.id_factura='" . $numero_cotizacion . "'";
    $sql           = mysqli_query($conexion, "select * from productos, detalle_fact_cot where productos.id_producto=detalle_fact_cot.id_producto and detalle_fact_cot.id_factura='" . $numero_cotizacion . "'");
    
    while ($row = mysqli_fetch_array($sql)) {
        $id_tmp          = $row["id_detalle"];
        $id_producto     = $row['id_producto'];
        $codigo_producto = $row['codigo_producto'];
        $cantidad        = $row['cantidad'];
        $desc_tmp        = $row['desc_venta'];
        $nombre_producto = $row['nombre_producto'];
        // control del impuesto por productos.
        if ($row['iva_producto'] == 0) {
            $p_venta   = $row['precio_venta'];
            $p_venta_f = number_format($p_venta, 2); //Formateo variables
            $p_venta_r = str_replace(",", "", $p_venta_f); //Reemplazo las comas
            $p_total   = $p_venta_r * $cantidad;
            $f_items   = rebajas($p_total, $desc_tmp); //Aplicando el descuento
            /*--------------------------------------------------------------------------------*/
            $p_total_f = number_format($f_items, 2); //Precio total formateado
            $p_total_r = str_replace(",", "", $p_total_f); //Reemplazo las comas

            $sum_total += $p_total_r; //Sumador
            $t_iva = ($sum_total * $impuesto) / 100;
            $t_iva = number_format($t_iva, 2, '.', '');
        }
        //end impuesto

        $precio_venta   = $row['precio_venta'];
        $costo_producto = $row['costo_producto'];
        $precio_venta_f = number_format($precio_venta, 2); //Formateo variables
        $precio_venta_r = str_replace(",", "", $precio_venta_f); //Reemplazo las comas
        $precio_total   = $precio_venta_r * $cantidad;
        $final_items    = rebajas($precio_total, $desc_tmp); //Aplicando el descuento
        /*--------------------------------------------------------------------------------*/
        $precio_total_f = number_format($final_items, 2); //Precio total formateado
        $precio_total_r = str_replace(",", "", $precio_total_f); //Reemplazo las comas
        $sumador_total += $precio_total_r; //Sumador
        //Comprobamos que el dinero Resibido no sea menor al Totalde la factura
       // echo $resibido.'tptal'.$sumador_total.'cond'.$condiciones;
       
      
        //Insert en la tabla detalle_factura
        echo "INSERT INTO detalle_fact_ventas VALUES (NULL,'$id_factura','$numero_factura','$id_producto','$cantidad','$desc_tmp','$precio_venta_r','$precio_total',0)";
        $insert_detail = mysqli_query($conexion, "INSERT INTO detalle_fact_ventas VALUES (NULL,'$id_factura','$numero_factura','$id_producto','$cantidad','$desc_tmp','$precio_venta_r','$precio_total',0)");
        //GURDAMOS LAS EN EL KARDEX
        $saldo_total = $cantidad * $costo_producto;
        $sql_kardex  = mysqli_query($conexion, "select * from kardex where producto_kardex='" . $id_producto . "' order by id_kardex DESC LIMIT 1");
        $rww         = mysqli_fetch_array($sql_kardex);
        @$id_producto = $rww['producto_kardex'];
        @$costo_saldo = $rww['costo_saldo'];
        @$cant_saldo  = $rww['cant_saldo'] - $cantidad;
        //$nueva_cantidad = $cant_saldo - $cantidad;
        $nuevo_saldo = $cant_saldo * $costo_producto;
        $tipo        = 2;

        guardar_salidas($date_added, $id_producto, $cantidad, $costo_producto, $saldo_total, $cant_saldo, $costo_saldo, $nuevo_saldo, $date_added, $users, $tipo);
// FIN
        // ACTUALIZA EN EL STOCK
        $sql2    = mysqli_query($conexion, "select * from productos where id_producto='" . $id_producto . "'");
        $rw      = mysqli_fetch_array($sql2);
        @$old_qty = $rw['stock_producto']; //Cantidad encontrada en el inventario
        $new_qty = $old_qty - $cantidad; //Nueva cantidad en el inventario
        $update  = mysqli_query($conexion, "UPDATE productos SET stock_producto='" . $new_qty . "' WHERE id_producto='" . $id_producto . "' and inv_producto=0"); //Actualizo la nueva cantidad en el inventario

        $nums++;
    }
    // Fin de la consulta Principal
    $subtotal         = number_format($sumador_total, 2, '.', '');
    $total_iva        = ($subtotal * $impuesto) / 100;
    $total_iva        = number_format($total_iva, 2, '.', '') - number_format($t_iva, 2, '.', '');
    $total_factura    = $subtotal + $total_iva;
    $cambio           = $resibido - $total_factura;
    $saldo_credito    = $total_factura - $resibido;
    $camb             = number_format($cambio, 2);
    $resibido_formato = number_format($resibido, 2);
    if ($condiciones == 4) {
        $insert_prima = mysqli_query($conexion, "INSERT INTO creditos VALUES (NULL,'$factura','$date_added','$id_cliente','$id_vendedor','$total_factura','$saldo_credito','1','$users','1')");
        $insert_abono = mysqli_query($conexion, "INSERT INTO creditos_abonos VALUES (NULL,'$factura','$date_added','$id_cliente','$total_factura','$resibido','$saldo_credito','$users','1','CREDITO INICAL')");
    }
$secuencialfactura= get_row('perfil', 'secuencialfactura', 'id_perfil', 1);
    $insert = mysqli_query($conexion, "INSERT INTO facturas_ventas VALUES (NULL,'$numero_factura','$date_added','$id_cliente','$id_vendedor','$condiciones','$total_factura','$estado','$users','$resibido','1','$id_comp','$trans','$formaPago','$secuencialfactura','$plazodias')");
    // SI TODO ESTA CORRECTO
    echo $id_factura;
    if ($insert) {
    // Obtener el ID del registro insertado
    $id_factura = mysqli_insert_id($conexion);
    //echo "El ID insertado es: $id_insertado";
} else {
    // Manejar el caso de error en la inserción
    echo "Error al insertar el registro: " . mysqli_error($conexion);
}
    generax($id_factura);
    //Actualizar secuencial factura
    $perfil        = mysqli_query($conexion, "select * from perfil");
    $rwperfil         = mysqli_fetch_array($perfil);
    $secuencial_factura = '';
    if(isset($rwperfil["secuencialfactura"]) != null){
        $secuencial_factura = $rwperfil['secuencialfactura'] + 1;
    }

    $updateperfilsecuencialfatura  = mysqli_query($conexion, "UPDATE perfil SET secuencialfactura='" . $secuencial_factura . "' WHERE id_perfil='1'"); //Actualizo la nueva cantidad en el inventario
    //echo "UPDATE perfil SET secuencialfactura='" . $secuencial_factura . "' WHERE id_perfil='1'";
    //$pedido_id=$_POST['factura'];
   // echo "UPDATE facturas_cot SET facturada='1' WHERE id_factura=$numero_cotizacion";
     $updatepedido  = mysqli_query($conexion, "UPDATE facturas_cot SET facturada='1' WHERE id_factura=$numero_cotizacion"); //Actualizo la nueva cantidad en el inventario
     $updatepedido  = mysqli_query($conexion, "UPDATE facturas_cot SET factura_numero='$id_factura' WHERE id_factura=$numero_cotizacion"); //Actualizo la nueva cantidad en el inventario
    $ruta_firma = $rwperfil['firma'];
    $pass_firma = $rwperfil['passFirma'];
    
    if ($condiciones == 4) {
        echo "<script>
        swal({
          title: 'VENTA AL CREDITO GUARDADA CON EXITO CON ATICIPO DE: $simbolo_moneda $resibido_formato',
          text: 'Factura: $factura',
          type: 'success',
          confirmButtonText: 'ok'
      })
  </script>";
        exit;
    }
    if ($insert_detail) {
        echo "<script>
    $('#modal_vuelto').modal('show');
</script>";
        #$messages[] = "Venta  ha sido Guardada satisfactoriamente.";
    } else {
        $errors[] = "Lo siento algo ha salido mal intenta nuevamente." . mysqli_error($conexion);
    }
} else {
    $errors[] = "Error desconocido.";
}

if (isset($errors)) {

    ?>
    <div class="alert alert-danger" role="alert">
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
<!-- Modal -->
