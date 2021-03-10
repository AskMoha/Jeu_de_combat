
void fin() {
  if (vieperso1<1) {
    image(gokuko, 0, 0);// image de fin quand le perso 1 meurt
    textSize(80);// taille du texte
    fill(255, 0, 0);// couleur du texte
    text("Miraï Trunks win!", width/5, 400);// position du texte et ce qu'il dit
    noLoop();
  }// pour arrêter 
  // la même pour le perso 2 
  if (vieperso2>-1) {
    image(trunksko, 0, 0);
    textSize(80);
    fill(255, 0, 0);
    text("Son Goku win!", width/5, 400);
    noLoop();
  }
}