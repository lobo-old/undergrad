package testeThread;

public class MonThread extends Thread{

	
	public void run(){
		
		for(int i=1;i<100;i++){
			
			System.out.println(i);
		}
		
	}
	
	public static void threadsActifs(){
		Thread[] tActifs = new Thread[Thread.activeCount()];
		int n = Thread.enumerate(tActifs);
		for(int i=0;i<n;i++){
			System.out.println("Le thread " + i + " est " + tActifs[i].getName() + "\n");
		}
	}
	
}
