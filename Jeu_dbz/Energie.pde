int energieperso1=100;//variable d'energie du personnage1
int energieperso2=-100;//variable d'energie du personnage2, négatif pour que le rectangle soit du bon côté
void energie () {
  fill(0, 0, 200);// bar d'energie bleu
  rectMode(CORNER);
  rect(80, 50, energieperso1/10, 10);//barre d'energie du personnage1
  rect(920, 50, energieperso2/10, 10);//barre d'energie du personnage2

  if (touches['f'] &&  deplacementXperso1 < deplacementXperso2 && placeimagedutableau==2 && placeimagedutableau2==2) { // charge l'energie
    actionp1=1;//empeche le mouvement
    energieperso1= energieperso1+10;//augmente l'energie
    image(chargeenergie, deplacementXperso1-20, deplacementYperso1-17 );//image pour le chargement de l'energie
    image(arretp1, deplacementXperso1, deplacementYperso1);// pour pas qu'il disparaisse
  }
  if (touches['f'] &&  deplacementXperso1 > deplacementXperso2&& placeimagedutableau==2 && placeimagedutableau2==2) { // la même mais derriere l'ennemi
    actionp1=1;
    energieperso1= energieperso1+10;
    image(chargeenergie, deplacementXperso1-20, deplacementYperso1-17);
    image(arretinversp1, deplacementXperso1, deplacementYperso1);// il n y a que ça qui change ici, pour que le perso 1 fait face aup perso 2
  }
  // la même chose pour le perso 2 
  if (touches['3'] &&  deplacementXperso1 > deplacementXperso2 && placeimagedutableau3==2 && placeimagedutableau4==2 ) {
    actionp2=1;
    energieperso2= energieperso2-10;
    image(chargeenergie, deplacementXperso2-20, deplacementYperso2-17);
    image(arretp2, deplacementXperso2, deplacementYperso2);
  }
  if (touches['3'] &&  deplacementXperso1 < deplacementXperso2 && placeimagedutableau3==2 && placeimagedutableau4==2) {
    actionp2=1;
    energieperso2= energieperso2-10;
    image(chargeenergie, deplacementXperso2-20, deplacementYperso2-17);
    image(arretinversp2, deplacementXperso2, deplacementYperso2);
  }
  if (energieperso1>2500) {// limite d'energie
    energieperso1=2500;
  }
  if (touches['f']==false) { // pour permettre le deplacement quand on relache f

    actionp1=0;
  }
  // la même pour perso 2 
  if (energieperso2<-2500) {
    energieperso2=-2500;
  }
  if (touches['3']==false) { 

    actionp2=0;
  }
}