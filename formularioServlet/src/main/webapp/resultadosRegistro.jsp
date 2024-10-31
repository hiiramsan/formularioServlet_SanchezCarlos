<%-- 
    Document   : resultadosRegistro
    Created on : Oct 30, 2024, 11:10:43 PM
    Author     : carlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados del Registro</title>
    </head>
    <body>
        <h1>Info Recibida</h1>
        
        <p>Nombre: <strong>${name}</strong></p>
        <p>Apellido: <strong>${lastName}</strong></p>
        <p>Email: <strong>${email}</strong></p>
        <p>Género: <strong>${gender}</strong></p>
        
        <p>Hobbies:</p>
        <ul>
            <li><strong>${hobbies[0]}</strong></li>
            <li><strong>${hobbies[1]}</strong></li>
            <li><strong>${hobbies[2]}</strong></li>
            <li><strong>${hobbies[3]}</strong></li>
        </ul>
        
        <p>Fuente de Ingresos: <strong>${sourceIncome}</strong></p>
        <p>Ingreso: <strong>${income}K</strong></p>
        <p>Edad: <strong>${age}</strong></p>
        <p>Biografía: <strong>${bio}</strong></p>
    </body>

    </body>
</html>
