package serveurClient;

import java.io.IOException;

import utilensemjava.Lire;
import utilensemjava.SocketClient;

public class Myclient {
	
	private SocketClient maChaussette;
	private int jeuStatus;//0 - pas fini, 1 - serveur a gagné, 2 - client a gagné
	private int[][] tableau;
	private String message;
	private int[] pair;
	
	public Myclient() throws Exception{
		maChaussette = new SocketClient("192.168.44.135",8000);//passar como parâmetros
		this.jeuStatus = 0;
		this.pair = new int[2];
		this.pair[0] = 0;this.pair[1] = 0;
		this.message = "";
		this.tableau = new int[3][3];
		for(int i=0;i<3;i++)
			for(int j=0;j<3;j++)
				this.tableau[i][j] = 0;
	}
	/*
	 public static void main(String[] args) throws Exception{
		 SocketClient maChaussette = new SocketClient("192.168.44.135",8000);
		 int i,j;
		 
		   System.out.println("CLIENT dit:Salut!");
		   maChaussette.ecrireChaine("Salut!");
		   System.out.println("SERVEUR répond:"+maChaussette.lireChaine());
		   System.out.println("SERVEUR dit: Si tu veux jouer,entrer 1; si non,entrer 0");
		   
		   System.out.println("CLIENT dit:1");//criar parte para escolher jogar ou nao
		   maChaussette.ecrireEntier(1);
		   
		   //jeu(maChaussette);
		   
		   //maChaussette.finalize();//descobrir por que não está funcionando
	 }
	*/
	
	public void connectPourJouer(String salutation) throws IOException{
		this.maChaussette.ecrireChaine(salutation);
	}
	public String attendreReponse() throws IOException{
		return this.maChaussette.lireChaine();
	}
	
	private void afficherTableau (){
		System.out.println("Tableau actuel: ");
		for (int i=0;i<3;i++){
			for (int j=0;j<3;j++){
				System.out.print(tableau[i][j] + "");	
			}
			System.out.println();	
		}			
	}
	
	private void envoyerPaquetClientServeur() throws IOException{
		this.maChaussette.ecrireEntier(this.pair[0]);
		this.maChaussette.ecrireEntier(this.pair[1]);
		//this.maChaussette.ecrireChaine(this.message);
	}
	
	private void lirePaquetServeurClient() throws IOException{
		this.jeuStatus = maChaussette.lireEntier();
		for (int i=0;i<3;i++){
			for (int j=0;j<3;j++){
				this.tableau[i][j] = maChaussette.lireEntier();
			}
		}
		this.message = maChaussette.lireChaine();
	}
	
	public void clientJoue() throws Exception{
		
		while(this.jeuStatus != 0){
			//função de leitura do pacote
			lirePaquetServeurClient();//atualiza todas as informações 
						
			//
			if(this.jeuStatus == 0){
				this.afficherTableau();//mostrar tabuleiro inicial
				System.out.println("Joue: x y");
				this.pair[0] = Lire.i();
				this.pair[1] = Lire.i();
				//enviar pacote
				this.envoyerPaquetClientServeur();
				//maChaussette.ecrireEntier(i);
				//maChaussette.ecrireEntier(j);
				//this.tableau[i][j] = 2;
			}else{
				this.afficherTableau();
				System.out.println(this.message);
				return;
				/*
				if(this.jeuStatus == 1){
					this.afficherTableau();
					System.out.println(this.message);
					return;
				}
				if(this.jeuStatus == 2){
					this.afficherTableau();
					System.out.println(this.message);
					return;
				}*/
			}
		}//while
	}

}