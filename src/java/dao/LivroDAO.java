/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;

/**
 *
 * @author Egerton
 */
public class LivroDAO {

    ConexaoBanco conexao = new ConexaoBanco();

    public ArrayList listarLivros() {
        ArrayList<ArrayList<String>> listaLivros;
        String sql = "select * from livros;";
        listaLivros = conexao.select(sql, 7);
        return listaLivros;
    }
    public ArrayList listarLivroDetalhes(String id) {
        ArrayList<ArrayList<String>> listaLivros;
        String sql = "select * from livros where id = " + id;
        listaLivros = conexao.select(sql, 7);
        return listaLivros;
    }
    

}
