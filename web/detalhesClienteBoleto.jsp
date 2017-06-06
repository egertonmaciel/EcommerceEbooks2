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
        <form action="geraBoleto.jsp">
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
        <!--<a href="dadosPagamento.jsp?id=1" style="padding:8px; border:1px solid green; color:white; font-weight:900; background-color:green; border-radius:4px; width:433px;">Cartão de Credito</a>-->
        <input type="submit" value="Gerar Boleto" style="padding:8px; border:1px solid green; color:white; font-weight:900; background-color:green; border-radius:4px; width:433px;">
    </form>
    </center>

    <script>
        function parUrl(parameter) {
            var loc = location.search.substring(1, location.search.length);
            var param_value = false;
            var params = loc.split("&");
            for (i = 0; i < params.length; i++) {
                param_name = params[i].substring(0, params[i].indexOf('='));
                if (param_name == parameter) {
                    param_value = params[i].substring(params[i].indexOf('=') + 1)
                }
            }
            if (param_value) {
                return param_value;
            } else {
                return false;
            }
        }
    </script>
</body>
</html>
