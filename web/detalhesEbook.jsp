<%@page import="java.util.ArrayList"%>
<%@page import="dao.LivroDAO"%>
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
                    LivroDAO livro = new LivroDAO();
                    ArrayList<ArrayList<String>> retorno = livro.listarLivroDetalhes(id);
                    String cod = "";
                    String nome = "";
                    String desc = "";
                    String cat = "";
                    String autor = "";
                    String valor = "";
                    String link = "";
                    for (ArrayList<String> x : retorno) {
                        cod = x.get(0);
                        nome = x.get(1);
                        desc = x.get(2);
                        cat = x.get(3);
                        autor = x.get(4);
                        valor = x.get(5);
                        link = x.get(6);
                    }
                %>
        
        
    <center>
        <table border="1">
            <tr>
                <td><%=nome%></td>
                <td>Detalhes</td>
            </tr>
            <tr>
                <td>
                    <img style="width:10%" src="livros\<%=link%>.png">
                </td>
                <td>
                    <div style="white-space: normal">
                        <%=desc%>
                        <br><br>
                        <b>Por: R$ <%=valor%></b>
                        <div>
                            </td>
                            </tr>
                            </table>

                            <br>
                            <a class="botaoComprar" href="escolheOpcao.jsp?id=<%=id%>">Comprar</a>


                            </center>
                            </body>
                            </html>

