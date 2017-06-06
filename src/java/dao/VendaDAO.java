/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import modelo.Venda;

/**
 *
 * @author Egerton
 */
public class VendaDAO {

    ConexaoBanco conexao = new ConexaoBanco();

    public boolean cadastrar(Venda venda) {
        int boleto = 0;
        if (venda.isFoiBoleto()) {
            boleto = 1;
        }
        String sql = "insert into vendas values (null," + venda.getLivro().getId() + "," + venda.getValor() + ",'" + venda.getNomeCliente() + "','" + venda.getEmailCliente() + "'," + boleto + ",'" + venda.getCartaoNome() + "','" + venda.getCartaoNumero() + "'," + venda.getCartaoCodigo() + ",'" + venda.getCartaoDataVenc() + "');";
        if (conexao.insert(sql) > 0) {
            return true;
        } else {
            return false;
        }
    }
}
