void deplacement() {
  if (touches['z'] && actionp1==0) {// deplacement en haut, actionp1 pour empecher le mouvement lors d'une action
    if (dist(deplacementXperso1, deplacementYperso1-5, deplacementXperso2, deplacementYperso2)>100) // empecher la collision entre les deux
      deplacementYperso1=deplacementYperso1-5;
  }
  if (touches['s']  && actionp1==0) {// deplacement en bas
    if (dist(deplacementXperso1, deplacementYperso1+5, deplacementXperso2, deplacementYperso2)>100)
      deplacementYperso1=deplacementYperso1+5;
  }
  if (touches['q']  && actionp1==0) {// deplacement a gauche
    if (dist(deplacementXperso1-5, deplacementYperso1, deplacementXperso2, deplacementYperso2)>70)
      deplacementXperso1=deplacementXperso1-5;
  }
  if (touches['d']  && actionp1==0) {// deplacement a droite
    if (dist(deplacementXperso1+5, deplacementYperso1, deplacementXperso2, deplacementYperso2)>70)
      deplacementXperso1=deplacementXperso1+5;
  }
  //perso2, exactement la même chose
  if (touches['8'] && actionp2==0&&atkspep2==0) {
    if (dist(deplacementXperso1, deplacementYperso1, deplacementXperso2, deplacementYperso2-5)>100)
      deplacementYperso2=deplacementYperso2-5;
  }
  if (touches['5'] && actionp2==0&&atkspep2==0) {
    if (dist(deplacementXperso1, deplacementYperso1, deplacementXperso2, deplacementYperso2+5)>100)
      deplacementYperso2=deplacementYperso2+5;
  }
  if (touches['4'] && actionp2==0&&atkspep2==0) {
    if (dist(deplacementXperso1, deplacementYperso1, deplacementXperso2-5, deplacementYperso2)>70)
      deplacementXperso2=deplacementXperso2-5;
  }
  if (touches['6'] && actionp2==0&&atkspep2==0) {
    if (dist(deplacementXperso1, deplacementYperso1, deplacementXperso2+5, deplacementYperso2)>70)
      deplacementXperso2=deplacementXperso2+5;
  }
}
