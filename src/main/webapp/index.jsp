<%@page import="java.util.ArrayList"%>
<%@page import="com.emergente.modelo.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listapro");
    

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilocss.css"/>
    </head>
    <body>
        <table border="2" style="margin:auto"style="background-color:red ">
            <tr>
                <th>
                    <h2>PRIMER PARCIAL TEM-742</h2>
                    <h3>NOMBRE: </h3>
                    <h3>CARNET: </h3>
                </th>
            </tr>
            
        </table>
        
        <h1 ><b>PRODUCTOS</b></h1>
        <div class="dos">
        <a href="MainController?op=nuevo">Ingresar Nuevo Producto</a>
        </div>
        <table border="1"cellspacing="0">
            
            <tr>
                <th>Id</th>
                <th>Descripción</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null) {
                        
                    for (Producto item : lista) {
                            
                        
                %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria() %></td>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>" onclick="return confirm('Esta seguro de Eliminar?')">Eliminar</a></td>
            </tr>
            
            <%
                }
             }
                %>
        </table>
    </body>
</html>
