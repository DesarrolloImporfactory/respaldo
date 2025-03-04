<?php
/*-------------------------
Autor: Delmar Lopez
Web: www.softwys.com
Mail: softwysop@gmail.com
---------------------------*/
include 'is_logged.php'; //Archivo verifica que el usario que intenta acceder a la URL esta logueado
$session_id = session_id();
if (isset($_POST['id'])) {
    $id = $_POST['id'];
}
if (isset($_POST['cantidad'])) {
    $cantidad = $_POST['cantidad'];
}
/* Connect To Database*/
require_once "../db.php";
require_once "../php_conexion.php";
//Archivo de funciones PHP
require_once "../funciones.php";

if (!empty($id) and !empty($cantidad)) {
    $id_producto  = get_row('productos', 'id_producto', 'codigo_producto', $id);
    $precio_venta = get_row('productos', 'valor1_producto', 'id_producto', $id_producto);

    // consulta para comparar el stock con la cantidad resibida
    $query = mysqli_query($conexion, "select stock_producto, inv_producto from productos where id_producto = '$id_producto'");
    $rw    = mysqli_fetch_array($query);
    $stock = $rw['stock_producto'];
    $inv   = $rw['inv_producto'];

    //Comprobamos si ya agregamos un producto a la tabla tmp_compra
    $comprobar = mysqli_query($conexion, "select * from tmp_cotizacion, productos where productos.id_producto = tmp_cotizacion.id_producto and  tmp_cotizacion.id_producto='" . $id_producto . "' and session_id='" . $session_id . "'");

    if ($row = mysqli_fetch_array($comprobar)) {
        $cant         = $row['cantidad_tmp'] + $cantidad;
        $sql          = "UPDATE tmp_cotizacion SET cantidad_tmp='" . $cant . "' WHERE id_producto='" . $id_producto . "' and session_id='" . $session_id . "'";
        $query_update = mysqli_query($conexion, $sql);
    } else {
        $insert_tmp = mysqli_query($conexion, "INSERT INTO tmp_cotizacion (id_producto,cantidad_tmp,precio_tmp,desc_tmp,session_id) VALUES ('$id_producto','$cantidad','$precio_venta','0','$session_id')");
    }
}
if (isset($_GET['id'])) //codigo elimina un elemento del array
{
    $id_tmp = intval($_GET['id']);
    $delete = mysqli_query($conexion, "DELETE FROM tmp_cotizacion WHERE id_tmp='" . $id_tmp . "'");
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
            $sql            = mysqli_query($conexion, "select * from productos, tmp_cotizacion where productos.id_producto=tmp_cotizacion.id_producto and tmp_cotizacion.session_id='" . $session_id . "'");
            while ($row = mysqli_fetch_array($sql)) {
                $id_tmp          = $row["id_tmp"];
                $id_producto     = $row['id_producto'];
                $codigo_producto = $row['codigo_producto'];
                $cantidad        = $row['cantidad_tmp'];
                $desc_tmp        = $row['desc_tmp'];
                $nombre_producto = $row['nombre_producto'];

                $precio_venta   = $row['precio_tmp'];
                $precio_venta_f = number_format($precio_venta, 2); //Formateo variables
                $precio_venta_r = str_replace(",", "", $precio_venta_f); //Reemplazo las comas
                $precio_total   = $precio_venta_r * $cantidad;
                $final_items    = rebajas($precio_total, $desc_tmp); //Aplicando el descuento
                /*--------------------------------------------------------------------------------*/
                /*--------------------------------------------------------------------------------*/
                $impuesto = get_row('perfil', 'impuesto', 'id_perfil', 1);
                $valor = ($impuesto / 100) + 1;
                $precio_venta = $final_items;
                $precio_venta_f = $precio_venta; //Formateo variable
                $precio_venta_r1 = str_replace(",", "", $precio_venta_f); //Reemplazo las comas  
                //PRECIO DESGLOSADO
                $precio_venta_desglosado = $precio_venta_r1 / $valor;
                $impuesto_unitario = $precio_venta_f - $precio_venta_desglosado;
                /*--------*/
                $precio_total_f = number_format($final_items, 2); //Precio total formateado
                $precio_total_r = str_replace(",", "", $precio_total_f); //Reemplazo las comas
                $sumador_total += $precio_venta; //Sumador
                $final_items = rebajas($precio_total, $desc_tmp); //Aplicando el descuento
                $subtotal    = number_format($sumador_total, 2, '.', '');
                /*  if ($row['iva_producto'] == 1) {
        $total_iva = $impuesto_unitario;
    } else {
        $total_iva = iva($precio_venta_desglosado);
    }*/
                //$total_impuesto += rebajas($subtotal, $desc_tmp) * $cantidad;
                $total_impuesto = $total_impuesto + $impuesto_unitario;
            ?>
                <tr>
                    <td class='text-center'><?php echo $codigo_producto; ?></td>
                    <td class='text-center'><?php echo $cantidad; ?></td>
                    <td><?php echo $nombre_producto; ?></td>
                    <td class='text-center'>
                        <div class="input-group">
                            <select id="<?php echo $id_tmp; ?>" class="form-control employee_id">
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
                        <input type="text" class="form-control txt_desc" style="text-align:center" value="<?php echo $desc_tmp; ?>" id="<?php echo $id_tmp; ?>">
                    </td>
                    <td class='text-right'><?php echo $simbolo_moneda . ' ' . number_format($final_items, 2); ?></td>
                    <td class='text-center'>
                        <a href="#" class='btn btn-danger btn-sm waves-effect waves-light' onclick="eliminar('<?php echo $id_tmp ?>')"><i class="fa fa-remove"></i>
                        </a>
                    </td>
                </tr>
            <?php
            }
            $total_factura = $subtotal + $total_impuesto;
            ?>
            <!--tr>
                <td class='text-right' colspan=5>SUBTOTAL</td>
                <td class='text-right'><b><?php echo $simbolo_moneda . ' ' . number_format($subtotal, 2); ?></b></td>
                <td></td>
            </tr-->
            <!--tr>
                <td class='text-right' colspan=5><?php echo $nom_impuesto; ?> (<?php echo $impuesto; ?>)% </td>
                <td class='text-right'><?php echo $simbolo_moneda . ' ' . number_format($total_impuesto, 2); ?></td>
                <td></td>
            </tr-->
            <tr>
                <td style="font-size: 14pt;" class='text-right' colspan=5><b>TOTAL <?php echo $simbolo_moneda; ?></b></td>
                <td style="font-size: 16pt;" class='text-right'><b id="precio_total"><?php echo number_format($subtotal, 2); ?></b></td>
                <td></td>
            </tr>
        </tbody>
    </table>
</div>
<script>
    $(document).ready(function() {
        $('.txt_desc').off('blur');
        $('.txt_desc').on('blur', function(event) {
            var keycode = (event.keyCode ? event.keyCode : event.which);
            // if(keycode == '13'){
            id_tmp = $(this).attr("id");
            desc = $(this).val();
            //Inicia validacion
            if (isNaN(desc)) {
                $.Notification.notify('error', 'bottom center', 'ERROR', 'DIGITAR UN DESCUENTO VALIDO')
                $(this).focus();
                return false;
            }
            //Fin validacion
            $.ajax({
                type: "POST",
                url: "../ajax/editar_desc_cot.php",
                data: "id_tmp=" + id_tmp + "&desc=" + desc,
                success: function(datos) {
                    $("#resultados").load("../ajax/agregar_tmp_cot.php");
                    $.Notification.notify('success', 'bottom center', 'EXITO!', 'DESCUENTO ACTUALIZADO CORRECTAMENTE')
                }
            });
            // }
        });

        $(".employee_id").on("change", function(event) {
            id_tmp = $(this).attr("id");
            precio = $(this).val();
            $.ajax({
                type: "POST",
                url: "../ajax/editar_precio_cot.php",
                data: "id_tmp=" + id_tmp + "&precio=" + precio,
                success: function(datos) {
                    $("#resultados").load("../ajax/agregar_tmp_cot.php");
                    $.Notification.notify('success', 'bottom center', 'EXITO!', 'PRECIO ACTUALIZADO CORRECTAMENTE')
                }
            });
        });

    });
</script>