package testeSatellites;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.util.Arrays;

import javax.imageio.ImageIO;

import utilensemjava.Lire;

public class Satellite{
	
	//membros
	private SocketServeur satelliteServeur ;
	private SocketClient satelliteClient;
	private boolean droit;
	//pacote
	private String message;
	private int messageID;
	
	private byte identifiant;
	private String nomSatellite;
	private int portSatellite;
	private int portSatelliteSuivant;
	private String IPsatelliteSuivant;
	private int MAX_DATA;
	private int N_imag_recu;
	
	//get/set
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getMessageID() {
		return messageID;
	}

	public void setMessageID(int messageID) {
		this.messageID = messageID;
	}

	public String getNomSatellite() {
		return nomSatellite;
	}

	public void setNomSatellite(String nomSatellite) {
		this.nomSatellite = nomSatellite;
	}

	public int getPortSatellite() {
		return portSatellite;
	}

	public void setPortSatellite(int portSatellite) {
		this.portSatellite = portSatellite;
	}

	public int getPortSatelliteSuivant() {
		return portSatelliteSuivant;
	}

	public void setPortSatelliteSuivant(int portSatelliteSuivant) {
		this.portSatelliteSuivant = portSatelliteSuivant;
	}

	public String getIPsatelliteSuivant() {
		return IPsatelliteSuivant;
	}

	public void setIPsatelliteSuivant(String iPsatelliteSuivant) {
		IPsatelliteSuivant = iPsatelliteSuivant;
	}

	//construtor
	public Satellite(byte[] identifiant_,String nomSatellite_,int portSatellite_,int portSatelliteSuivant_,String IPsatelliteSuivant_) throws Exception{
		this.satelliteServeur = new SocketServeur(portSatellite_);
		this.satelliteClient = new SocketClient(IPsatelliteSuivant_,portSatelliteSuivant_);
		this.message = new String("Message");
		this.messageID = 0;
		
		this.droit = false;
		this.identifiant = identifiant_[0];
		this.nomSatellite =nomSatellite_;
		this.portSatellite = portSatellite_;
		this.portSatelliteSuivant = portSatelliteSuivant_;
		this.IPsatelliteSuivant = IPsatelliteSuivant_; 
		this.MAX_DATA = 51200;
		this.N_imag_recu = 0;
	}
	//destrutor
	//to string
	
	//métodos
	public void RunSatellite() throws IOException{
		System.out.println("Port du satellite: " + portSatellite);
		System.out.println("Port du satellite suivant: "+ portSatelliteSuivant);
		System.out.println("IP satellite suivant:  "+IPsatelliteSuivant);
		
		System.out.println(message);
		System.out.println(messageID);
		//satelite 1 possui o direito de começar a enviar
		if(this.identifiant == 1){
			this.droit = true;
		}else{
			this.droit = false;
		}
		
		while(true){
			if(this.droit){
				//enviar pacote
				System.out.println("L'identifiant du destinataire: ");
				this.messageID = Lire.i();
				System.out.println("Le message au destinataire: ");
				this.message = Lire.S();
				this.envoyerPaquet();
				this.droit = false;
			}else{
				//esperar pacote
				int paquetRecu = 0;
				while(paquetRecu != 1){
					paquetRecu = this.attendrePaquet();
				}
				
				if(this.messageID == this.identifiant){
					//a mensagem é para o satelite atual
					this.droit = true;
					//mostrar mensagem recebida
					//afficherMessageRecu()
					System.out.println("Message recu: " + this.message);
				}else{
					//mensagem não é para o atual, transmitir para o satelite seguinte
					this.envoyerPaquet();
					this.droit = false;
					System.out.println("Message retransmis au satellite suivant");
				}
			}
		}
		
	}
	

	@Override
	public String toString() {
		return "Satellite [satelliteServeur=" + satelliteServeur + ", satelliteClient=" + satelliteClient + ", droit="
				+ droit + ", message=" + message + ", messageID=" + messageID + ", identifiant="
				+ identifiant + ", nomSatellite=" + nomSatellite + ", portSatellite=" + portSatellite
				+ ", portSatelliteSuivant=" + portSatelliteSuivant + ", IPsatelliteSuivant=" + IPsatelliteSuivant + "]";
	}

