package testMutex;

public class Incremeteur implements Runnable {
	// para a parte do syncronized
	/*
	CompteBanque com;
	
	public Incremeteur(CompteBanque compte){
		this.com = compte;
	}
	*/
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		for(int i=0;i<1000;i++){
			//acessando o valor do elemento diretamente(objeto est�tico)
				Main2.compte.valeur++;
			
			//chamando o m�todo da classe(usando syncronized)
				//com.incremeteur(0);   N�O TO SABENDO
			
			
			System.out.println("valeur compte: " + Main2.compte.valeur);
		}
	}

}
