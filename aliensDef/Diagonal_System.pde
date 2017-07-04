class diagonalSystem {
  ArrayList diagonales;

  diagonalSystem() {
    diagonales = new ArrayList();
  }

  void actu() {
    //For que recorre toda la arraylist
    for (int i = 0; i < diagonales.size (); i++) {
      //Sacamos un objeto y lo metemos en 'a'
      diagonal a = (diagonal) diagonales.get(i);
      
      //Actualizamos a
      a.actu();
      
      //Comprobamos si se tiene que borrar
      if (a.pos.y > height) {
        diagonales.remove(i);
        n--;
      }
    }
  }

  //Funcion para generar una diagonal y añadirla a la arraylist
  void anyadir() {
    color colors = color(random(225), random(225), random(225));
    float size = random(0.5, 10);
    float fvel = random(0.5, 5);
    float ancho = random(1, 3);
    float trans = random(50, 255);
    
    PVector pos = new PVector(random(-200, width), random(-200, height));
    PVector pos2 = new PVector(pos.x+size, pos.y+size);
    PVector vel = new PVector(fvel, fvel);
    
    diagonales.add(new diagonal(pos, pos2, vel, colors, ancho, trans));
  }
}