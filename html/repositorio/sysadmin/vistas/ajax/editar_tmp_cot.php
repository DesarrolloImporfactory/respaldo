<?php
/*-------------------------
Autor: Eduardo vega
---------------------------*/
include 'is_logged.php'; //Archivo verifica que el usario que intenta acceder a la URL esta logueado
$session_id = session_id();
$id_factura = $_SESSION['id_factura'];
if (isset($_POST['id'])) {$id = $_POST['id'];}
if (isset($_POST['cantidad'])) {$cantidad = $_POST['cantidad'];}

/* Connect To Database*/
require_once "../db.php";
require_once "../php_conexion.php";
//Archivo de funciones PHP
require_once "../funciones.php";

if (!empty($id) and !empty($cantidad)) {
    $id_producto    = get_row('productos', 'id_producto', 'codigo_producto', $id);
    $numero_factura = get_row('facturas_cot', 'numero_factura', 'id_factura', $id_factura);
    $precio_venta   = get_row('productos', 'valor1_producto', 'id_producto', $id_producto);

    // consulta para comparar el stock con la cantidad resibida
    $query = mysqli_query($conexion, "select stock_producto, inv_producto from productos where id_producto = '$id_producto'");
    $rw    = mysqli_fetch_array($query);
    $stock = $rw['stock_producto'];
    $inv   = $rw['inv_producto'];

    //Comprobamos si ya agregamos un producto a la tabla tmp_compra
    $comprobar = mysqli_query($conexion, "select * from detalle_fact_cot where id_producto='" . $id_producto . "' and id_factura='" . $id_factura . "'");

    if ($row = mysqli_fetch_array($comprobar)) {
        $cant = $row['cantidad'] + $cantidad;
        // condicion si el stock e menor que la cantidad requerida
        if ($cant > $stock and $inv == 0) {
            echo "<script>swal('LA CANTIDAD SUPERA AL STOCK!', 'INTENTAR NUEVAMENTE', 'error')
                                $('#resultados').load('../ajax/editar_tmp_cot.php');
            </script>";
        } else {

            $sql          = "UPDATE detalle_fact_cot SET cantidad='" . $cant . "' WHERE id_producto='" . $id_producto . "' and id_factura='" . $id_factura . "'";
            $query_update = mysqli_query($conexion, $sql);
            echo "<script> $.Notification.notify('warning','bottom center','NOTIFICACIÓN', 'PRODUCTO AGREGADO A LA DATA')</script>";
        }
        // fin codicion cantaidad

    } else {
        // condicion si el stock e menor que la cantidad requerida
        if ($cantidad > $stock and $inv == 0) {
            echo "<script>swal('LA CANTIDAD SUPERA AL STOCK!', 'INTENTAR NUEVAMENTE', 'error')
                    $('#resultados').load('../ajax/editar_tmp_cot.php');
            </script>";
        } else {

            $insert_tmp = mysqli_query($conexion, "INSERT INTO detalle_fact_cot (id_factura,numero_factura, id_producto,cantidad,precio_venta) VALUES ('$id_factura','$numero_factura','$id_producto','$cantidad','$precio_venta')");
            echo "<script> $.Notification.notify('warning','bottom center','NOTIFICACIÓN', 'PRODUCTO AGREGADO A LA DATA')</script>";
        }
        // fin codicion cantaidad
    }

}
if (isset($_GET['id'])) //codigo elimina un elemento del array
{
    $id_detalle = intval($_GET['id']);
    $id_prod    = get_row('detalle_fact_cot', 'id_producto', 'id_detalle', $id_detalle);
    $quantity   = get_row('detalle_fact_cot', 'cantidad', 'id_detalle', $id_detalle);
    $delete     = mysqli_query($conexion, "DELETE FROM detalle_fact_cot WHERE id_detalle='" . $id_detalle . "'");
}
$simbolo_moneda = get_row('perfil', 'moneda', 'id_perfil', 1);
?>
<div class="table-responsive">
    <table class="table table-sm">
        <thead class="thead-default">
            <tr>
                <th class='text-center'>Cod</th>
                <th class='text-center'>Cant.</th>
                <th class='text-center'>Producto.</th>
                <th class='text-center'>Precio <?php echo $simbolo_moneda; ?></th>
                <th class='text-center'>Desc %</th>
                <th class='text-right'>Total</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <?php
