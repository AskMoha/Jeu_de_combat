void collision() {
  if (deplacementXperso1>width-75) {// pour que le perso ne sorte pas de la carte 
    deplacementXperso1=width-75;
  }
  if (deplacementXperso1<width-995) {
    deplacementXperso1=width-995;
  }
  if (deplacementYperso1>height-105) {
    deplacementYperso1=height-105;
  }
  if (deplacementYperso1<height-420) {
    deplacementYperso1=height-420;
  }
  if (deplacementXperso2>width-75) {
    deplacementXperso2=width-75;
  }
  if (deplacementXperso2<width-995) {
    deplacementXperso2=width-995;
  }
  if (deplacementYperso2>height-105) {
    deplacementYperso2=height-105;
  }
  if (deplacementYperso2<height-420) {
    deplacementYperso2=height-420;
  }
}