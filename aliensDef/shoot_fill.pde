class shoot_fill {
  int xshoot, yshoot, velY;

  shoot_fill(int xshoot, int yshoot, int velY) {
    this.xshoot = xshoot;
    this.yshoot = yshoot;
    this.velY = velY;
  }

  void actu() {
    image(tiles[3], xshoot, yshoot, 10, 10);
    yshoot = yshoot - velY;
  }
}