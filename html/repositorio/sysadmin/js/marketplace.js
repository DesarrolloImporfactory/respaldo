		$(document).ready(function() {
		    $("#cod_resultado").load("../ajax/incrementa_cod_prod.php");
		    load(1);
		});

		function load(page) {
		    var q = $("#q").val();
		    var categoria=$("#categoria").val();
		    $("#loader").fadeIn('slow');
		    $.ajax({
		        url: '../ajax/buscar_productos_marketplace.php?action=ajax&page=' + page + '&q=' + q + '&categoria=' + categoria,
		        beforeSend: function(objeto) {
		            $('#loader').html('<img src="../../img/ajax-loader.gif"> Cargando...');
		        },
		        success: function(data) {
		            $(".outer_div").html(data).fadeIn('slow');
		            $('#loader').html('');
		        }
		    })
		}
		$("#guardar_producto").submit(function(event) {
		    $('#guardar_datos').attr("disabled", true);
		    var parametros = $(this).serialize();
		    $.ajax({
		        type: "POST",
		        url: "../ajax/nuevo_producto.php",
		        data: parametros,
		        beforeSend: function(objeto) {
		            $("#resultados_ajax").html('<img src="../../img/ajax-loader.gif"> Cargando...');
		        },
		        success: function(datos) {
		            $("#resultados_ajax").html(datos);
		            $('#guardar_datos').attr("disabled", false);
		            $("#cod_resultado").load("../ajax/incrementa_cod_prod.php");
		            load(1);
		            //resetea el formulario
		            $("#guardar_producto")[0].reset();
		            //desaparecer la alerta
		            window.setTimeout(function() {
		                $(".alert").fadeTo(500, 0).slideUp(500, function() {
		                    $(this).remove();
		                });
		            }, 5000);
		        }
		    });
		    event.preventDefault();
		})
		$("#editar_producto").submit(function(event) {
		    $('#actualizar_datos').attr("disabled", true);
		    var parametros = $(this).serialize();
		    $.ajax({
		        type: "POST",
		        url: "../ajax/editar_producto.php",
		        data: parametros,
		        beforeSend: function(objeto) {
		            $("#resultados_ajax2").html('<img src="../../img/ajax-loader.gif"> Cargando...');
		        },
		        success: function(datos) {
		            $("#resultados_ajax2").html(datos);
		            $('#actualizar_datos').attr("disabled", false);
		            load(1);
		            //desaparecer la alerta
		            window.setTimeout(function() {
		                $(".alert").fadeTo(500, 0).slideUp(500, function() {
		                    $(this).remove();
		                });
		            }, 5000);
		        }
		    });
		    event.preventDefault();
		})
                
                
                $("#editar_landing").submit(function(event) {
		    $('#actualizar_datos').attr("disabled", true);
		    var parametros = $(this).serialize();
		    $.ajax({
		        type: "POST",
		        url: "../ajax/editar_landing.php",
		        data: parametros,
		        beforeSend: function(objeto) {
		            $("#resultados_ajax2").html('<img src="../../img/ajax-loader.gif"> Cargando...');
		        },
		        success: function(datos) {
		            $("#resultados_ajax2").html(datos);
		            $('#actualizar_datos').attr("disabled", false);
		            load(1);
		            //desaparecer la alerta
		            window.setTimeout(function() {
		                $(".alert").fadeTo(500, 0).slideUp(500, function() {
		                    $(this).remove();
		                });
		            }, 5000);
		        }
		    });
		    event.preventDefault();
		})
                
		$('#dataDelete').on('show.bs.modal', function(event) {
		    var button = $(event.relatedTarget) // Botón que activó el modal
		    var id = button.data('id') // Extraer la información de atributos de datos
		    var modal = $(this)
		    modal.find('#id_producto').val(id)
		})
		$("#eliminarDatos").submit(function(event) {
		    var parametros = $(this).serialize();
		    $.ajax({
		        type: "POST",
		        url: "../ajax/eliminar_producto.php",
		        data: parametros,
		        beforeSend: function(objeto) {
		            $(".datos_ajax_delete").html('<img src="../../img/ajax-loader.gif"> Cargando...');
		        },
		        success: function(datos) {
		            $(".datos_ajax_delete").html(datos);
		            $('#dataDelete').modal('hide');
		            load(1);
		            //desaparecer la alerta
		            window.setTimeout(function() {
		                $(".alert").fadeTo(200, 0).slideUp(200, function() {
		                    $(this).remove();
		                });
		            }, 2000);
		        }
		    });
		    event.preventDefault();
		});

		function obtener_datos(id) {
                    //alert(id)
                    var online = $("#online" + id).val();
		    var codigo_producto = $("#codigo_producto" + id).val();
		    var nombre_producto = $("#nombre_producto" + id).val();
		    var descripcion_producto = $("#descripcion_producto" + id).val();
		    var linea_producto = $("#linea_producto" + id).val();
		    var proveedor_producto = $("#proveedor_producto" + id).val();
		    //var med_producto = $("#med_producto" + id).val();
		    var inv_producto = $("#inv_producto" + id).val();
		    var impuesto_producto = $("#impuesto_producto" + id).val();
		    var costo_producto = $("#costo_producto" + id).val();
		    var utilidad_producto = $("#utilidad_producto" + id).val();
		    var precio_producto = $("#precio_producto" + id).val();
		    var precio_mayoreo = $("#precio_mayoreo" + id).val();
		    var precio_especial = $("#precio_especial" + id).val();
                    var precio_normal = $("#precio_normal" + id).val();
		    var stock_producto = $("#stock_producto" + id).val();
		    var stock_min_producto = $("#stock_min_producto" + id).val();
		    var id_imp_producto = $("#id_imp_producto" + id).val();
                    var formato = $("#formato" + id).val();
		    var estado = $("#estado" + id).val();
			var image_path = $("#image_path" + id).val();
                    
		    $("#mod_id").val(id);
		    $("#mod_codigo").val(codigo_producto);
                    $("#mod_formato").val(formato);
		    $("#mod_nombre").val(nombre_producto);
		    $("#mod_descripcion").val(descripcion_producto);
		    $("#mod_linea").val(linea_producto);
		    $("#mod_proveedor").val(proveedor_producto);
                     $("#mod_online").val(online);
		    //$("#mod_medida").val(med_producto);
		    $("#mod_inv").val(inv_producto);
		    $("#mod_impuesto").val(impuesto_producto);
		    $("#mod_costo").val(costo_producto);
		    $("#mod_utilidad").val(utilidad_producto);
		    $("#mod_precio").val(precio_producto);
		    $("#mod_preciom").val(precio_mayoreo);
		    $("#mod_precioe").val(precio_especial);
                    $("#mod_precion").val(precio_normal);
		    $("#mod_stock").val(stock_producto);
		    $("#mod_minimo").val(stock_min_producto);
		    $("#id_imp2").val(id_imp_producto);
		    $("#mod_estado").val(estado);
			$("#mod_image_path").attr('src',image_path);
		}
                
                function obtener_datos_landing(id) {
                   // alert(id)
                    
                    var url1 = $("#url1" + id).val();
		    var boton1 = $("#texto_boton1" + id).val();
		    var descripcion1 = $("#descripcion1" + id).val();
		    var url2 = $("#url2" + id).val();
		    var boton2 = $("#texto_boton2" + id).val();
		    var descripcion2 = $("#descripcion2" + id).val();
                    
		    $("#mod_id_landing").val(id);
		    $("#mod_url1").val(url1);
                    $("#mod_boton1").val(boton1);
                    $("#mod_descripcion1").val(descripcion1);
                    
                     $("#mod_url2").val(url2);
                    $("#mod_boton2").val(boton2);
                    $("#mod_descripcion2").val(descripcion2);
		    
		}