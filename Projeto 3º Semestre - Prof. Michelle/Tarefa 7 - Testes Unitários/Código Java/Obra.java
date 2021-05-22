package projeto_integrador;
//Classe Obra: Recebe uma lista de etapa, uma lista de funcionario e arquivos.
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Obra {
	private String nome;
	private String endereco;
	private String dataInicio;
	private String dataFinal;
	private Funcionario responsavel;
	
	List<Etapa> listadeetapas = new ArrayList<Etapa>();
	List<Funcionario> listadefuncionarios = new ArrayList<Funcionario>();
	List<Arquivos> listadearquivos = new ArrayList<Arquivos>();
	
	public Obra(String nome, String endereco, String dataInicio, String dataFinal, Funcionario responsavel) {
		super();
		this.nome = nome;
		this.endereco = endereco;
		this.dataInicio = dataInicio;
		this.dataFinal = dataFinal;
		this.responsavel = responsavel;
		}
	

	
	public boolean atualizarObra() {
		return true;
	}
	
	public boolean associarFuncionario(Funcionario f) {
		listadefuncionarios.add(f);
		return true;
	}

	public boolean adicionarEtapa(Etapa a) {
		listadeetapas.add(a);
				return true;
	}
	
	public void imprimirfuncionarios() {
		for(Funcionario f: listadefuncionarios) {
			System.out.println("Funcionário cadastrado nesta Obra: " +f.getNome());
		}
		
	}
	public void imprimirEtapas() {
		for(Etapa et: listadeetapas) {
			System.out.println("Nome: "+ et.getNomeEtapa() + "|Porcentagem: " + et.getPorcentagem() + "|Status: " + et.getStatus());
		}
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



	public String getDataInicio() {
		return dataInicio;
	}



	public void setDataInicio(String dataInicio) {
		this.dataInicio = dataInicio;
	}



	public String getDataFinal() {
		return dataFinal;
	}



	public void setDataFinal(String dataFinal) {
		this.dataFinal = dataFinal;
	}



	public Funcionario getResponsavel() {
		return responsavel;
	}



	public void setResponsavel(Funcionario responsavel) {
		this.responsavel = responsavel;
	}



	public List<Etapa> getListadeetapas() {
		return listadeetapas;
	}



	public void setListadeetapas(List<Etapa> listadeetapas) {
		this.listadeetapas = listadeetapas;
	}



	public List<Funcionario> getListadefuncionarios() {
		return listadefuncionarios;
	}



	public void setListadefuncionarios(List<Funcionario> listadefuncionarios) {
		this.listadefuncionarios = listadefuncionarios;
	}



	public List<Arquivos> getListadearquivos() {
		return listadearquivos;
	}



	public void setListadearquivos(List<Arquivos> listadearquivos) {
		this.listadearquivos = listadearquivos;
	}

}
