package projeto_integrador;
//Classe Etapa: Adiciona uma nova etapa a obra.
public class Etapa {
  private String nomeEtapa;
  private String status;
  private float porcentagem;
  private String descricao;
  private String dataEtapa;
    
  	public Etapa(String nomeEtapa, String status, float porcentagem, String descricao, String dataEtapa) {
	super();
	this.nomeEtapa = nomeEtapa;
	this.status = status;
	this.porcentagem = porcentagem;
	this.descricao = descricao;
	this.dataEtapa = dataEtapa;
}

  	public void editarEtapa() {
	  
  	}
  	public void pesquisarEtapa() {
	  
  	}
  	public void filtrarEtapa() {
	  
  	}
  	public float atualizarPorcentagem() {
  		return 100;
  	}

	public String getNomeEtapa() {
		return nomeEtapa;
	}

	public void setNomeEtapa(String nomeEtapa) {
		this.nomeEtapa = nomeEtapa;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public float getPorcentagem() {
		return porcentagem;
	}

	public void setPorcentagem(float porcentagem) {
		this.porcentagem = porcentagem;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getDataEtapa() {
		return dataEtapa;
	}

	public void setDataEtapa(String dataEtapa) {
		this.dataEtapa = dataEtapa;
	}
  
}
