<%-- 
    Document   : Empleado
    Created on : 6/11/2021, 1:28:26 a.m.
    Author     : od948
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-6">
            <div class="card-body">
                <form action="Controlador?menu=Empleado" method="POST">
                    <div class="form-group"> <!--1-->
                        <label>Dni</label>
                        <input type="text" value="${empleado.getDni()}" name="textDni" class="form-control">
                    </div>
                    <div class="form-group"> <!--2-->
                        <label>Nombres</label>
                        <input type="text" value="${empleado.getNom()}" name="textNombres" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Telefono</label>
                        <input type="text" value="${empleado.getTel()}" name="textTel" class="form-control">
                    </div> <!--3-->
                    <div class="form-group">
                        <label>Estado</label>
                        <input type="text" value="${empleado.getEstado()}" name="textestado" class="form-control">
                    </div> <!--4-->
                    <div class="form-group">
                        <label>Usuario</label>
                        <input type="text" value="${empleado.getUser()}" name="textUsuario" class="form-control">
                    </div> <!--5-->
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                </form>
            </div>
        </div>
        <div class="col-sm-8">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>DNI</th>
                         <th>NOMBRES</th>
                          <th>TELEFONO</th>
                           <th>ESTADO</th>
                            <th>USER</th>
                             <th>ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="em" items="${empleados}">
                    <tr>
                        <td>${em.getId()}</td>
                         <td>${em.getDni()}</td>
                          <td>${em.getNom()}</td>
                           <td>${em.getTel()}</td>
                            <td>${em.getEstado()}</td>
                             <td>${em.getUser()}</td>
                             <td>
                                 <a class="btn btn-warning" href="Controlador?menu=Empleado&accion=Editar&id=${em.getId()}">Editar</a>
                                 <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Delete&id=${em.getId()}">Delete</a>
                             </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        </div>
        
         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
