package tpJukebox;

import utilensemjava.Lecture;

public class Main2 {
	static final int n = 10;
	public static void main(String[] args) throws InterruptedException{
		
		int choix = -2;
		int musiqueCourant = -1;
		int threadsCrees = 0;
		
		Thread[] tSons = new Thread[n];
		int[] threadMusique = new int[] {-1,-1,-1,-1,-1,-1,-1,-1,-1,-1};
		 
		String[] nomMusiques = new String[] {"oiseau.wav","vache.wav"};//0 - oiseau, 1 - vache
		Runnable[] runMusiques=new Runnable[n];
		for(int i=0;i<nomMusiques.length;i++)
				runMusiques[i] = new JoueurSon(nomMusiques[i]);
		
		
		//Thread tOiseau = new Thread(oiseau);
		//Thread tVache = new Thread(vache);
		
		while(choix != -1){
			System.out.println("Que voulez vous faire?\n\n1 - Jouer Son\n2 - Arreter le son courant\n3 - Mettre en pause le son courant, jouer en autre son, et finir le son precedent\n\n");
			choix = Lecture.lireEntier();
			System.out.println(choix);
			switch(choix){
				case 1:
					System.out.println("0 - Oiseau\n1 - Vache\n\n");
					choix = Lecture.lireEntier();
					//System.out.println(choix);
					switch(choix){
						case 0:
							for(int i=0;i<n;i++){
								if(threadMusique[i] == -1){
									tSons[i] = new Thread(runMusiques[choix]);
									tSons[i].start();
									threadMusique[i]=choix;
									musiqueCourant = choix;
								}
							}							
						break;
						case 1:
							new Thread(runMusiques[choix]).start();;
						break;
					}
				break;
				case 2:
					//System.out.println(choix);
					//tSons[]
					//tOiseau.stop();;
					//tVache.stop();
				break;
				case 3:
					System.out.println("0 - Oiseau\n1 - Vache\n\n");
					choix = Lecture.lireEntier();
					//System.out.println(choix);
					switch(choix){
						case 0:
							//tVache.suspend();
							//tOiseau.start();
							//tOiseau.join();
							//tVache.resume();
						break;
						case 1:
							//tOiseau.suspend();
							//tVache.start();
							//tVache.join();
							//tOiseau.resume();
						break;
					}
				break;
			} 
			
		}
	}
}
