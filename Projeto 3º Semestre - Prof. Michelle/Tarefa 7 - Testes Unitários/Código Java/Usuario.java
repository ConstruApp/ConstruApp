package projeto_integrador;
//Classe Usuario: Classe que vai extender para Proprietario e Empresa. É uma superclasse. 
public class Usuario {

	private String nome;
	private String endereco;
	private String telefone;
	private String senha;
	private String email;
	//private byte fotoPefil;
	
	public Usuario(String nome, String endereco, String telefone, String senha, String email) {
		super();
		this.nome = nome;
		this.endereco = endereco;
		this.telefone = telefone;
		this.senha = senha;
		this.email = email;
		//this.fotoPefil = fotoPefil;
	}
	
	
	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public String getEndereco() {
		return endereco;
	}


	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}


	public String getTelefone() {
		return telefone;
	}


	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}


	public String getSenha() {
		return senha;
	}


	public void setSenha(String senha) {
		this.senha = senha;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}

	public boolean cadastrarBiometria() {
		return true;
	}
	public boolean alterarSenha() {
		return true;
	}
	public boolean atualizarDados() {
		return true;
	}
	public boolean verificarLogin() {
		return true;
	}
	public void inserirFotoPerfil() {
		
	}
	
}
