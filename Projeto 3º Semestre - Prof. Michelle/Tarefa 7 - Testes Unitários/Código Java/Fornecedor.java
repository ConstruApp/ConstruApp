package projeto_integrador;
//Classe Fornecedor: responsável por cadastrar o fornecedor no sistema.
public class Fornecedor {

	private String nome;
	private String telefone;
	private String endereco;
	private String cnpj;
	
	public Fornecedor(String nome, String telefone, String endereco, String cnpj) {
		super();
		this.nome = nome;
		this.telefone = telefone;
		this.endereco = endereco;
		this.cnpj = cnpj;

	}
	public boolean cadastrarFornecedor() {
		return true;
	}
	public boolean atualizarFornecedor() {
		return true;
	}
	public boolean removerFornecedor() {
		return true;
	}
}
