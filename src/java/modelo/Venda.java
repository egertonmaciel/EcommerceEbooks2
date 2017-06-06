/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Date;

/**
 *
 * @author Egerton
 */
public class Venda {

    int id;
    Livro livro;
    double valor;
    String nomeCliente;
    String emailCliente;
    boolean foiBoleto;
    String cartaoNome;
    String cartaoNumero;
    int cartaoCodigo;
    String cartaoDataVenc;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Livro getLivro() {
        return livro;
    }

    public void setLivro(Livro livro) {
        this.livro = livro;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public String getNomeCliente() {
        return nomeCliente;
    }

    public void setNomeCliente(String nomeCliente) {
        this.nomeCliente = nomeCliente;
    }

    public String getEmailCliente() {
        return emailCliente;
    }

    public void setEmailCliente(String emailCliente) {
        this.emailCliente = emailCliente;
    }

    public boolean isFoiBoleto() {
        return foiBoleto;
    }

    public void setFoiBoleto(boolean foiBoleto) {
        this.foiBoleto = foiBoleto;
    }

    public String getCartaoNome() {
        return cartaoNome;
    }

    public void setCartaoNome(String cartaoNome) {
        this.cartaoNome = cartaoNome;
    }

    public String getCartaoNumero() {
        return cartaoNumero;
    }

    public void setCartaoNumero(String cartaoNumero) {
        this.cartaoNumero = cartaoNumero;
    }

    public int getCartaoCodigo() {
        return cartaoCodigo;
    }

    public void setCartaoCodigo(int cartaoCodigo) {
        this.cartaoCodigo = cartaoCodigo;
    }

    public String getCartaoDataVenc() {
        return cartaoDataVenc;
    }

    public void setCartaoDataVenc(String cartaoDataVenc) {
        this.cartaoDataVenc = cartaoDataVenc;
    }

}
