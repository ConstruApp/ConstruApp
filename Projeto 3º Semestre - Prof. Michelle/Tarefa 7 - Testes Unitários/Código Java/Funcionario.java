package projeto_integrador;
//Classe Funcionário: responsável por cadastrar o funcionário no sistema.

public class Funcionario {
	private String nome;
	private String telefone;
	private String matricula;
	private String funcao;
	
	public Funcionario(String nome, String telefone, String matricula, String funcao) {
		super();
		this.nome = nome;
		this.telefone = telefone;
		this.matricula = matricula;
		this.funcao = funcao;
	}
	public boolean cadastrarFuncionario() {
		return true;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getMatricula() {
		return matricula;
	}
	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}
	public String getFuncao() {
		return funcao;
	}
	public void setFuncao(String funcao) {
		this.funcao = funcao;
	}
	public boolean atualizarDados() {
		return true;
	}
	
	public int pesquisarFuncionario() {
		return 10;
		
	}
	public boolean removerFucnionario() {
		return true;
	}
	
	
}
