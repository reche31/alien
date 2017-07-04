void fondo() {
  //Pintar el fondo con transparencia
  fill(0,30);
  noStroke();
  rect(0, 0, width, height);
  
  //Si hay menos de 101 objetos añadimos otro
  while(n < 101){
    ds.anyadir();
    n++;
  }
  
  //Actualizamos todos los objetos
  ds.actu();
} 