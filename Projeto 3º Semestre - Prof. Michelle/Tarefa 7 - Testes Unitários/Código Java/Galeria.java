package projeto_integrador;
//Classe Galeria: Adiciona, atualiza e filtra as fotos adicionadas em forma de lista. 
import java.util.ArrayList;
import java.util.List;

public class Galeria {
	private String dataPublicacao;
	private String descricao;
	
	
	 List<Fotos> listafotos = new ArrayList<Fotos>();
	public Galeria(String dataPublicacao, String descricao) {
		super();
		this.dataPublicacao = dataPublicacao;
		this.descricao = descricao;
	}
	
	public boolean adicionarGaleria() {
		return true;
	}
	public boolean atualizarGaleria() {
		return true;
	}
	public void filtrarPorData() {
		
	}
 
 
}
