<%@page import="java.util.ArrayList"%>
<%@page import="dao.LivroDAO"%>
<%@page import="modelo.Livro"%>
<%@page import="modelo.Venda"%>
<%@page import="dao.VendaDAO"%>
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
//            String valor = request.getParameter("valor");
            String cartaoNome = "";
            String cartaoNumero = "";
            String cartaoCodigo = "";
            String cartaoDataVenc = "";

            Double valorLivro = 0.0;
            String link = "";
            
            VendaDAO daoVenda = new VendaDAO();
            Venda venda = new Venda();
            LivroDAO livroDAO = new LivroDAO();
            Livro livro = new Livro();
            ArrayList<ArrayList<String>> retornoLivro = livroDAO.listarLivroDetalhes(id);
            for (ArrayList<String> x : retornoLivro) {
                livro.setId(Integer.parseInt(x.get(0)));
                livro.setNome(x.get(1));
                livro.setDescricao(x.get(2));
                livro.setCategoria(x.get(3));
                livro.setAutor(x.get(4));
                livro.setValor(Double.parseDouble(x.get(5)));
                livro.setLink(x.get(6));
                
                valorLivro = Double.parseDouble(x.get(5));
                link = x.get(6);
            }

            venda.setLivro(livro);
            venda.setValor(valorLivro);
            venda.setNomeCliente(nome);
            venda.setEmailCliente(email);
            venda.setFoiBoleto(true);
            venda.setCartaoNome("");
            venda.setCartaoNumero("");
            venda.setCartaoCodigo(0);
            venda.setCartaoDataVenc("1900-01-01");

            boolean ret = daoVenda.cadastrar(venda);
        %>


    <center>
        Resposta:
        <br><br>
        <%
            if (ret) {
        %>
        <font color="green">Boleto gerado com Sucesso:</font>
        <br><br><br>
        <a href="livros\boleto.pdf" style="padding:8px; border:1px solid green; color:white; font-weight:900; background-color:green; border-radius:4px; width:433px;">Download</a>
        <%
        } else {
        %>
        <font color="red">Erro ao gerar Boleto!</font>
        <%
            }
        %>

    </center>
</body>
</html>

        
    
