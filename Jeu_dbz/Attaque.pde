
void attaque () {
  if  (coup1==0 && touches['e'] && actionp1==0&& couppiedp1==0&& placeimagedutableau2==2) {// attaque basique  
    coup1=1;// pour ne pas maintenir enfoncer la touche e 
    placeimagedutableau=placeimagedutableau+1;// animation
    if (dist(deplacementXperso1, deplacementYperso1, deplacementXperso2, deplacementYperso2) <80 &&atkspe==0) {//attaque basique a petite distance
      vieperso2=vieperso2+5;// variable pour la vie initialisé dans le void vie
    }
  }
  if (couppiedp1==0 && touches['r'] && actionp1==0 &&coup1==0&& placeimagedutableau==2) {// attaque au pied 
    couppiedp1=1;//pour ne pas maintenir la touche r
    placeimagedutableau2=placeimagedutableau2+1;//  animation
    if (dist(deplacementXperso1, deplacementYperso1, deplacementXperso2, deplacementYperso2)< 100)//attaque a plus grande distance que l'attaque basique
    {
      vieperso2=vieperso2+3;
    }
  }// mais qui fait moin de dégats

  if (touches['r']==false) {// pour pouvoir retourner a sa position normal quand on lache la touche
    couppiedp1=0;
  }
  if (touches['e']==false) {// pour pouvoir retourner a sa position normal quand on lache la touche
    coup1=0;
  }
  //poing
  if (placeimagedutableau==0 && deplacementXperso1 < deplacementXperso2 && placeimagedutableau2==2) {// quand le personnage 1 est a gauche du perso 2
    image(combop1tablopoing[placeimagedutableau], deplacementXperso1, deplacementYperso1);
  }
  if (placeimagedutableau==1 && deplacementXperso1 < deplacementXperso2&& placeimagedutableau2==2) {// quand il est a droite du perso 2 
    image(combop1tablopoing[placeimagedutableau], deplacementXperso1, deplacementYperso1);
  }
  if (placeimagedutableau==0 && deplacementXperso1 > deplacementXperso2&&placeimagedutableau2==2) {// quand il est a gauche du perso 2 
    image(comboinversp1tablopoing[placeimagedutableau], deplacementXperso1, deplacementYperso1);
  }
  if (placeimagedutableau==1 && deplacementXperso1 > deplacementXperso2&&placeimagedutableau2==2) {// quand il est a droite du perso 2 
    image(comboinversp1tablopoing[placeimagedutableau], deplacementXperso1, deplacementYperso1);
  } 
  //pied
  if (placeimagedutableau2==0 && deplacementXperso1 < deplacementXperso2 && placeimagedutableau==2) {
    image(combop1tablopied[placeimagedutableau2], deplacementXperso1, deplacementYperso1);
  }
  if (placeimagedutableau2==1 && deplacementXperso1 < deplacementXperso2&& placeimagedutableau==2) {
    image(combop1tablopied[placeimagedutableau2], deplacementXperso1, deplacementYperso1);
  }
  if (placeimagedutableau2==0 && deplacementXperso1 > deplacementXperso2&&placeimagedutableau==2) {
    image(comboinversp1tablopied[placeimagedutableau2], deplacementXperso1, deplacementYperso1);
  }
  if (placeimagedutableau2==1 && deplacementXperso1 > deplacementXperso2&&placeimagedutableau==2) {
    image(comboinversp1tablopied[placeimagedutableau2], deplacementXperso1, deplacementYperso1);
  } 

  if (placeimagedutableau>2) {// retour a 0 dans le tableau
    placeimagedutableau=0;
  }
  if (placeimagedutableau2>2) {// retour a 0 dans le tableau
    placeimagedutableau2=0;
  }


  // perso 2 


  // exactement la même chose
  if  (coup2==0 && touches['9'] && actionp2==0&& couppiedp2==0&& placeimagedutableau4==2) {  
    coup2=1;
    placeimagedutableau3=placeimagedutableau3+1;
    if (dist(deplacementXperso1, deplacementYperso1, deplacementXperso2, deplacementYperso2) <80) {
      vieperso1=vieperso1-5;
    }
  }
  if (couppiedp2==0 && touches['7'] && actionp2==0 &&coup2==0&& placeimagedutableau3==2) {
    couppiedp2=1;
    placeimagedutableau4=placeimagedutableau4+1;
    if (dist(deplacementXperso1, deplacementYperso1, deplacementXperso2, deplacementYperso2)< 100)
    {
      vieperso1=vieperso1-3;
    }
  }

  if (touches['7']==false) {
    couppiedp2=0;
  }
  if (touches['9']==false) {
    coup2=0;
  }
  if (placeimagedutableau3==0 && deplacementXperso1 > deplacementXperso2 && placeimagedutableau4==2) {
    image(combop2tablopoing[placeimagedutableau3], deplacementXperso2, deplacementYperso2);
  }
  if (placeimagedutableau3==1 && deplacementXperso1 > deplacementXperso2&& placeimagedutableau4==2) {
    image(combop2tablopoing[placeimagedutableau3], deplacementXperso2, deplacementYperso2);
  }
  if (placeimagedutableau3==0 && deplacementXperso1 < deplacementXperso2&&placeimagedutableau4==2) {
    image(comboinversp2tablopoing[placeimagedutableau3], deplacementXperso2, deplacementYperso2);
  }
  if (placeimagedutableau3==1 && deplacementXperso1 < deplacementXperso2&&placeimagedutableau4==2) {
    image(comboinversp2tablopoing[placeimagedutableau3], deplacementXperso2, deplacementYperso2);
  } 
  //pied
  if (placeimagedutableau4==0 && deplacementXperso1 > deplacementXperso2 && placeimagedutableau3==2) {
    image(combop2tablopied[placeimagedutableau4], deplacementXperso2, deplacementYperso2);
  }
  if (placeimagedutableau4==1 && deplacementXperso1 > deplacementXperso2&& placeimagedutableau3==2) {
    image(combop2tablopied[placeimagedutableau4], deplacementXperso2, deplacementYperso2);
  }
  if (placeimagedutableau4==0 && deplacementXperso1 < deplacementXperso2&&placeimagedutableau3==2) {
    image(comboinversp2tablopied[placeimagedutableau4], deplacementXperso2, deplacementYperso2);
  }
  if (placeimagedutableau4==1 && deplacementXperso1 < deplacementXperso2&&placeimagedutableau3==2) {
    image(comboinversp2tablopied[placeimagedutableau4], deplacementXperso2, deplacementYperso2);
  } 
  if (placeimagedutableau3>2) {
    placeimagedutableau3=0;
  }
  if (placeimagedutableau4>2) {
    placeimagedutableau4=0;
  }
}