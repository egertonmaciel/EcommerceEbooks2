<%@page import="modelo.Boleto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jsp" %>
    </head>
    <body>
        <%@include file="cabecalho.jsp" %>
        <%
            String id = request.getParameter("id");
        %>
    <center>
        <h2>Forma de Pagamento:</h2>
        <br><br><br>
        <a href="detalhesCliente.jsp?id=<%=id%>" style="padding:8px; border:1px solid green; color:white; font-weight:900; background-color:green; border-radius:4px; width:433px;">Cartão de Credito</a>
        <a href="detalhesClienteBoleto.jsp?id=<%=id%>" style="padding:8px; border:1px solid green; color:white; font-weight:900; background-color:green; border-radius:4px; width:433px;">Boleto</a>
    </center>

</body>
</html>
