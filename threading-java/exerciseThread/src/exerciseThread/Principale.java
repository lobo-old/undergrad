package exerciseThread;

public class Principale {

	public static void main(String[] args){
		
		A runnAbleA = new A();
		B runnAbleB = new B();
		C runnAbleC = new C();
		
		Thread tA = new Thread(runnAbleA);
		Thread tB = new Thread(runnAbleB);
		Thread tC = new Thread(runnAbleC);
		//tA.start();
		//tB.start();
		tC.start();
		tC.stop();
	}
	
}
