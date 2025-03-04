<?php

/*-------------------------

---------------------------*/
include 'is_logged.php'; //Archivo verifica que el usario que intenta acceder a la URL esta logueado
/* Connect To Database*/
require_once "../db.php";
require_once "../php_conexion.php";
require_once "../funciones.php";
//Inicia Control de Permisos
include "../permisos.php";
$user_id = $_SESSION['id_users'];
get_cadena($user_id);
$modulo = "Categorias";
permisos($modulo, $cadena_permisos);
//Finaliza Control de Permisos
//Archivo de funciones PHP
require_once "../funciones.php";
$id_moneda = get_row('perfil', 'moneda', 'id_perfil', 1);

$action = (isset($_REQUEST['action']) && $_REQUEST['action'] != null) ? $_REQUEST['action'] : '';
if ($action == 'ajax') {
    // escaping, additionally removing everything that could be (html/javascript-) code
    $q        = mysqli_real_escape_string($conexion, (strip_tags($_REQUEST['q'], ENT_QUOTES)));
    $aColumns = array('nombre'); //Columnas de busqueda
    $sTable   = "testimonios";
    $sWhere   = "";
    
    $sWhere .= " order by id_testimonio";
    include 'pagination.php'; //include pagination file
    //pagination variables
    $page      = (isset($_REQUEST['page']) && !empty($_REQUEST['page'])) ? $_REQUEST['page'] : 1;
    $per_page  = 10; //how much records you want to show
    $adjacents = 4; //gap between pages after number of adjacents
    $offset    = ($page - 1) * $per_page;
    //Count the total number of row in your table*/
    $count_query = mysqli_query($conexion, "SELECT count(*) AS numrows FROM $sTable  $sWhere");
    $row         = mysqli_fetch_array($count_query);
    $numrows     = $row['numrows'];
    $total_pages = ceil($numrows / $per_page);
    $reload      = '../html/lineas.php';
    //main query to fetch the data
    $sql   = "SELECT * FROM  $sTable $sWhere LIMIT $offset,$per_page";
    $query = mysqli_query($conexion, $sql);
    //loop through fetched data
    if ($numrows > 0) {

        ?>
        <div class="table-responsive">
            <table class="table table-sm table-striped">
                <tr  class="info">
                    <th>Id</th>
                    <th>Autor</th>
                    <th>Testimonio</th>
                    <th>Pagina</th>
                    <th>Imagen</th>
                    <th>Mostrar</th>
                    
                    <th class='text-right'>Acciones</th>

                </tr>
                <?php
while ($row = mysqli_fetch_array($query)) {
            $id_testimonio    = $row['id_testimonio'];
            $nombre       = $row['nombre'];
            $testimonio  = $row['testimonio'];
             $imagen  = $row['imagen'];
            $estado = $row['status'];
            $id_producto = $row['id_producto'];
            
         
            $date_added   = date('d/m/Y', strtotime($row['date_added']));
            if ($estado == 1) {
                $estado_t = "<span class='badge badge-success'>Activo</span>";
            } else {
                $estado_t = "<span class='badge badge-danger'>Inactivo</span>";
            }
  //echo $online;
        
            ?>

    <input type="hidden" value="<?php echo $nombre; ?>" id="nombre<?php echo $id_testimonio; ?>">
    <input type="hidden" value="<?php echo $testimonio; ?>" id="descripcion<?php echo $id_testimonio; ?>">
    <input type="hidden" value="<?php echo $estado; ?>" id="estado<?php echo $id_testimonio; ?>">
    <input type="hidden" value="<?php echo $id_producto; ?>" id="producto<?php echo $id_testimonio; ?>">
    <input type="hidden" value="<?php echo $imagen; ?>" id="imagen<?php echo $id_testimonio; ?>">


    <tr>
        <td><span class="badge badge-purple"><?php echo $id_testimonio; ?></span></td>
        <td><?php echo $nombre; ?></td>
         
          <td><?php echo $testimonio; ?></td>
          <td><?php if ($id_producto<0) {echo 'INICIO'; }else{  echo   get_row('productos', 'nombre_producto', 'id_producto', $id_producto);}?></td>
          <td><img style="width: 40px" src="<?php echo $imagen; ?>"><a class="" href="#" data-toggle="modal" data-target="#imagenLinea" onclick="carga_img_t('<?php echo $id_testimonio; ?>')"><img style="width: 40px" src="../../img/3342177.png" alt=""/></a></td>
        <td>
                       <button style="font-size: 10px;" class="estado-btn-testimonio btn-rounded btn-xs btn <?php echo $estado == 1 ? 'btn-success' : 'btn-danger'; ?>" data-id="<?php echo $id_testimonio; ?>">
        <?php echo $estado == 1 ? 'SI' : 'NO'; ?>
    </button>                         
                                               
                                           </td>
        
     
        <td >
            <div class="btn-group dropdown">
                <button type="button" class="btn btn-warning btn-sm dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false"> <i class='fa fa-cog'></i> <i class="caret"></i> </button>
                <div class="dropdown-menu dropdown-menu-right">
                   <?php if ($permisos_editar == 1) {?>
                   <a class="dropdown-item" href="#" data-toggle="modal" data-target="#editarTestimonio" onclick="obtener_datos_testimonio('<?php echo $id_testimonio; ?>');"><i class='fa fa-edit'></i> Editar</a>
                   <?php }
            if ($permisos_eliminar == 1) {?>
                   <a class="dropdown-item" href="#" data-toggle="modal" data-target="#dataDelete" data-id="<?php echo $id_testimonio; ?>" onclick="eliminar('<?php echo $id_testimonio; ?>','testimonios','id_testimonio');"><i class='fa fa-trash'></i> Borrar</a>
                   <?php }
            ?>


               </div>
           </div>

       </td>

   </tr>
   <?php
}
        ?>
<tr>
    <td colspan="7">
        <span class="pull-right">
            <?php
echo paginate($reload, $page, $total_pages, $adjacents);
        ?></span>
        </td>
    </tr>
</table>
</div>
<?php
}
//Este else Fue agregado de Prueba de prodria Quitar
    else {
        ?>
    <div class="alert alert-warning alert-dismissible" role="alert" align="center">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <strong>Aviso!</strong> No hay Registro de Linea
  </div>
  <?php
}
// fin else
}
?>