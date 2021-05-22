package projeto_integrador;
//Classe Arquivos: Classe criada para salvar, inserir e atualizar os arquivos referente a determinada obra.

public class Arquivos {
	private String nomeArquivo;
	private String dataPublicacao;
	private byte arquivo;
	public Arquivos(String nomeArquivo, String dataPublicacao, byte arquivo) {
		super();
		this.nomeArquivo = nomeArquivo;
		this.dataPublicacao = dataPublicacao;
		this.arquivo = arquivo;
	}
	
	public void inserirArquivo() {
		
	}
	public String atualizarArquivo() {
		return "atualizado";
	}
	public String abrirArquivo() {
		return "Aberto";
	}
	public void baixarArquivo() {
		
	}
	public void pesquisarArquivo() {
		
	}
}
