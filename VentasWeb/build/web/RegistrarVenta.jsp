<%-- 
    Document   : RegistrarVenta
    Created on : 6/11/2021, 1:28:54 a.m.
    Author     : od948
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>VENTAS</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="col-sm-5">
                <div class="card">
                    <form action="Controlador" method="POST">
                        <div class="card-body">
                            <div class="form-group">
                                <label>Datos del cliente</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigocliente" class="form-control" placeholder="Codigo">
                                    <input type="submit" name="accion" value="Buscar" class="btn btn-outline-info">
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="nombrescliente" class="form-control">
                                </div>
                                <!---lo de abajo ya no sirve, toda va dentro de los div correspondientes-->

                                <!--   <input type="text" name="codigocliente" class="form-control" placeholder="Codigo">
                                   <input type="submit" name="accion" value="Buscar" class="btn btn-outline-info">
                                   <input type="text" name="nombrescliente" class="form-control"> -->

                            </div>
                            <div class="form-group">
                                <label>Datos Productos</label>
                            </div>
                            <div class="form-group d-flex">
                                <!---Copy y paste de arriba-->
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigoproducto" class="form-control" placeholder="Codigo">
                                    <input type="submit" name="accion" value="Buscar" class="btn btn-outline-info">
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="nombrescliente" placeholder="Datos Productos" class="form-control">
                                </div>
                                <!--Fin del copy y paste-->
                            </div>
                            <div class="form-group d-flex">
                                <!--Copy y paste 02-->
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="precio" class="form-control" placeholder="$/ .0.00">

                                </div>
                                <div class="col-sm-3">
                                    <input type="number" name="Cantidad" placeholder="" class="form-control">
                                </div>
                                <!--Fin del copy y paste 02-->
                                <!--Se agrega otro div, el unico nuevo que hay despues del copy&paste-->
                                <div class="col-sm-3"><!--div nuevo-->
                                    <input type="text" name="stock" placeholder="Stock" class="form-control">
                                </div><!--div nuevo-->
                            </div>
                            <!--Boton agregar-->
                            <div class="form-group">
                                <input type="submit" name="accion" value="Agregar" class="btn btn-outline-info">
                            </div>
                            <!--Fin del div para el bototn-->
                        </div>
                    </form>
                </div>
            </div> <!--2-->
            <div class="col-sm-7">
                <div class="card">
                    <div class="card-body">
                         <!--nuevo div-->
                         <div class="d-flex col-sm-5 ml-auto">
                    <label>NumeroSerie</label>
                    <input type="text" name="NroSerie" class="form-control"> 
                </div>
                <!--Fin del nuevo div-->
                <br>
                <!--Aqui se inserta la nueva tabla-->
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Nro</th>
                            <th>Codigo</th>
                            <th>Descripcion</th>
                            <th>Precio</th>
                            <th>Cantidad</th>
                            <th>Subtotal</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>

                    </div><!--Fin del div card-body-->
                    <!--nuevo div-->
                    <div class="card-footer">
                        <div>
                            <input type="submit" name="accion" value="Generar Venta" class="btn btn-success">
                            <input type="submit" name="accion" value="Cancelar" class="btn btn-danger">
                        </div>
                    </div><!--Fin del nuevo div card-footer -->
                </div>
               
            </div> <!--3-->
        </div> <!--1-->



        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
