package tpJukebox;

public class Main {
	public static void main(String[] args) throws InterruptedException {
		Runnable oiseau = new JoueurSon("oiseau.wav");
		Runnable vache = new JoueurSon("vache.wav");
		
		Thread tOiseau = new Thread(oiseau);
		Thread tVache = new Thread(vache);
		
		System.out.println("state t1: " + tOiseau.getState() + "state t2: " + tVache.getState());
		
		tOiseau.start();
		
		System.out.println("state t1: " + tOiseau.getState() + "state t2: " + tVache.getState());
		
		tOiseau.join();
		
		System.out.println("state t1: " + tOiseau.getState() + "state t2: " + tVache.getState());
		
		tVache.start();
		
	}
}
