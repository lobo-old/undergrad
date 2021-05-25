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

//Socket pour le client qui h�rite de MesSockets
public class SocketClient extends MesSockets{

  //Constructeur d'une socket pour le client
  //Il doit connaitre l'identifiant du serveur(nom machine+num�ro d'application)
  //Cette m�thode peut lever SocketException et UnknownHostException
  public SocketClient(String nomServeur, int numport) throws Exception {
    tuyau=new DatagramSocket();
    //encode le nom du serveur sous une forme
    //d'une adresse compr�hensible par le syst�me
    adrCorrespondant = InetAddress.getByName(nomServeur);
    portCorrespondant = numport;
  }

}

