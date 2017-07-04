int velx = 1, vely = 0;
int x, w, h;
boolean primeraSangre = true;

class Enemigo {
  boolean viuom = true;
  float distancia;
  int x=0, y;
  int tipo;
  int vida;

  Enemigo(int ex, int ey, int etipo) {
    x = ex;
    y = ey;
    tipo = etipo;
    if (tipo == 0) vida = 1;
    if (tipo == 1) vida = 2;
  }

  void actualizar(int n) {
    x=x+velx;
    y=y+vely;
    println( x + " " +y);
    if (viuom) {
      image(tiles[tipo], x, y, 32, 32);
    }

    if (x>(width-32) && viuom) {
      velx = -1;
      bajar();
    }

    if (x<0 && viuom) {
      velx = 1;
      bajar();
    }

    if ( viuom == true) {
      if (s.colision(x, y) == true) {
        vida--;
        if (vida == 0) viuom = false;

        punts++;

        if (primeraSangre==true) {
          kill.play();
          kill.rewind();
          primeraSangre=false;
        } else {
          tkill.play();
          tkill.rewind();
        }
      }
    }
  }
  void abajo() {
    y = y + 20;
  }
}