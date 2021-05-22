package projeto_integrador;
//Classe responsável por armazenar e gerenciar a empresa, extendendo de Usuario.

import java.util.ArrayList;
import java.util.List;

public class Empresa extends Usuario {
	
	private String cnpj;
	List<Obra> listadeobras = new ArrayList<Obra>();
	public Empresa(String nome, String endereco, String telefone, String senha, String email) {
		super(nome, endereco, telefone, senha, email);
		// TODO Auto-generated constructor stub
	}

	public boolean cadastrarEmpresa() {
		return true;
	}
	public boolean cadastrarObra(Obra o) {
		listadeobras.add(o);
		return true;
	}
	public void imprimirobras() {
		System.out.println("As obras dessa empresa são:");
		for(Obra o: listadeobras) {
			System.out.println("Nome da Obra: " + o.getNome());
		}
	}
	public Obra pesquisarObra(String nome) {
		for(Obra o: listadeobras) {
			if(o.getNome().equals(nome)) {
				System.out.println("Obra encontrada: " + o.getNome());
				return o;
				
			}
		}
		return null;
	}
}
