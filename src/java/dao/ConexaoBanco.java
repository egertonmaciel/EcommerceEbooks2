/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Egerton
 */
public class ConexaoBanco {

    private String ipServidor;
    private String database;
    private String usuario;
    private String senha;
    private int porta;

    private Connection con;
    private PreparedStatement stm;
    private ResultSet rs;

    public ConexaoBanco() {
        this.ipServidor = "localhost";
        this.database = "TESTE";
        this.usuario = "root";
        this.senha = "55555";
        this.porta = 3306;   
    }

    public ArrayList select(String sql, int qtdColunas) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConexaoBanco.class.getName()).log(Level.SEVERE, null, ex);
        }
        String url = "jdbc:mysql://" + ipServidor + ":" + porta + "/" + database;

        ArrayList<ArrayList<String>> arrayPrincipal = new ArrayList<>();
        ArrayList<String> arraySecundario;
        try {
            con = (Connection) DriverManager.getConnection(url, usuario, senha);
            stm = (PreparedStatement) con.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                arraySecundario = new ArrayList<>();
                for (int i = 1; i <= qtdColunas; i++) {
                    arraySecundario.add(rs.getString(i));
                }
                arrayPrincipal.add(arraySecundario);
            }
            rs.close();
            stm.close();
            con.close();
        } catch (Exception e) {
            System.out.println("ERRO SELECT:" + e);
        }
        return arrayPrincipal;
    }

    public int insert(String sql) {
        int retorno = 0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConexaoBanco.class.getName()).log(Level.SEVERE, null, ex);
        }
        String url = "jdbc:mysql://" + ipServidor + ":" + porta + "/" + database;

//        ArrayList<ArrayList<String>> arrayPrincipal = new ArrayList<>();
//        ArrayList<String> arraySecundario;
        try {
            con = (Connection) DriverManager.getConnection(url, usuario, senha);
            stm = (PreparedStatement) con.prepareStatement(sql);
            retorno = stm.executeUpdate();
//            while (rs.next()) {
//                arraySecundario = new ArrayList<>();
//                for (int i = 1; i <= qtdColunas; i++) {
//                    arraySecundario.add(rs.getString(i));
//                }
//                arrayPrincipal.add(arraySecundario);
//            }
            rs.close();
            stm.close();
            con.close();
        } catch (Exception e) {
            System.out.println("ERRO SELECT:" + e);
        }
        return retorno;
    }

}
