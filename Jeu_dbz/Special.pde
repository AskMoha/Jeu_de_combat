int atkspe;// le perso 1 fait son attaque special
int atkspep2;// le perso 2 fait son attaque special
void special () {
  if (touches ['c'] && energieperso1>101 && actionp1==0) {// touche pour faire l'attaque spe
    atkspe=1;
    energieperso1=energieperso1-30;// perd de l'energie en utilisant son attaque spe 
    image(atkspe1, deplacementXperso1-40, deplacementYperso1-25);// image pour l'attaque spe
    if (dist(deplacementXperso1, deplacementYperso1, deplacementXperso2, deplacementYperso2) <100) {// si il se rapproche assez de l'ennemi, il l'enleve de la vie
      vieperso2=vieperso2+1;
    }
  }
//perso 2 
  if (touches['1'] && energieperso2<-101) {// touche pour l'attaque spe du perso 2 
    if ( deplacementXperso2 < deplacementXperso1) {// quand il est a gauche du perso 2 
      energieperso2=energieperso2+150;//il doit gagner de l'energie car l'energie du perso 2 dès le depart est négative
      atkspep2=1;
      image(atkspe2, deplacementXperso2, deplacementYperso2);//image lors de l'attaque
      deplacementXperso2=deplacementXperso2+20;//son attaque spécial est un mouvement
      if (dist(deplacementXperso1, deplacementYperso1, deplacementXperso2, deplacementYperso2)< 70) {// pour pas qu'il rentre dedans
        deplacementXperso1=deplacementXperso2+70;
        if (dist(deplacementXperso1, deplacementYperso1, deplacementXperso2, deplacementYperso2)< 150) {//pour lui enlever de lavie temps qu'il le touche
          vieperso1=vieperso1-5;
        }
      }
    }
    // la même de l'autre côté 
    if ( deplacementXperso2 > deplacementXperso1) {
      energieperso2=energieperso2+150;
      atkspep2=1;
      image(atkspe2invers, deplacementXperso2, deplacementYperso2);
      deplacementXperso2=deplacementXperso2-20;
      if (dist(deplacementXperso1, deplacementYperso1, deplacementXperso2, deplacementYperso2)< 70) {
        deplacementXperso1=deplacementXperso2-70;
        if (dist(deplacementXperso1, deplacementYperso1, deplacementXperso2, deplacementYperso2)< 150) {
          vieperso1=vieperso1-5;
        }
      }
    }
  }
  if (touches ['c']==false) {
    atkspe=0;
  }

  if (touches['1']==false) {
    atkspep2=0;
  }
}