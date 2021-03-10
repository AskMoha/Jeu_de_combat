int vieperso1=200;//variable de la vie du personnage1
int vieperso2=-200;//variable de la vie du personnage2
void vie () {
  rectMode(CORNER);
  rect(80, 20, vieperso1*3/2, 30);//barre de vie du personnage1
  rect(920, 20, vieperso2*3/2, 30);//barre de vie du personnage2
}