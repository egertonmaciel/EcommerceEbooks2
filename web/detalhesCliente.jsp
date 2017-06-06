<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
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
        Dados do Cliente:
        <br>
        <form action="dadosPagamento.jsp">
            <input type="hidden" name="id" value="<%=id%>">

            <table border="1" width="30%">
                <tr>
                    <td>Nome:</td>
                    <td><input type="text" name="nome"/></td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td><input type="text" name="email"/></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="Cadastrar Cartão de Credito" style="padding:8px; border:1px solid green; color:white; font-weight:900; background-color:green; border-radius:4px; width:433px;">
        </form>
    </center>
</body>
</html>
