<%-- 
    Document   : index
    
    Author     : Jarol Mmmmm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>Aplicación WEB</title>

    </head>
    <body>
        <%
           session.invalidate();
        %>
        <h1>Ingreso al Sistema</h1>
        <form name="ValidarUsuario" id="ValidarUsuario" action="ValidarUsuario" method="POST">
            <table border="0">           
                <tbody>
                    <tr>
                        <td>Usuario:</td>
                        <td><input type="text" name="usuario" id="usuario" value="" size="10" /></td>
                    </tr>
                    <tr>
                        <td>Clave:</td>
                        <td><input type="password" name="clave" id="clave" value="" size="10" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Ingresar" name="ingresar" id="ingresar" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
        <div id="mensaje-ingreso"></div>
    </body>
</html>
