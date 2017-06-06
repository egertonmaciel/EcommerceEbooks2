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
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
        %>
    <center>
        Dados de Pagamento:
        <br>
         <form action="resposta.jsp">
            <input type="hidden" name="id" value="<%=id%>">
            <input type="hidden" name="nome" value="<%=nome%>">
            <input type="hidden" name="email" value="<%=email%>">
        
        <table border="1" width="30%">
            <tr>
                <td>Nome Titular:</td>
                <td><input type="text" name="cartaoNome"/></td>
            </tr>
            <tr>
                <td>Numero do Cartão:</td>
                <td><input type="text" name="cartaoNumero"/></td>
            </tr>
            <tr>
                <td>Código de Verificação:</td>
                <td><input type="text" name="cartaoCodigo"/></td>
            </tr>
            <tr>
                <td>Data de Vencimento:</td>
                <td><input type="date" name="cartaoVencimento"/></td>
            </tr>
        </table>

        <br>
        <input type="submit" value="Confirmar" style="padding:8px; border:1px solid green; color:white; font-weight:900; background-color:green; border-radius:4px; width:433px;"> 
         </form>
    </center>

</body>
</html>
