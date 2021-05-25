package pratique;

public class Principale {
	static UnEntier e = new UnEntier(32);
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("e vaut : "+e.val);
		Runnable r1 = new T1();
		Thread thread1 = new Thread(r1);
		thread1.start();				
		//      On peut aussi écrire différemment
		new Thread(new T2()).start();
	}
}
