package testMutex;

public class Decremeteur implements Runnable {
	//para a parte do syncronized
	/*
	CompteBanque com;
	
	public Decremeteur(CompteBanque compte){
		this.com = compte;
	}
	*/
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		for(int i=0;i<1000;i++){
			
			//acessando o valor do elemento diretamente(objeto estático)
				Main2.compte.valeur--;
			
			//chamando o método da classe(usando sycronized)
				//com.decremeteur(0); NÃO TO SABENDO
			
			System.out.println("valeur compte: " + Main2.compte.valeur);
		}
	}

}
