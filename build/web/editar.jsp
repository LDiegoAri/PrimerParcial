
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>PRIMER PARCIAL TEM-742</p>
        <p>Nombre: Limber Diego Ari Quispe
           Carnet: 8373557   </p>
        <h1>Registro de calificaciones</h1>
  
        <form action="Main" method="post">
            <table>
               
                <tr>
                    <td>Nombre del estudiante</td>
                    <td><input type="text" name="nombres"></td>
                </tr>
                <tr>
                    <td>Primer parcial(30 pts)</td>
                    <td><input type="number" name="p1"></td>
                </tr>                
                                <tr>
                    <td>Segundo parcial(30 pts)</td>
                    <td><input type="number" name="p2"></td>
                </tr>
                                <tr>
                    <td>Examen final(40 pts)</td>
                    <td><input type="number" name="Ef"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
