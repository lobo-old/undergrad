package serveurClient;

import java.io.IOException;
import java.net.SocketException;

import utilensemjava.SocketServeur;

//import utilensemjava.Lire;
//import utilensemjava.SocketClient;

public class Myserveur {
	
	private SocketServeur maChaussette;
	private int jeuStatus;//0 - pas fini, 1 - serveur a gagné, 2 - client a gagné
	private int[][] tableau;
	private String message;
	private int[] pair;
	
	public Myserveur() throws SocketException{
		maChaussette = new SocketServeur(8000);//passar porta como parametro
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
	 public static void main(String[] args) throws Throwable{
		 SocketServeur maChaussette = new SocketServeur(8000);
		 
		 System.out.println("CLIENT envoit:"+maChaussette.lireChaine());
		 System.out.println("SERVEUR dit: Salut! Si tu veux jouer,entrer 1; si non,entrer 0");
		 maChaussette.ecrireChaine("Salut! Si tu veux jouer,entrer 1; si non,entrer 0");
		 if(maChaussette.lireEntier() == 1){
	    	System.out.println("CLIENT dit: Oui!");
	    	
		 }else{
	    	System.out.println("CLIENT dit: Non!");
	    	return ;
		 }
		 		 
		 		   
		 //jeu(maChaussette);
		   
		 maChaussette.finalize();//descobrir por que não está funcionando
	 }*/
	
	public void envoyerQuestions(String question) throws IOException{
		this.maChaussette.ecrireChaine(question);
	}
	public String recevoirDemande() throws IOException{
		return this.maChaussette.lireChaine();
	}
	/*
	public void fermerPorte() throws Throwable{
		this.maChaussette.finalize();
	}*/
	
	private void afficherTableau (){
		System.out.println("Tableau actuel: ");
		for (int i=0;i<3;i++){
			for (int j=0;j<3;j++){
				System.out.print(tableau[i][j] + "");	
			}
			System.out.println();	
		}			
	}
	
	private void envoyerPaquetServeurClient() throws IOException{
		maChaussette.ecrireEntier(jeuStatus);
		for (int i=0;i<3;i++){
			for (int j=0;j<3;j++){
				maChaussette.ecrireEntier(tableau[i][j]);
			}
		}
		this.maChaussette.ecrireChaine(this.message);
	}
	
	private void lirePaquetClientServeur() throws IOException{
		this.pair[0] = this.maChaussette.lireEntier();
		this.pair[1] = this.maChaussette.lireEntier();
	}
	
	public void serveurJoue() throws Exception{
		//int pair[] ={0,0};
		//funçao para decidir se ele ou o cliente começa
			//cliente começa sempre, definido (implementar funçao)
		//já envia um pacote com os dados
		this.envoyerPaquetServeurClient();
		
		while(jeuStatus != 0){
		//função de recepção do pacote cliente-servidor
			this.afficherTableau();
			this.lirePaquetClientServeur();
		
		//i=0;j=0;
		//pair[0] = 0; pair[1] = 0;
		//funçao que verifica jogada e atualiza o tableau
		tableau[pair[0]][pair[1]] = 2;
			
			//identificar se o jogo acabou(cliente ganhou)
			if(jeuFini(2)==1){
				this.jeuStatus = 2;
				this.message = "Le jeu a fini, tu as gagné!";
				System.out.println("Le jeu a fini, le client a gagné!");
				this.envoyerPaquetServeurClient();
				return ;
				//return 2;//pensar em retornar quem ganhou na funçao
			}
			
			//função para servidor jogar
			pair[0]=1; pair[0] = 0;
			tableau[pair[0]][pair[1]] = 1;
			//identificar se o jogo acabou(servidor ganhou)
			if(jeuFini(1)==1){
				this.jeuStatus = 1;
				this.message = "Le jeu a fini, le serveur a gagné!";
				System.out.println("Le jeu a fini, le serveur a gagné!");
				return ;
				//return 1;//pensar em retornar quem ganhou na funçao
			}
			
			//função de envio do pacote
			envoyerPaquetServeurClient();
			
			
		}
	}
	
	private int jeuFini(int quiJoue) throws Exception{
		//horizontais
		if(tableau[0][0]==quiJoue && tableau[0][1]==quiJoue && tableau[0][2]==quiJoue)
			return 1;
		if(tableau[1][0]==quiJoue && tableau[1][1]==quiJoue && tableau[1][2]==quiJoue)
			return 1;
		if(tableau[2][0]==quiJoue && tableau[2][1]==quiJoue && tableau[2][2]==quiJoue)
			return 1;
		//verticais
		if(tableau[0][0]==quiJoue && tableau[1][0]==quiJoue && tableau[2][0]==quiJoue)
			return 1;
		if(tableau[0][1]==quiJoue && tableau[1][1]==quiJoue && tableau[2][1]==quiJoue)
			return 1;
		if(tableau[0][2]==quiJoue && tableau[1][2]==quiJoue && tableau[2][2]==quiJoue)
			return 1;
		//diagonais
		if(tableau[0][0]==quiJoue && tableau[1][1]==quiJoue && tableau[2][2]==quiJoue)
			return 1;
		if(tableau[0][2]==quiJoue && tableau[1][1]==quiJoue && tableau[2][0]==quiJoue)
			return 1;
		
		return 0;
		
	}
	/*
	public void jeu(SocketClient maChaussette_) throws Exception{
		boolean jeuFini = false;
		int i,j;
		
		i = maChaussette_.lireEntier();
		j = maChaussette_.lireEntier();
		//System.out.println(i);
		//System.out.println(j);
		   
		if(i != -1 && j != -1){//se o servidor enviar -1-1 o cliente começa, se não já marca a jogada
			tableau[i][j] = 1;
			System.out.println("Serveur a commencé!");
			//afficherTableau();
		}
		
		while(!jeuFini){
			afficherTableau();
			
			//cliente joga
			//clientJoue(maChaussette_);
			System.out.println("joue: x y");
			i = Lire.i();
			j = Lire.i();
			maChaussette_.ecrireEntier(i);
			maChaussette_.ecrireEntier(j);
			tableau[i][j] = 2;
			System.out.println("Après que tu as joué:");
			afficherTableau();
			//identificar se o jogo acabou
			
			
			//servidor joga
			//serveurJoue(maChaussette_);
			i = maChaussette_.lireEntier();
			j = maChaussette_.lireEntier();
			tableau[i][j] = 1;//atualiza o tableau
			System.out.println("Après que le serveur a joué:");
			afficherTableau();
			//identificar se o jogo acabou
			
			
			
		}
	}*/
	
	}