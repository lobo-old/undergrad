package testMutex;

public class Main {
	static int ordreArrivee = 0;//foi usada a ideia de variável global que será
								//compartilhada pelas três threads
	
	public static void main(String[] args){
		Runnable c1 = new Compteur();
		Runnable c2 = new Compteur();
		Runnable c3 = new Compteur();
		
		Thread t1 = new Thread(c1,"Comp 1");
		Thread t2 = new Thread(c2,"Comp 2");
		Thread t3 = new Thread(c3,"Comp 3");
		
		t1.start();
		t2.start();
		t3.start();
	}
}
