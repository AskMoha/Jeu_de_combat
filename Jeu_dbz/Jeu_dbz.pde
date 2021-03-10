//jeu experimental
boolean[] touches=new boolean[256];
   //tableau de boolean pour pouvoir appuyer sur plusieur touche en même temps(utile car 2 personnages)
int actionp1=0;// action en cours p1(utile pour effacer les images de déplacement)
int actionp2=0;// la même pour le personnage 2
int coup1; // le personnage est en train de donner un coup
int couppiedp1;//  le personnage 1 donne un coup de pied
int coup2;// personnage 2 donne un coup 
int couppiedp2;// perso 2 donne coup de pied
int deplacementXperso1=150;//pour le deplacement en x du premier personnage
int deplacementYperso1=450;//pour le deplacement en y du premier personnage
int deplacementXperso2=800;//pour le deplacement en x du deuxieme personnage 
int deplacementYperso2=450;//pour le deplacement en y du deuxieme personnage
PImage background;//image de fond
PImage arretp1;//image a l'arrêt du perso 1
PImage volavantp1;// image quand perso 1 avance
PImage volarrierep1;// quand il recule
PImage arretinversp1;// quand il est a l'arrête mais est à droite de l'autre perso
PImage chargeenergie;// aura autour du perso quand il charge de l'energie
PImage combop1poing;// combo au poing du perso 1 
PImage comboinversp1poing;// combo au poing du perso 1 derriere l'autre perso
PImage combop1pied;//combo au pied du perso 1
PImage comboinversp1pied;//combo au pied du perso 1 derriere l'autre perso
PImage []combop1tablopoing;// tableau pour le combo (2 images)
PImage []comboinversp1tablopoing;// tableau pour le combo (2 images)
PImage []combop1tablopied;// tableau pour le combo (2 images)
PImage []comboinversp1tablopied;//tableau pour le combo (2 images)
int placeimagedutableau=2;// la place de l'image dans le tableau, 2 est completement transparent
int placeimagedutableau2=2;// la place de l'image dans le tableau, 2 est completement transparent 
PImage combop2poing;// combo du perso 2 
PImage comboinversp2poing;// combo perso 2 derriere ennmi
PImage combop2pied;// combo perso2 pied
PImage comboinversp2pied;// combo perso2 pied derriere l'ennemi
PImage []combop2tablopoing;// tableau pour le combo (2 images)
PImage []comboinversp2tablopoing;// tableau pour le combo (2 images)
PImage []combop2tablopied;// tableau pour le combo (2 images)
PImage []comboinversp2tablopied;// tableau pour le combo (2 images)
int placeimagedutableau3=2;// la place de l'image dans le tableau, 2 est completement transparent
int placeimagedutableau4=2;// la place de l'image dans le tableau, 2 est completement transparent
PImage arretp2;//image du perso 2 a l'arrêt
PImage volavantp2;// image du perso 2 quand il avance vers l'ennemi
PImage volarrierep2;// quand il s'éloigne de l'ennemi
PImage arretinversp2;//quand il est a l'ârret de l'autre coté de l'ennemi
PImage gokutete200;// visage a cote de la barre de vie de goku (pv entre 200et 75)
PImage gokutete75;// visage a cote de la barre de vie de goku(pv entre 75 et 0)
PImage trunkstete200;// visage a cote de la barre de vie de trunks (pv entre 200 et 75)
PImage trunkstete75;//visage a cote de la barre de vie de trunks (pv entre 75 et 0)
PImage Prenomgoku;//nom de goku sur la barre de vie
PImage Prenomtrunks;// nom de goku sur la barre de vie
PImage atkspe1;//atk special de goku
PImage atkspe2;// atk special de trunks
PImage atkspe2invers;// atk special de trunks mais derriere lennemi
PImage gokuko;//écran de fin quand trunks gagne
PImage trunksko;// écran de fin quand goku gagne
void setup() {
  size(1000, 500);
  smooth();
  background = loadImage("fond.jpg");//image de fond du combat
  arretp1=loadImage("arretgoku.png");
  arretinversp1=loadImage("arretgokuinvers.png");
  volavantp1=loadImage("volavantgoku.png");
  volarrierep1=loadImage("volarrieregoku.png");
  chargeenergie=loadImage("chargeenergie.png");
  combop1poing=loadImage("combop1poing.png");
  comboinversp1poing=loadImage("comboinversp1poing.png");
  combop1pied=loadImage("combop1pied.png");
  comboinversp1pied=loadImage("comboinversp1pied.png");
  combop2poing=loadImage("combop2poing.png");
  comboinversp2poing=loadImage("comboinversp2poing.png");
  combop2pied=loadImage("combop2pied.png");
  comboinversp2pied=loadImage("comboinversp2pied.png");
  gokutete200=loadImage("gokutete200.png");
  gokutete75=loadImage("gokutete75.png");
  trunkstete200=loadImage("trunkstete200.png");
  trunkstete75=loadImage("trunkstete75.png");
  Prenomgoku=loadImage("Prenomgoku.png");
  Prenomtrunks=loadImage("PrenomTrunks.png");
  atkspe1=loadImage("atkspe1.png");
  atkspe2=loadImage("atkspe2.png");
  atkspe2invers=loadImage("atkspe2invers.png");
  gokuko=loadImage("gokuko.jpg");
  trunksko=loadImage("trunksko.png");
  combop2poing.loadPixels();
  comboinversp2poing.loadPixels();
  combop2pied.loadPixels();
  comboinversp2pied.loadPixels();
  combop2tablopied= new PImage[2];//tableau pour le combo au pied du personnage 2 
  comboinversp2tablopied= new PImage[2];// tableau pour le combo au pied quand le perso 1 est derriere le perso 2 
  combop2tablopoing= new PImage[2];// tableau pour le combo au poing du perso 2 
  comboinversp2tablopoing= new PImage[2];// tableau pour le combo au pied quand le perso 1 est derriere le perso 2 
  for (int i=0; i<2; i++) {// variable pour les images du tableau
    combop2tablopoing[i]=combop2poing.get(i*70, 0, 70, 100);// on sépare les images en deux
    comboinversp2tablopoing[i]=comboinversp2poing.get(i*70, 0, 70, 100);// on sépare les images en deux
    combop2tablopied[i]=combop2pied.get(i*70, 0, 70, 100);// on sépare les images en deux
    comboinversp2tablopied[i]=comboinversp2pied.get(i*70, 0, 70, 100);// on sépare les images en deux
  }
  combop1poing.loadPixels();
  comboinversp1poing.loadPixels();
  combop1pied.loadPixels();
  comboinversp1pied.loadPixels();
  combop1tablopied= new PImage[2];//exactement la même chose que pour le personnage 2
  comboinversp1tablopied= new PImage[2];

  combop1tablopoing= new PImage[2];
  comboinversp1tablopoing= new PImage[2];
  for (int i=0; i<2; i++) {
    combop1tablopoing[i]=combop1poing.get(i*70, 0, 70, 100);
    comboinversp1tablopoing[i]=comboinversp1poing.get(i*70, 0, 70, 100);
    combop1tablopied[i]=combop1pied.get(i*70, 0, 70, 100);
    comboinversp1tablopied[i]=comboinversp1pied.get(i*70, 0, 70, 100);
  }
  arretp2=loadImage("arrettrunks.png");
  arretinversp2=loadImage("arrettrunksinvers.png");
  volavantp2=loadImage("volavanttrunks.png");
  volarrierep2=loadImage("volarrieretrunks.png");
}
void draw() { 
  affiche();
  vie();
  tete();
  energie();
  attaque();
  deplacement();
  special();
  collision();
  ia();
  fin();
  fill(0, 200, 0);
}
void keyPressed() {// boolean
  if (key<256)
    touches[key]=true;
}
void keyReleased() {
  if (key<256)
    touches[key]=false;
}
