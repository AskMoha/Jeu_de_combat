void tete() {
  if (vieperso1>75) {
    image(gokutete200, 15, 5);// quand la vie du personnage est comprise entre 200 et 75, son visage est montré confiant à côté de la barre de vie
  } else {
    image(gokutete75, 15, 5);// sinon si elle est comprise entre 75 et 0 il est blessé
  }

  if (vieperso2<-75) {
    image(trunkstete200, 925, 5);// la même pour le perso 2
  } else {
    image(trunkstete75, 925, 5);
  }
  image(Prenomgoku, 85, 25);// le nom dans  la barre de vie
  image(Prenomtrunks, 615, 25);
}