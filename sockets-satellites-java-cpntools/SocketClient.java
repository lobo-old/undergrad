package testeSatellites;

/**
 * <p>Titre : Ensemble d'objets permettant de communiquer</p>
 * <p>Description : basé sur les sockets....</p>
 * <p>Copyright : Copyright (c) 2003</p>
 * <p>Société : </p>
 * @author FSL,XR,MD
 * @version 1.0
 */

import java.io.*;
import java.net.*;
import java.util.*;

//Socket pour le client qui hérite de MesSockets
public class SocketClient extends MesSockets{

  //Constructeur d'une socket pour le client
  //Il doit connaitre l'identifiant du serveur(nom machine+numéro d'application)
  //Cette méthode peut lever SocketException et UnknownHostException
  public SocketClient(String nomServeur, int numport) throws Exception {
    tuyau=new DatagramSocket();
    //encode le nom du serveur sous une forme
    //d'une adresse compréhensible par le système
    adrCorrespondant = InetAddress.getByName(nomServeur);
    portCorrespondant = numport;
  }

}

