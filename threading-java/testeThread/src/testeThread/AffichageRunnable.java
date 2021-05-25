package testeThread;

import utilensemjava.Lecture;

public class AffichageRunnable implements Runnable{
	int chiffre=0;
	public void run(){
		for(int i=100;i<200;i++){
			System.out.println(i);
		}

		chiffre = Lecture.lireEntier("taper le chiffre: ");
		for(int i=0;i<chiffre;i++){
			System.out.println(i);
		}
	}
	
}
