package testMutex;

public class CompteBanque {
	//atributos
	int valeur = 0;
	
	//construtor
	public CompteBanque(int valeurInitial){
		//super();
		this.valeur = valeurInitial;
	}
	
	//métodos
	synchronized void incremeteur(int valeurCompte){//ENTENDER SYCHRONIZED
		this.valeur++;
	}
	
	synchronized void decremeteur(int valeurCompte){
		this.valeur--;
	}
	
}
