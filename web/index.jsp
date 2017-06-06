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
    <center>
        <form method="post" action="exemplo.html" id="frm-filtro">
            <p>
                <label for="pesquisar">Pesquisar Livros </label>
                <input type="text" id="pesquisar" name="pesquisar" size="30" /><br>
                <a>Digite o texto e pressione Enter</a>
            </p>
        </form>
        <table cellspacing="0" summary="Tabela de dados fictícios">
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nome</th>
                    <th>Autor</th>
                    <th>Categoria</th>
                </tr>
            </thead>
            <tbody>
                <%
                    LivroDAO livro = new LivroDAO();
                    ArrayList<ArrayList<String>> retorno = livro.listarLivros();
                    String cod;
                    String nome;
                    String desc;
                    String cat;
                    String autor;
                    String valor;
                    String link;
                    for (ArrayList<String> x : retorno) {
                        cod = x.get(0);
                        nome = x.get(1);
                        desc = x.get(2);
                        cat = x.get(3);
                        autor = x.get(4);
                        valor = x.get(5);
                        link = x.get(6);
                %>
                <tr>
                    <td><%=cod%></td>
                    <td><a href="detalhesEbook.jsp?id=<%=cod%>"><%=nome%></a></td>
                    <td><%=autor%></td>
                    <td><%=cat%></td>
                </tr>
                <%                    }
                %>
            </tbody>
        </table>
    </center>
    <script>
        $(function () {

            $('table > tbody > tr:odd').addClass('odd');

            $('table > tbody > tr').hover(function () {
                $(this).toggleClass('hover');
            });

            $('#marcar-todos').click(function () {
                $('table > tbody > tr > td > :checkbox')
                        .attr('checked', $(this).is(':checked'))
                        .trigger('change');
            });

            $('table > tbody > tr > td > :checkbox').bind('click change', function () {
                var tr = $(this).parent().parent();
                if ($(this).is(':checked'))
                    $(tr).addClass('selected');
                else
                    $(tr).removeClass('selected');
            });

            $('form').submit(function (e) {
                e.preventDefault();
            });

            $('#pesquisar').keydown(function () {
                var encontrou = false;
                var termo = $(this).val().toLowerCase();
                $('table > tbody > tr').each(function () {
                    $(this).find('td').each(function () {
                        if ($(this).text().toLowerCase().indexOf(termo) > -1)
                            encontrou = true;
                    });
                    if (!encontrou)
                        $(this).hide();
                    else
                        $(this).show();
                    encontrou = false;
                });
            });

            $("table")
                    .tablesorter({
                        dateFormat: 'uk',
                        headers: {
                            0: {
                                sorter: false
                            },
                            5: {
                                sorter: false
                            }
                        }
                    })
                    //.tablesorterPager({container: $("#pager")})
                    .bind('sortEnd', function () {
                        $('table > tbody > tr').removeClass('odd');
                        $('table > tbody > tr:odd').addClass('odd');
                    });
        });
    </script>
</body>
</html>
