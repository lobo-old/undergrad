package testeSatellites;

/**
 * <p>Titre : Ensemble d'objets permettant de communiquer</p>
 * <p>Description : bas� sur les sockets....</p>
 * <p>Copyright : Copyright (c) 2003</p>
 * <p>Soci�t� : </p>
 * @author FSL,XR,MD
 * @version 1.0
 */

import java.io.*;
import java.net.*;
import java.util.*;

//Classe abstraite d�finissant les attributs et les m�thodes de communication
public abstract class MesSockets {

  //Canal de communication
  protected DatagramSocket tuyau;
  //adresse de la machine destinataire des message
  protected InetAddress adrCorrespondant;
  //identifiant de l'application distante sur la machine destinataire
  protected int portCorrespondant;
  
  protected int MAX_DATA = 51200;
  
  //methode qui permet d'envoyer un fichier
  protected void envoyerFichier(FileInputStream stream) throws IOException {
	  //cr�ation du tableau d'octets permettant de stocker le fichier
	  byte[] fileData = new byte[MAX_DATA];
	  //transformation du fichier en flux d'octets
	  stream.read(fileData);
	  //cr�ation d'un paquet permettant de stocker le fichier
	  DatagramPacket datagramFile = new DatagramPacket(fileData, fileData.length, adrCorrespondant, portCorrespondant);
	  //l'envoi du paquet dans le canal
	  tuyau.send(datagramFile);
  }
  
  protected void lireFichier(FileOutputStream stream) throws IOException {
	  //cr�ation du tableau d'octets permettant de stocker le fichier
	  byte[] fileData = new byte[MAX_DATA];
	  //cr�ation du paquet qui va receoir le fichier
	  DatagramPacket receivePacket = new DatagramPacket(fileData, fileData.length);
	  //r�ception du fichier
	  tuyau.receive(receivePacket);
	  //transformation du fichier en flux d'octets
	  stream.write(receivePacket.getData(), 0, receivePacket.getLength());

  }

  //méthode qui permet d'envoyer un tableau d'octets sur réseau
  //(seules les octets peuvent transiter sur le réseau)
  protected void ecrireByte(byte[] donnee) throws IOException {
    //création du paquet contenant les données et l'identifiant du correspondant
    DatagramPacket paquet = new DatagramPacket(donnee, donnee.length, adrCorrespondant, portCorrespondant);
    //envoi du paquet dans le canal
    tuyau.send(paquet);
  }


  //méthode qui permet de recevoir un tabvleau d'octets par le réseau
  //(seules les octets peuvent transiter sur le réseau)
  protected byte[] lireByte() throws IOException {
    //création du tableau d'octet permettant de stocker les données
    byte[] donnee= new byte[this.MAX_DATA];
    //création du paquet permettant de stocker le message
    DatagramPacket paquet= new DatagramPacket(donnee,donnee.length);
    //réception du message dans le paquet
    tuyau.receive(paquet);
    //récupération de l'adresse de l'émetteur
    adrCorrespondant = paquet.getAddress();
    //récupération de l'identifiant de l'application sur la machine destinataire
    portCorrespondant = paquet.getPort();
    //création d'un tableau à la taille des données récupérées
    byte[] resultat=new byte[paquet.getLength()];
    //recopie des données dans le tableau
    for (int i=0;i<resultat.length;i++){
      resultat[i]=donnee[i];
    }
    return resultat;
  }


  //méthode permettant d'envoyer une chaine de caractères
  public void ecrireChaine(String message) throws IOException {
    ecrireByte(message.getBytes());
  }

  
  //méthode permettant de recevoir une chaine de caractères
  public String lireChaine() throws IOException {
    return new String(lireByte());
  }


  //méthode permettant d'envoyer un entier
  public void ecrireEntier(int message) throws IOException {
    //transformation de l'entier sous forme de chaine de caractère
    ecrireChaine(Integer.toString(message));
  }

  //méthode permettant de recevoir un entier
  public int lireEntier() throws IOException {
    //transformation de l'entier sous forme de chaine de caractère
    return Integer.parseInt(lireChaine());
  }
  //permet de liberer le canal lors de la destruction de l'objet
  protected void finalize() throws Throwable{
    tuyau.close();
    super.finalize();
  }

}