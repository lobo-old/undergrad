package testMutex;

public class Main2 {
	static CompteBanque compte = new CompteBanque(10);
	
	public static void main(String[] args){
		
		//sem sincronização
			
			Runnable runIncremeteur = new Incremeteur();
			Runnable runDecremeteur = new Decremeteur();
			Thread t1 = new Thread(runIncremeteur);
			Thread t2 = new Thread(runDecremeteur);
			
			t1.start();
			t2.start();
			
		
		//com sincronização
			/*
			Runnable runIncremeteur = new Incremeteur(compte);
			Runnable runDecremeteur = new Decremeteur(compte);
			Thread t1 = new Thread(runIncremeteur);
			Thread t2 = new Thread(runDecremeteur);
			
			t1.start();
			t2.start();
			*/
	}
}
