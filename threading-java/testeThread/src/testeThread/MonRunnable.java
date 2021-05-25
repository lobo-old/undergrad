package testeThread;

public class MonRunnable implements Runnable {
	
	public void run(){
		
		for(int i=1;i<100;i++){
			
			System.out.println(i);
		}
		
	}
}