	private void envoyerPaquet() throws IOException{
		String strPaquet = String.format("%d%s",this.messageID,this.message);
		//this.satelliteClient.ecrireEntier(this.messageID);
		//int i = 0;
		//this.satelliteClient.ecrireChaine(this.message);
		this.satelliteClient.ecrireChaine(strPaquet);
		//imagem
		//this.envoyerImage();
	}
	private int attendrePaquet() throws IOException{
		//this.messageID = satelliteServeur.lireByte();
		//this.message = satelliteServeur.lireChaine();
		
		int teste = 0;
		String stringTeste="0";
		//teste = satelliteServeur.lireEntier();
		//stringTeste = satelliteServeur.lireChaine();
		stringTeste = satelliteServeur.lireChaine();
		//imagem
		this.recevoirImage();
		teste = Integer.parseInt(stringTeste.substring(0, 1));
		stringTeste = stringTeste.substring(1,stringTeste.length());
		if(teste >4 && teste<=0){
			//this.messageID = satelliteServeur.lireByte();
			System.out.println("deu errado");
			return 0;
		}else{
			//System.out.println("deu certo" + teste + "   " + stringTeste);
			this.messageID = teste;
			this.message = stringTeste;
			return 1;
		}
	}
	
	public void envoyerImage() throws IOException{
			    
		//enviar imagem completa
	    //FileInputStream stream = new FileInputStream(new File("ufv.jpg"));
	    //this.satelliteClient.envoyerFichier(stream);
	    
	    //fragmentation des paquets
	      
	    FileInputStream fis = new FileInputStream(new File("ufv.jpg"));
	    //quantidade de pacotes necessária
	    //System.out.println(fis.available());
	    int nb_paquets= fis.available()/this.MAX_DATA;
	    if(fis.available()%this.MAX_DATA != 0)
	    	nb_paquets++;
	    byte[] paquet = new byte[this.MAX_DATA];
	    //this.satelliteClient.ecrireEntier(nb_paquets);;
	    System.out.println("nb_pq="+ nb_paquets);
	    for(int i=1; i<nb_paquets; i++){ 
	    	System.out.println(fis.available()); 
	    	fis.read(paquet);
	    	//for(int j=0;j<paquet.length;j++)
	    	//System.out.println(paquet[j]);
	    	this.satelliteClient.ecrireByte(paquet);
	    	
	    }
    	fis.read(paquet,0,fis.available());
    	System.out.println(fis.available());
    	this.satelliteClient.ecrireByte(paquet);
    	fis.close();
    	System.out.println("arquivo enviado");
	    
	}
	
	public void recevoirImage() throws IOException{
		//receber imagem completa
		//FileOutputStream outStream = new FileOutputStream("ufvNovo.jpg");
		//this.satelliteServeur.lireFichier(outStream);
		//outStream.flush();
		
		//fragmentation des paquets
		//quantidade de pacotes necessária
		//int nb_paquets = this.satelliteServeur.lireEntier();
		int nb_paquets = 3;
		System.out.println("nb_pq="+nb_paquets);
		
	    
		byte[] paquet = new byte[this.MAX_DATA];
	    byte[] ensemblePaquet = new byte[this.MAX_DATA*nb_paquets];
	    //System.out.println(nb_paquets);
	    
	    int paquetCont = 0;
	    for(int i=0; i<nb_paquets; i++){ 
	    	System.out.println("a");
	    	paquet = this.satelliteServeur.lireByte();
	    	System.out.println("b");
	    	for(int j=0;j<this.MAX_DATA;j++){
	    		ensemblePaquet[paquetCont] = paquet[j];
	    		paquetCont++;
	    	}
	    	System.out.println(String.format("paquet%d",i));
	    }
	    //ultimo pacote
	    /*paquet = this.satelliteServeur.lireByte();
	    for(int j=0;j<;j++){
    		ensemblePaquet[paquetCont] = paquet[j];
    		paquetCont++;
    	}*/
	    //escrever no arquivo
	    this.N_imag_recu++;
	    FileOutputStream outStream = new FileOutputStream(String.format("ufvNovo%d.jpg",this.N_imag_recu));
	    outStream.write(ensemblePaquet,0,ensemblePaquet.length);
	    outStream.flush();
	    outStream.close();
	    
	    
	}
	
}
