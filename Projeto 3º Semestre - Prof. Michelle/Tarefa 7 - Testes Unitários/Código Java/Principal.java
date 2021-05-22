package projeto_integrador;

import java.util.ArrayList;
import java.util.List;

public class Principal {

	public static void main(String[] args) {
		//Funcionários que serão inseridos a obras.
		Funcionario funcionario1 = new Funcionario("Lariane Guerra", "31-99854895", "128548", "Engenheira");
		Funcionario funcionario2 = new Funcionario("Erasmo Fernandes", "82-7852495", "9874581", "Encarregado de Obra");
		Funcionario funcionario3 = new Funcionario("Rebeca Gusmoes", "39-1597535", "5459878", "Estagiaria");
		
		
		//Criando as obras
		Obra obra1 = new Obra("O Grand Park", "Rua Fernando Alivier, 808 - Contagem/MG" , "13/01/2019", "24/05/2021", funcionario1);
		Obra obra2 = new Obra("Ilhas das Maldivas", "Rua Humberto Serrano, 1012 - Vitória/ES" , "28/04/2020", "11/06/2021", funcionario1);		
		
		//Criando uma empresa e testando. 
		Empresa empresa1 = new Empresa("Construtora e Incorporadora Guerra", "Rua Bernado Guimares - São Roque do Canaã" , "27-3789-6464", "159753", "contrusguerra@gmail.com");
		empresa1.cadastrarObra(obra1);
		empresa1.cadastrarObra(obra2);
		empresa1.imprimirobras();
		empresa1.pesquisarObra("O Grand Park");
		empresa1.pesquisarObra("Ilhas das Maldivas");

		//(String nomeEtapa, String status, float porcentagem, String descricao, String dataEtapa) {
		Etapa fundacao = new Etapa("Fundação", "Iniciada" , 2f, "Marcação de Estacas", "21/05/2021");
		Etapa pilares = new Etapa("Pilares", "Programada" , 0f, "Não iniciada", "-");
		
		//Testando associar funcionario:
		obra1.associarFuncionario(funcionario1); //testado
		obra1.associarFuncionario(funcionario2); //testado
		obra1.imprimirfuncionarios(); //testado
		obra2.associarFuncionario(funcionario3);
		
	
		//Testando adicionar etapa e imprimir:
		 obra1.adicionarEtapa(fundacao); //OK
		 obra1.adicionarEtapa(pilares); //OK 
		 obra1.imprimirEtapas(); //OK
		 obra2.adicionarEtapa(fundacao);
		 obra2.imprimirEtapas();
		 
	}

}
