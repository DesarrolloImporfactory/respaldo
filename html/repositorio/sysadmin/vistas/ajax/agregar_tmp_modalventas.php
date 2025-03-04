<?php
/*-------------------------
Autor: Delmar Lopez
Web: www.softwys.com
Mail: softwysop@gmail.com
---------------------------*/
include 'is_logged.php'; //Archivo verifica que el usario que intenta acceder a la URL esta logueado
$session_id = session_id();
/* Connect To Database*/
require_once "../db.php";
require_once "../php_conexion.php";
//Archivo de funciones PHP
require_once "../funciones.php";
if (isset($_POST['id'])) {$id = $_POST['id'];}
if (isset($_POST['cantidad'])) {$cantidad = $_POST['cantidad'];}
if (isset($_POST['precio_venta'])) {$precio_venta = $_POST['precio_venta'];}
if (isset($_POST['descripcion_libre'])) {$descripcion_libre = $_POST['descripcion_libre'];}
//echo $descripcion_libre;
if (!empty($id) and !empty($cantidad) and !empty($precio_venta)) {
    // consulta para comparar el stock con la cantidad resibida
    $query = mysqli_query($conexion, "select stock_producto, inv_producto from productos where id_producto = '$id'");
    $rw    = mysqli_fetch_array($query);
    $stock = $rw['stock_producto'];
    $inv   = $rw['inv_producto'];

    //Comprobamos si agregamos un producto a la tabla tmp_compra
    $comprobar = mysqli_query($conexion, "select * from tmp_ventas, productos where productos.id_producto = tmp_ventas.id_producto and tmp_ventas.id_producto='" . $id . "' and tmp_ventas.session_id='" . $session_id . "'");
    if ($row = mysqli_fetch_array($comprobar)) {
        $cant = $row['cantidad_tmp'] + $cantidad;
// condicion si el stock e menor que la cantidad requerida
        if ($cant > $row['stock_producto'] and $inv == 0) {
            echo "<script>swal('LA CATIDAD SUPERA AL STOCK', 'INTENTAR NUEVAMENTE', 'error')
            $('#resultados').load('../ajax/agregar_tmp.php');
            </script>";
            exit;
        } else {
            $sql          = "UPDATE tmp_ventas SET cantidad_tmp='" . $cant . "', precio_tmp='" . $precio_venta . "' WHERE id_producto='" . $id . "' and session_id='" . $session_id . "'";
            $query_update = mysqli_query($conexion, $sql);
            echo "<script> $.Notification.notify('success','bottom center','NOTIFICACIÓN', 'PRODUCTO AGREGADO A LA FACTURA CORRECTAMENTE')</script>";
        }
        // fin codicion cantaidad

    } else {
// condicion si el stock e menor que la cantidad requerida
        if ($cantidad > $stock and $inv == 0) {
            echo "<script>Swal.fire('LA CATIDAD SUPERA AL STOCK', 'INTENTAR NUEVAMENTE', 'error')
             $('#resultados').load('../ajax/agregar_tmp.php');
            </script>";
            exit;
        } else {
           $descripcion_producto= get_row('productos', 'nombre_producto', 'id_producto', $id);
          // echo "INSERT INTO tmp_ventas (id_producto,cantidad_tmp,precio_tmp,desc_tmp,session_id, descripcion) VALUES ('$id','$cantidad','$precio_venta','0','$session_id', '$descripcion_producto')";
            $insert_tmp = mysqli_query($conexion, "INSERT INTO tmp_ventas (id_producto,cantidad_tmp,precio_tmp,desc_tmp,session_id, descripcion) VALUES ('$id','$cantidad','$precio_venta','0','$session_id', '$descripcion_producto')");
            echo "<script> $.Notification.notify('success','bottom center','NOTIFICACIÓN', 'PRODUCTO AGREGADO A LA FACTURA CORRECTAMENTE')</script>";
        }
        // fin codicion cantaidad
    }

}
if (isset($_GET['id'])) //codigo elimina un elemento del array
{
    $id_tmp = intval($_GET['id']);
    $delete = mysqli_query($conexion, "DELETE FROM tmp_ventas WHERE id_tmp='" . $id_tmp . "'");
}
$simbolo_moneda = get_row('perfil', 'moneda', 'id_perfil', 1);
?>
<div class="table-responsive">
    <table class="table table-sm">
        <thead class="thead-default">
            <tr>
                <th class='text-center'>COD</th>
                <th class='text-center'>CANT.</th>
                <th class='text-center'>DESCRIP.</th>
                <th class='text-center'>PRECIO <?php echo $simbolo_moneda; ?></th>
                
                <th class='text-center'>DESC %</th>
                <th class='text-right'>IVA</th>
                <th class='text-right'>TOTAL</th>
                
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
$subtotal       = 0;
$subtotal_sin_iva=0;
$sql            = mysqli_query($conexion, "select * from productos, tmp_ventas where productos.id_producto=tmp_ventas.id_producto and tmp_ventas.session_id='" . $session_id . "'");
while ($row = mysqli_fetch_array($sql)) {
    $id_tmp          = $row["id_tmp"];
    $codigo_producto = $row['codigo_producto'];
    $id_producto     = $row['id_producto'];
    $cantidad        = $row['cantidad_tmp'];
    $desc_tmp        = $row['desc_tmp'];
    $nombre_producto = $row['nombre_producto'];
    
    $descripcion        = $row['descripcion'];
    $iva_tmp = $row['iva_tmp'];

    $precio_venta   = $row['precio_tmp'];
    $subtotal_sin_iva=$subtotal_sin_iva+$precio_venta*$cantidad;
     
    $precio_venta_unitario = $precio_venta;
    $precio_venta_f = number_format($precio_venta, 2); //Formateo variables
    $precio_venta_r = str_replace(",", "", $precio_venta_f); //Reemplazo las comas
    $precio_total   = $precio_venta_r * $cantidad;
    $final_items    = rebajas($precio_total, $desc_tmp); //Aplicando el descuento
    /*--------------------------------------------------------------------------------*/
     $impuesto=get_row('perfil','impuesto', 'id_perfil', 1);
        $valor= ($impuesto/100)+1;
	$precio_venta=$final_items;
	$precio_venta_f=$precio_venta;//Formateo variable
	$precio_venta_r1=str_replace(",","",$precio_venta_f);//Reemplazo las comas  
        //PRECIO DESGLOSADO
        $precio_venta_desglosado=$precio_venta_r1/$valor;
        $impuesto_unitario=$precio_venta_f-$precio_venta_desglosado;
    /*--------*/
    $precio_total_f = number_format($final_items, 2); //Precio total formateado
    $precio_total_r = str_replace(",", "", $precio_total_f); //Reemplazo las comas
    $sumador_total += $precio_venta_desglosado; //Sumador
    $final_items = rebajas($precio_total, $desc_tmp); //Aplicando el descuento
    $subtotal    = number_format($sumador_total, 2, '.', '');
  /*  if ($row['iva_producto'] == 1) {
        $total_iva = $impuesto_unitario;
    } else {
        $total_iva = iva($precio_venta_desglosado);
    }*/
    //$total_impuesto += rebajas($subtotal, $desc_tmp) * $cantidad;
    if ($iva_tmp==1){
        $total_iva=$total_iva+iva($precio_venta);
    }
    
    $total_impuesto=$total_impuesto+$impuesto_unitario;
    //echo $total_impuesto.'<br>';
    ?>
    <tr>
        <td class='text-center'><?php echo $codigo_producto; ?></td>
        <td class='text-center'><?php echo $cantidad; ?></td>
        <td class='text-center'>
            <div class="input-group">
                
                <input type="text" class="form-control descripcion_id" style="text-align:center; font-size:10px;" value="<?php echo $descripcion; ?>" id="<?php echo $id_tmp; ?>">
            </div>
        </td>
        <td class='text-center'>
  <div class="input-group" style="width: 100%; display: flex; justify-content: center;">
    <input type="text" class="form-control employee_id" style="text-align: center; font-size: 10px; max-width: 70px;" value="<?php echo number_format($precio_venta, 2); ?>" id="<?php echo $id_tmp; ?>">
  </div>
</td>
        <td width="15%">
            <input type="text" class="form-control  txt_desc" style="text-align:center; font-size:10px; max-width: 70px" value="<?php echo $desc_tmp; ?>" id="<?php echo $id_tmp; ?>">
        </td>
        <td class="text-center align-middle">
    <div class="input-group justify-content-center">
        <?php
       if ($row["iva_tmp"] == 1) {
    echo "<input type='checkbox' onclick='agregar_iva(this, $id_tmp)' checked>";
} else {
    echo "<input type='checkbox' onclick='agregar_iva(this, $id_tmp)'>";
}
        ?>
    </div>
</td>
                        
        <td class='text-right'><?php echo $simbolo_moneda . ' ' . number_format($final_items, 2); ?></td>
        <!--<td class='text-right'><?php echo $simbolo_moneda . ' ' . number_format($total_iva, 2); ?></td>-->
        
        <td class='text-center'>
            <a href="#" class='btn btn-danger btn-sm waves-effect waves-light' style="font-size: 5px" onclick="eliminar('<?php echo $id_tmp ?>')"><i class="fa fa-remove"></i>
            </a>
        </td>
    </tr>
    <?php
}
$total_factura = $subtotal_sin_iva + $total_iva;

