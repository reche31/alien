class cshoot {
  ArrayList shoot;
  cshoot() {
    shoot = new ArrayList();
  }
  boolean colision (int xshoot, int yshoot) {
    for (int i = 0; i < shoot.size (); i++) {
      shoot_fill a = (shoot_fill) shoot.get(i);
      if (dist(a.xshoot, a.yshoot, xshoot, yshoot)<10) {
        shoot.remove(i);
        return  true;
      }
    }
    return false;
  }

  void disparo() {
    for (int i = 0; i < shoot.size (); i++) {
      //Sacamos un objeto y lo metemos en 'a'
      shoot_fill a = (shoot_fill) shoot.get(i);

      //Actualizamos a
      a.actu();
    }
    for (int i = 0; i < shoot.size (); i++) {
      shoot_fill a = (shoot_fill) shoot.get(i);
      if (a.yshoot<25) {
        shoot.remove(i);
      }
    }
  }

  void anyadir() {
    shoot.add(new shoot_fill(xnau, ynau, 5));
  }
}