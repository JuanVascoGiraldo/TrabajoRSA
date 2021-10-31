<%-- 
    Document   : index
    Created on : 31/10/2021, 01:50:26 AM
    Author     : Juanv
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true" language="java"%>

<% 
    HttpSession sesion = request.getSession(true);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&display=swap" rel="stylesheet">
</head>
<body background="./wp3172265.jpg">
    <div class="main">
    <div class="contenedor1">
        <form action="Calcular">
            <input type="number" placeholder="Ingresa el numero p" name="numerop">
            <br>
            <br>
            <input type="number" placeholder="Ingresa el numero q" name="numeroq">
            <br>
            <br>
            <button type="submit">Calcular Claver</button>
            <br>
            <br>
            <a href="CalcularRandom"><button type="button">Generar Aleatoriamente</button></a>
        </form>
    </div >
    <div class="contenedor1">
        <br>
        <label class="texto">El numero p:<%=sesion.getAttribute("p")  %> </label>
        <br>
        <label class="texto">El numero q:<%=sesion.getAttribute("q")  %>  </label>
        <br>
        <label class="texto">El numero n:<%=sesion.getAttribute("n")  %>  </label>
        <br>
        <label class="texto">El numero fi:<%=sesion.getAttribute("fi")  %>  </label>
        <br>
        <label class="texto">Clave Publica:<%=sesion.getAttribute("e")  %>  </label>
        <br>
        <label class="texto">Clave Privada:<%=sesion.getAttribute("d")  %>  </label>
        <br>
    </div>
    <br>
    <br>
    <br>
    <div class="cifrar">
        <form action="Cifrar">
            <center><label class="texto">Cifrar</label></center>
            <br>
            <br>
            <input type="number" name="cifrar" placeholder="Ingresa el numero a cifrar">
            <br>
            <br>
            <button type="submit">Cifrar</button>
            <br>
            <br>
        </form>
    </div>
    <br>
    <br>
    <br>
    <div class="respuesta">
        <center><label class="respuesta">Respuesta: <%=request.getParameter("res")%> </label></center>
        <br>
    </div>
    <%
        if(sesion.getAttribute("historial") != null){
            List<String> historial = (List<String>)sesion.getAttribute("historial");

            for(String h: historial){   
    %>
    <div class="historial">
        <label class="texto">Texto:<%=h%></label>
        <br>
        <br>
        <a href="Descifrar?descifrar=<%=h%>"><button type="button">Descifrar</button></a>
    </div>
    <%
            }
        }
    %>
    </div>
</body>
</html>
