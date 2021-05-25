package pratique;

public class T1 implements Runnable {
	int a = 0;
	public void run () {
		for (int i=0;i<10;i++){
			a = (int) (Math.random()*5+40);
			System.out.println("A vaut : "+a);
			Principale.e.setValue(a);
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