?>
<tr>
    <td class='text-right' colspan=5>SUBTOTAL</td>
    <td class='text-right'><b><?php echo $simbolo_moneda . ' ' . number_format($subtotal_sin_iva, 2); ?></b></td>
    <td></td>
</tr>
<tr>
    <td class='text-right' colspan=5><?php echo $nom_impuesto; ?> (<?php echo $impuesto; ?>)% </td>
    <td class='text-right'><?php echo $simbolo_moneda . ' ' . number_format($total_iva, 2); ?></td>
    <td></td>
</tr>
<tr>
    <td style="font-size: 14pt;" class='text-right' colspan=5><b>TOTAL <?php echo $simbolo_moneda; ?></b></td>
    <td style="font-size: 16pt;" class='text-right'><span class="label label-danger"><b><?php echo number_format($total_factura, 2); ?></b></span></td>
    <td></td>
</tr>
</tbody>
</table>
</div>
<script>
    function agregar_iva(checkbox, id_tmp) {
    var valor = checkbox.checked ? 1 : 0; // Obtener el valor del checkbox (1 si está marcado, 0 si no)
//alert(valor)
    // Realizar la solicitud AJAX
      $.ajax({
        type: "POST",
        url: "../ajax/editar_iva_producto.php",
        data: "id_tmp=" + id_tmp + "&iva=" + valor,
        success: function(datos) {
           $("#resultados").load("../ajax/agregar_tmp.php");
           $.Notification.notify('success','bottom center','EXITO!', 'IVA ACTUALIZADO CORRECTAMENTE')
       }
   });
       
       
}
    $(document).ready(function () {
        $('.txt_desc').off('blur');
        $('.txt_desc').on('blur',function(event){
            var keycode = (event.keyCode ? event.keyCode : event.which);
        // if(keycode == '13'){
            id_tmp = $(this).attr("id");
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
        url: "../ajax/editar_desc_venta.php",
        data: "id_tmp=" + id_tmp + "&desc=" + desc,
        success: function(datos) {
           $("#resultados").load("../ajax/agregar_tmp.php");
           $.Notification.notify('success','bottom center','EXITO!', 'DESCUENTO ACTUALIZADO CORRECTAMENTE')
       }
   });
        // }
    });
     $(".employee_id").on("change", function(event) {
         id_tmp = $(this).attr("id");
        precio = $(this).val();
        $.ajax({
            type: "POST",
            url: "../ajax/editar_precio_venta.php",
            data: "id_tmp=" + id_tmp + "&precio=" + precio,
            success: function(datos) {
               $("#resultados").load("../ajax/agregar_tmp.php");
               $.Notification.notify('success','bottom center','EXITO!', 'PRECIO ACTUALIZADO CORRECTAMENTE')
           }
       });
    });
    
         $(".descripcion_id").on("change", function(event) {
         id_tmp = $(this).attr("id");
        descripcion = $(this).val();
        $.ajax({
            type: "POST",
            url: "../ajax/editar_descripcion_venta.php",
            data: "id_tmp=" + id_tmp + "&descripcion=" + descripcion,
            success: function(datos) {
               $("#resultados").load("../ajax/agregar_tmp.php");
               $.Notification.notify('success','bottom center','EXITO!', 'PRECIO ACTUALIZADO CORRECTAMENTE')
           }
       });
    });

    });
</script>