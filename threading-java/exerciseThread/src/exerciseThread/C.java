package exerciseThread;

public class C implements Runnable {
	
	public void run(){
		
		while(true){
			System.out.println("truc");
			try {
				Thread.sleep(2000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
