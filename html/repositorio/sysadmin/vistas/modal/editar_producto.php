<?php
if (isset($conexion)) {
?>
	<div id="editarProducto" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title"><i class='fa fa-edit'></i> Editar Producto</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" method="post" id="editar_producto1" name="editar_producto1">
						<div id="resultados_ajax2"></div>

						<ul class="nav nav-tabs">
							<li class="nav-item">
								<a href="#mod_info" data-toggle="tab" aria-expanded="false" class="nav-link active">
									Datos Básicos
								</a>
							</li>
							<li class="nav-item">
								<a href="#mod_precios" data-toggle="tab" aria-expanded="true" class="nav-link">
									Precios y Stock
								</a>
							</li>
							<!--							<li class="nav-item">
								<a href="#img2" data-toggle="tab" aria-expanded="true" class="nav-link">
									Imagen
								</a>
							</li>
                                                        <li class="nav-item">
								<a href="#imagenes" data-toggle="tab" aria-expanded="true" class="nav-link">
									Imagenes Adicionales
								</a>
							</li>-->
						</ul>
						<div class="tab-content">
							<div class="tab-pane fade show active" id="mod_info">

								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label for="mod_codigo" class="control-label">Código:</label>
											<input type="text" class="form-control" id="mod_codigo" name="mod_codigo" autocomplete="off" required>
											<input id="mod_id" name="mod_id" type='hidden'>
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label for="mod_nombre" class="control-label">Nombre:</label>
											<input type="text" class="form-control UpperCase" id="mod_nombre" name="mod_nombre" autocomplete="off" required>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label for="mod_descripcion" class="control-label">Descripción</label>
											<textarea class="form-control UpperCase" id="mod_descripcion" name="mod_descripcion" maxlength="255" autocomplete="off"></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="mod_linea" class="control-label">Categoría:</label>
											<select class='form-control' name='mod_linea' id='mod_linea' >
												<option value="">-- Selecciona --</option>
												<?php

												$query_categoria = mysqli_query($conexion, "select * from lineas order by nombre_linea");
												while ($rw = mysqli_fetch_array($query_categoria)) {
												?>
													<option value="<?php echo $rw['id_linea']; ?>"><?php echo $rw['nombre_linea']; ?></option>
												<?php
												}
												?>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="mod_proveedor" class="control-label">Proveedor:</label>
											<select class='form-control' name='mod_proveedor' id='mod_proveedor' >
												<option value="">-- Selecciona --</option>
												<?php

												$query_proveedor = mysqli_query($conexion, "select * from proveedores order by nombre_proveedor");
												while ($rw = mysqli_fetch_array($query_proveedor)) {
												?>
													<option value="<?php echo $rw['id_proveedor']; ?>"><?php echo $rw['nombre_proveedor']; ?></option>
												<?php
												}
												?>
											</select>
										</div>
									</div>
								</div>
                                                            <div class="row">
                                                            	<div class="col-md-6">
										<img width="100%" src="../../img_sistema/formato_pro.jpg" alt="" />
										
									</div>
								<div class="col-md-6">
									<img width="100%" src="../../img/formato_pro.jpg" alt="" />
									<div class="form-group">
										<label for="estado" class="control-label">Formato Pagina Productos:</label>
										<select class="form-control" id="mod_formato" name="mod_formato">
											<option value="" selected>-- Selecciona --</option>
											<option value="1">FORMATO 1</option>
											<option value="2">FORMATO 2</option>
										</select>
									</div>
								</div>
								</div>

							</div>
							<div class="tab-pane fade" id="mod_precios">

								<div class="row">
									<!--<div class="col-md-5">
										<div class="form-group">
											<label for="id_imp2" class="control-label">Impuesto:</label>
											<select id = "id_imp2" class = "form-control" name = "id_imp2" required autocomplete="off">
												<option value="">-SELECCIONE-</option>
												<?php foreach ($impuesto as $i) : ?>
													<option value="<?php echo $i->id_imp; ?>"><?php echo $i->nombre_imp; ?></option>
												<?php endforeach; ?>
											</select>
										</div>
									</div>-->
									<div class="col-md-6">
										<div class="form-group">
											<label for="mod_costo" class="control-label">Ultimo Costo:</label>
											<input type="text" class="form-control" id="mod_costo" name="mod_costo" autocomplete="off" pattern="^[0-9]{1,5}(\.[0-9]{0,2})?$" title="Ingresa sólo números con 0 ó 2 decimales" maxlength="12">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="mod_utilidad" class="control-label">Utilidad %:</label>
											<input type="text" class="form-control" id="mod_utilidad" name="mod_utilidad" pattern="\d{1,4}" maxlength="4" onkeyup="precio_venta_edit();">
										</div>
									</div>
								</div>

								<div class="row">
                                                                    <div class="col-md-4">
										<div class="form-group">
											<label for="mod_preciom" class="control-label">Precio Proveedor:</label>
											<input type="text" class="form-control" id="mod_preciom" name="mod_preciom" autocomplete="off" pattern="^[0-9]{1,5}(\.[0-9]{0,2})?$" title="Ingresa sólo números con 0 ó 2 decimales" maxlength="12">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="mod_precio" class="control-label">Precio de venta (Sugerido):</label>
											<input type="text" class="form-control" id="mod_precio" name="mod_precio" autocomplete="off" pattern="^[0-9]{1,5}(\.[0-9]{0,2})?$" title="Ingresa sólo números con 0 ó 2 decimales" maxlength="12">
										</div>
									</div>
									
                                                                    <div class="col-md-4">
									<div class="form-group">
											
											<div class="form-group">

												<label for="precion" class="control-label">P Referencial:</label>
												<input type="text" class="form-control" id="mod_precion" name="mod_precion" autocomplete="off" pattern="^[0-9]{1,5}(\.[0-9]{0,2})?$" value="0" title="Ingresa sólo números con 0 ó 2 decimales" maxlength="12" >
											</div>
										</div>
                                                                        </div>
								</div>
                                                            

								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label for="mod_inv" class="control-label">Maneja Inventario:</label>
											<select class="form-control" id="mod_inv" name="mod_inv" required>
												<option value="">- Selecciona -</option>
												<option value="0">Si</option>
												<option value="1">No</option>
											</select>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="mod_stock" class="control-label">Stock Inicial:</label>
											<input type="text" class="form-control" id="mod_stock" name="mod_stock" autocomplete="off" pattern="^[0-9]{1,5}(\.[0-9]{0,2})?$" title="Ingresa sólo números con 0 ó 2 decimales" maxlength="8" readonly="true">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="mod_minimo" class="control-label">Stock Minimo:</label>
											<input type="text" class="form-control" id="mod_minimo" name="mod_minimo" autocomplete="off" pattern="^[0-9]{1,5}(\.[0-9]{0,2})?$" title="Ingresa sólo números con 0 ó 2 decimales" maxlength="8">
										</div>
									</div>

								</div>


							</div>
							<!--							<div class="tab-pane fade" id="img2">

								<div class="outer_img"></div>


							</div>-->

							<!--                                                    <div class="tab-pane fade" id="imagenes">

								
                                                            
                                                          <div class="outer_img_a1"></div>
                                                          <div class="outer_img_a2"></div>
                                                          <div class="outer_img_a3"></div>
                                                          <div class="outer_img_a4"></div>
                                                          <div class="outer_img_a5"></div>
                                                           
                                                          
                                                           
                                                        
                                                          
                                                            
                                                        
                                                          
                                                            
                                                        
                                                          
                                                            
								

							</div>-->

						</div>



				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Cerrar</button>
					<button type="submit" class="btn btn-primary waves-effect waves-light" id="actualizar_datos">Actualizar</button>
				</div>
				</form>
			</div>
		</div>
	</div><!-- /.modal -->
<?php
}
?>