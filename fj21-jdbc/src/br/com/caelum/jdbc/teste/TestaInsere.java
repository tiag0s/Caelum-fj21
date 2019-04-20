package br.com.caelum.jdbc.teste;

import java.util.Calendar;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaInsere {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Contato contato = new Contato();
		contato.setNome("Alura");
		contato.setEmail("Contato@caelum.com.br");
		contato.setEndereco("R. Vergueiro 3185 cj57");
		contato.setDataNascimento(Calendar.getInstance());

		ContatoDao dao = new ContatoDao();

		dao.adiciona(contato);

		System.out.println("Gravado");

	}

}
