package projeto_integrador;
//Classe Proprietario: A classe está extendendo da superclasse Usuario.
public class Proprietario extends Usuario{
	
	public Proprietario(String nome, String endereco, String telefone, String senha, String email, byte fotoPefil) {
		super(nome, endereco, telefone, senha, email);
		// TODO Auto-generated constructor stub
	}

	private String cpf;
	
	
	
	public boolean cadastrarProprietario() {
		return true;
	}
}
