int deplacementencoursperso1=0;// la variable du deplacement du perso 1 
int deplacementencoursperso2=0;// variable du deplacement du perso 2 
void affiche() {
  rectMode(CENTER);
  fill(200, 0, 0);// couleur de la barre de vie
  background(background);

  if ( deplacementXperso1 > deplacementXperso2 && actionp1==0&& placeimagedutableau==2) {// quand il attaque pas et qu'il est a gauche du perso 2 
    deplacementencoursperso1=3;// il est a l'arret
  }
  if ( deplacementXperso1 < deplacementXperso2 && actionp1==0&& placeimagedutableau==2) {// quand il est a droite du perso 2 
    deplacementencoursperso1=0;// et a l'arrêt
  }
  if (touches['q'] && actionp1==0) {// en deplacement sans charger son energie 
    deplacementencoursperso1=2;
    placeimagedutableau=2;//quand il ya un deplacement lors dun combo il se remet a zero
    placeimagedutableau2=2;//quand il ya un deplacement lors dun combo il se remet a zero
  }
  if (touches['d'] && actionp1==0) {//en deplacement sans charger son energie 
    deplacementencoursperso1=1;
    placeimagedutableau=2;//quand il ya un deplacement lors dun combo il se remet a zero
    placeimagedutableau2=2;//quand il ya un deplacement lors dun combo il se remet a zero
  }
  if ( deplacementencoursperso1==1 && actionp1==0 && placeimagedutableau==2 &&placeimagedutableau2==2 ) {// quand il ya pas de coup et qu'il vol vers l'avant a gauche du perso 2 
    image(volavantp1, deplacementXperso1, deplacementYperso1);
  }
  if (deplacementencoursperso1==2 && actionp1==0&&  placeimagedutableau==2 &&placeimagedutableau2==2 ) {// quand il ya pas de coup et qu'il vol vers l'arriere a gauche du perso 2
    image(volarrierep1, deplacementXperso1, deplacementYperso1);
  }
  if ( deplacementencoursperso1==0 && actionp1==0&&  placeimagedutableau==2 &&placeimagedutableau2==2) {// quand il ya pas de coup et qu'il vol vers l'avant a droite du perso 2
    image(arretp1, deplacementXperso1, deplacementYperso1);
  } 
  if ( deplacementencoursperso1==3 && actionp1==0&&  placeimagedutableau==2 &&placeimagedutableau2==2) {// quand il ya pas de coup et qu'il vol vers l'arriere a droite du perso 2
    image(arretinversp1, deplacementXperso1, deplacementYperso1);

    //perso 2, c'est exactement la même chose
  }
  if ( deplacementXperso2 > deplacementXperso1 && actionp2==0&&placeimagedutableau3==2) {
    deplacementencoursperso2=3;
  }
  if ( deplacementXperso2 < deplacementXperso1 && actionp2==0&&placeimagedutableau3==2) {
    deplacementencoursperso2=0;
  }
  if (touches['4']  && actionp2==0&& atkspep2==0) {
    deplacementencoursperso2=2;
    placeimagedutableau3=2;
    placeimagedutableau4=2;
  }
  if (touches['6'] && actionp2==0&& atkspep2==0) {
    deplacementencoursperso2=1;
    placeimagedutableau3=2;
    placeimagedutableau4=2;
  }
  if ( deplacementencoursperso2==1 && actionp2==0 &&placeimagedutableau4==2&& atkspep2==0) {
    image(volavantp2, deplacementXperso2, deplacementYperso2);
  }
  if (deplacementencoursperso2==2 && actionp2==0&&placeimagedutableau4==2&&atkspep2==0) {
    image(volarrierep2, deplacementXperso2, deplacementYperso2);
  }
  if ( deplacementencoursperso2==0 && actionp2==0&&placeimagedutableau4==2 &&placeimagedutableau3==2&&atkspep2==0) {
    image(arretp2, deplacementXperso2, deplacementYperso2);
  } 
  if ( deplacementencoursperso2==3 && actionp2==0&&placeimagedutableau4==2 && placeimagedutableau3==2&&atkspep2==0) {
    image(arretinversp2, deplacementXperso2, deplacementYperso2);
  }
}