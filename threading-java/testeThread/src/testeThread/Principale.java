package testeThread;

public class Principale {

	public static void main(String[] args){
		
		//utilizando herança		
				/*
				MonThread t1 = new MonThread();
				MonThread t2 = new MonThread();
				
				t1.start();
				t2.start();
				//affciher les threads actifs
				MonThread.threadsActifs();
				
				*/
		
		//utilizando runnable
			/*
			MonRunnable runnAble1 = new MonRunnable();
			MonRunnable runnAble2= new MonRunnable();
			
			Thread t1 = new Thread(runnAble1);
			t1.start();
			
			Thread t2 = new Thread(runnAble2);
			t2.start();
			*/
		
		//
			/*
			AffichageRunnable runEntier = new AffichageRunnable();
			MonRunnable runAble1 = new MonRunnable();
			
			Thread tRunnAbleEntier = new Thread(runEntier);
			Thread tRunnAble = new Thread(runAble1);
			
			tRunnAbleEntier.start();
			tRunnAble.start();
			*/
		
	}
	
}