$impuesto       = get_row('perfil', 'impuesto', 'id_perfil', 1);
$nom_impuesto   = get_row('perfil', 'nom_impuesto', 'id_perfil', 1);
$sumador_total  = 0;
$total_iva      = 0;
$total_impuesto = 0;
$cantidad_total = 0;
$costo_total=0;
$productos_guia = "";
$id_factura_cotizacion_edit=$id_factura;
$pedido_drog= get_row('facturas_cot', 'drogshipin', 'id_factura', $id_factura);
$tienda_drog= get_row('facturas_cot', 'tienda', 'id_factura', $id_factura);
  //echo 'sa'.$pedido_drog;
  
  if($pedido_drog==4){
      $archivo_tienda = $tienda_drog . '/sysadmin/vistas/db1.php'; // Nombre del archivo original
     //echo $archivo_tienda;
    $contenido_tienda = file_get_contents($archivo_tienda);
    $archivo_destino_tienda = '../db_destino_guia.php'; // Nombre del archivo de destino
    //echo $archivo_destino_tienda;
    // $origen = fopen($archivo_origen_marketplace, 'r');
    if (file_put_contents($archivo_destino_tienda, $contenido_tienda) !== false) {
        //echo "El JSON se ha guardado correctamente en el archivo.";


    } else {
        echo "Error al guardar eddl JSON en el archivo.";
    }

    require_once "../php_conexion_destino_guia.php";
    $id_factura= get_row('facturas_cot', 'id_factura_origen', 'id_factura', $id_factura);
    $sql            = mysqli_query($conexion_destino, "select * from productos, facturas_cot, detalle_fact_cot where facturas_cot.id_factura=detalle_fact_cot.id_factura and  facturas_cot.id_factura='$id_factura' and productos.id_producto=detalle_fact_cot.id_producto");    
  }else{
  $sql            = mysqli_query($conexion, "select * from productos, facturas_cot, detalle_fact_cot where facturas_cot.id_factura=detalle_fact_cot.id_factura and  facturas_cot.id_factura='$id_factura' and productos.id_producto=detalle_fact_cot.id_producto");    
  }
 
//echo "select * from productos, facturas_cot, detalle_fact_cot where facturas_cot.id_factura=detalle_fact_cot.id_factura and  facturas_cot.id_factura='$id_factura' and productos.id_producto=detalle_fact_cot.id_producto";

$costo_total=0;
//print_r($sql);
while ($row = mysqli_fetch_array($sql)) {
    $id_detalle      = $row["id_detalle"];
    $id_producto     = $row["id_producto"];
    $codigo_producto = $row['codigo_producto'];
    $cantidad        = $row['cantidad'];
    $desc_tmp        = $row['desc_venta'];
    $nombre_producto = $row['nombre_producto'];
    $costo_producto    = $row['costo_producto'];
    $guia_enviada             = $row['guia_enviada'];
    //$id_factura             = $row['id_factura'];
    $drogshipin_tmp             = $row['drogshipin_tmp'];
    
   
    //echo $costo_producto;
    $id_pedido_cot      = $row["id_factura"];
    $tienda   = $row['tienda'];
    
    
    $precio_venta    = $row['precio_venta'];
    $precio_venta_f  = number_format($precio_venta, 2); //Formateo variables
    $precio_venta_r  = str_replace(",", "", $precio_venta_f); //Reemplazo las comas
    $precio_total    = $precio_venta_r * $cantidad;
    $final_items     = rebajas($precio_total, $desc_tmp); //Aplicando el descuento
    /*--------------------------------------------------------------------------------*/
    $precio_total_f = number_format($final_items, 2); //Precio total formateado
    $precio_total_r = str_replace(",", "", $precio_total_f); //Reemplazo las comas
    $sumador_total += $precio_total_r; //Sumador
    $subtotal = number_format($sumador_total, 2, '.', '');
    if ($row['iva_producto'] == 1) {
        $total_iva = iva($precio_venta);
        $total_iva = 0;
    } else {
        $total_iva = 0;
    }
    $total_impuesto += rebajas($total_iva, $desc_tmp) * $cantidad;
    ?>
    <tr>
        <td class='text-center'><?php echo $codigo_producto; ?></td>
        <td class='text-center'><?php 
        $cantidad_total=$cantidad_total+$cantidad;
        $costo_total=$costo_total+$costo_producto*$cantidad;
        echo $cantidad; ?></td>
        <td><?php 
        $productos_guia=$productos_guia.' '.$nombre_producto.'x'.$cantidad;
        echo $nombre_producto; ?></td>
        <td class='text-center'>
            <div class="input-group">
                <select id="<?php echo $id_detalle; ?>" class="form-control employee_id">
                    <?php
$sql1 = mysqli_query($conexion, "select * from productos where id_producto='" . $id_producto . "'");
    while ($rw1 = mysqli_fetch_array($sql1)) {
        ?>
                        <option selected disabled value="<?php echo $precio_venta ?>"><?php echo number_format($precio_venta, 2); ?></option>
                        <option value="<?php echo $rw1['valor1_producto'] ?>">PV <?php echo number_format($rw1['valor1_producto'], 2); ?></option>
                        <option value="<?php echo $rw1['valor2_producto'] ?>">PM <?php echo number_format($rw1['valor2_producto'], 2); ?></option>
                        <option value="<?php echo $rw1['valor3_producto'] ?>">PE <?php echo number_format($rw1['valor3_producto'], 2); ?></option>
                        <?php
}
    ?>
                </select>
            </div>
        </td>
        <td align="right" width="15%">
            <input type="text" class="form-control txt_desc" style="text-align:center" value="<?php echo $desc_tmp; ?>" id="<?php echo $id_detalle; ?>">
        </td>
        <td class='text-right'><?php echo $simbolo_moneda . ' ' . number_format($final_items, 2); ?></td>
        <td class='text-center'>
             <?php
            if($guia_enviada!=1){
                
            ?>
            <a href="#" class='btn btn-danger btn-sm waves-effect waves-light' onclick="eliminar('<?php echo $id_detalle ?>')"><i class="fa fa-remove"></i>
             <?php
            
            }?>
            </a>
        </td>
    </tr>
    <?php
}
//echo "update facturas_cot set monto_factura='$total_factura' where id_factura='$id_factura_cotizacion_edit'";
$total_factura = @$subtotal + $total_impuesto;
$update        = mysqli_query($conexion, "update facturas_cot set monto_factura='$total_factura' where id_factura='$id_factura_cotizacion_edit'");

