package testeSatellites;

import utilensemjava.Lire;

public class MainSatellite {

	public static void main(String[] args) throws Exception {
		byte identifiant[] = {0};
		String IPsatelliteSuivant;
		Satellite monSatellite;
		String nomSatellite;
		
		//definindo diretamente valores
		identifiant[0] = 1;
		nomSatellite = "sat1";
		int portSatellite = 9200;
		int portSatelliteSuivant = 9400;
		IPsatelliteSuivant = "192.168.87.126";
		
		//inserindo valores na hora
		/*
		System.out.println("Le nombre d'identifiant du satellite: ");
		identifiant[0] = Lire.b();
		nomSatellite = String.format("sat%d", identifiant[0]);
		
		System.out.println("port satellite: ");
		portSatellite = Lire.i();
		
		System.out.println("port satellite suivant");
		portSatelliteSuivant = Lire.i();
		
		System.out.println("IP satellite suivant: ");
		IPsatelliteSuivant = Lire.S();
		*/
		
		monSatellite = new Satellite(identifiant, nomSatellite,portSatellite,portSatelliteSuivant,IPsatelliteSuivant);
		System.out.println(monSatellite.toString()); 
		//monSatellite.envoyerImage();
		//monSatellite.recevoirImage();
		monSatellite.RunSatellite();
	}

}
