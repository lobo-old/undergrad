package serveurClient;

import utilensemjava.Lire;
//import utilensemjava.SocketClient;

public class mainClient {
	/*static int tableau [][] = {
			{0,0,0},{0,0,0},{0,0,0}
	};*/
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		//SocketClient maChaussette = new SocketClient("192.168.44.135",8000);
		 //int i,j;
		 String reponse = ""; 
		 Myclient monClient = new Myclient();
		 System.out.println("Demandez la conection en disant <<salut>>");
		 monClient.connectPourJouer(Lire.S());
		 System.out.println("SERVEUR répond: "+ monClient.attendreReponse());
		 reponse = Lire.S();
		 if(reponse == "oui"){
		 	monClient.connectPourJouer(reponse);
		 	monClient.clientJoue();
		 }
		   
		   //jeu(maChaussette);
		   
		   //maChaussette.finalize();//descobrir por que não está funcionando
	}
	
	
}
