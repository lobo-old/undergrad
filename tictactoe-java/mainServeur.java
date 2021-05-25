package serveurClient;
//import utilensemjava.SocketClient;

public class mainServeur {
	/*static int tableau [][] = {
			{0,0,0},{0,0,0},{0,0,0}
	};*/
	public static void main(String[] args) throws Throwable{
		 //SocketServeur maChaussette = new SocketServeur(8000);
		 Myserveur monServeur = new Myserveur();
		 
		 System.out.println(monServeur.recevoirDemande());
		 monServeur.envoyerQuestions("Si vous voulez jouer dites <<oui>>");
		 if(monServeur.recevoirDemande() == "oui"){
				 monServeur.serveurJoue();
				 //monServeur.fermerPorte();
		 }else{
			 //monServeur.fermerPorte();
		 }
		 /*
		 System.out.println("CLIENT envoit:"+maChaussette.lireChaine());
		 System.out.println("SERVEUR dit: Salut! Si tu veux jouer,entrer 1; si non,entrer 0");
		 maChaussette.ecrireChaine("Salut! Si tu veux jouer,entrer 1; si non,entrer 0");
		 if(maChaussette.lireEntier() == 1){
	    	System.out.println("CLIENT dit: Oui!");
	    	
		 }else{
	    	System.out.println("CLIENT dit: Non!");
	    	return ;
		 }
		 	*/	 
		 		   
		 //jeu(maChaussette);
		   
		 //monServeur.maChaussette maChaussette.finalize();//descobrir por que não está funcionando
	
	}
}
