package pratique;

public class T2 implements Runnable {
	int a = 0;
	public void run () {
		while(Principale.e.intValue()!=42){
			Thread.yield();
		}
		System.out.println("La valeur vaut 42 !");
		for (int i=0;i<10;i++){
			a = (int) (Math.random()*5+40);
			Principale.e.setValue(a);
			Thread.yield();
		}
	}
}
