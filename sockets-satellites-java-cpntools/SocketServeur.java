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
public class SocketServeur extends MesSockets{

  //Constructeur d'une socket pour le serveur
  //pour que le client puisse le contacter, il impose le numéro d'identifiant
  public SocketServeur(int numport) throws SocketException {
    tuyau=new DatagramSocket(numport);
  }

}
