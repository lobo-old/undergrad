package testMutex;

public class Compteur implements Runnable{

	@Override
	public void run() {
		//int ms = 300;
		for(int i=0;i<10;i++){
				//ms = (int)(Math.random()*1000);
				//System.out.println("Je suis le Thread :" + Thread.currentThread().getName());
				/*
				try {
					Thread.sleep(ms);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
			}
			*/
				System.out.println("Je suis le Thread: " + Thread.currentThread().getName() + " et j'utilise la valeur: " + Main.ordreArrivee);
				Main.ordreArrivee++;
		}
		
		
	}
	
}
