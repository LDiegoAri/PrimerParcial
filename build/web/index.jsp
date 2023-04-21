<%@page import="com.emergentes.modelado.Notas"%>
<%@page import="java.util.ArrayList"%>

<%
   ArrayList<Notas> lista = (ArrayList<Notas>)session.getAttribute("listaper");  
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>PRIMER PARCIAL TEM-742</h1>
        <p>Nombre: Limber Diego Ari Quispe</p> <br>
        <p>Carnet: 8373557</p>
        <h1>Registro de calificaciones</h1>
        <a href="Main?xd=nuevo">Nuevo</a>
        
        <table border="2">
            <tr>
                <th>Id</th>
                <th>P1(30)</th>
                <th>P2(30)</th>
                <th>EF(40)</th>
                <th>Nota</th>
                <th></th>
                <th></th>
            </tr>
            <%
                 if (lista != null){ 
                    for ( Notas item : lista ){
            %>
            <tr>
                <!--<td><%= item.getId() %></td>-->
                <td><%= item.getNombre() %></td>
                <td><%= item.getP1() %></td>
                <td><%= item.getP2() %></td>
                <td><%= item.getEf() %></td>
                <!--<td><%= item.getNota()%></td>-->
                <td><a href="Main?xd=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="Main?xd=eliminar&id=<%= item.getId() %>">Eliminar</a></td>
              
            </tr>
            <%
                }
             }    
            %>
        </table>
    </body>
</html>