?>
<tr>
    <td class='text-right' colspan=5>SUBTOTAL</td>
    <td class='text-right'><b><?php echo $simbolo_moneda . ' ' . number_format(@$subtotal, 2); ?></b></td>
    <td></td>
</tr>
<!--tr>
    <td class='text-right' colspan=5><?php echo $nom_impuesto; ?> (<?php echo $impuesto; ?>)% </td>
    <td class='text-right'><?php echo $simbolo_moneda . ' ' . number_format($total_impuesto, 2); ?></td>
    <td></td>
</tr-->
<tr>
    <td style="font-size: 14pt;" class='text-right' colspan=5><b>TOTAL <?php echo $simbolo_moneda; ?></b></td>
    <td style="font-size: 16pt;" class='text-right'><span class="label label-danger"><b><?php echo number_format($total_factura, 2); ?></b></span></td>
    <td></td>
</tr>
</tbody>
</table>
    
    <input type="hidden"   value="<?php echo $total_factura; ?>" id="valor_total_" name="valor_total">
    <input type="hidden"   value="<?php echo $cantidad_total; ?>" id="cantidad_total" name="cantidad_total">
    <input type="hidden"   value="<?php echo $productos_guia; ?>" id="productos_guia" name="productos_guia">
    <input type="hidden"   value="<?php echo $costo_total; ?>" id="costo_total" name="costo_total">
    <input type="hidden"   value="<?php echo $tienda; ?>" id="tienda" name="tienda">
    <input type="hidden"   value="<?php echo $id_pedido_cot; ?>" id="id_pedido_cot" name="id_pedido_cot">
    
    
</div>
<script>
    $("#valorasegurado").val(<?php echo $costo_total; ?>);
    $(document).ready(function () {
        $('.txt_desc').off('blur');
        $('.txt_desc').on('blur',function(event){
            var keycode = (event.keyCode ? event.keyCode : event.which);
        // if(keycode == '13'){
            id_detalle = $(this).attr("id");
            desc = $(this).val();
             //Inicia validacion
             if (isNaN(desc)) {
                $.Notification.notify('error','bottom center','ERROR', 'DIGITAR UN DESCUENTO VALIDO')
                $(this).focus();
                return false;
            }
    //Fin validacion
    $.ajax({
        type: "POST",
        url: "../ajax/editar_desc_cot2.php",
        data: "id_detalle=" + id_detalle + "&desc=" + desc,
        success: function(datos) {
         $("#resultados").load("../ajax/editar_tmp_cot.php");
         $.Notification.notify('success','bottom center','EXITO!', 'DESCUENTO ACTUALIZADO CORRECTAMENTE')
     }
 });
        // }
    });

          $(".employee_id").on("change", function(event) {
         id_detalle = $(this).attr("id");
        precio = $(this).val();
        $.ajax({
            type: "POST",
            url: "../ajax/editar_precio_cot2.php",
            data: "id_detalle=" + id_detalle + "&precio=" + precio,
            success: function(datos) {
               $("#resultados").load("../ajax/editar_tmp_cot.php");
               $.Notification.notify('success','bottom center','EXITO!', 'PRECIO ACTUALIZADO CORRECTAMENTE')
           }
       });
    });

    });
</script>
