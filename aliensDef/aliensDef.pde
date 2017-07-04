PImage[] tiles = new PImage[5];
float r1, r2, r3, n;
int nau, xnau, ynau = 350;
int nenemy = 16;
int punts = 0;
int estado = 1;
import ddf.minim.*;
Minim minim;
AudioPlayer player;
AudioPlayer kill;
AudioPlayer tkill;
Enemigo [] enemy = new Enemigo[nenemy];
shoot_fill shoot1;
diagonalSystem ds;
cshoot s;


void setup() {
  size(668, 400);
  tiles[0] = loadImage("alien1.png");
  tiles[1] = loadImage("alien3.png");
  tiles[2] = loadImage("nau.png");
  tiles[3] = loadImage("shoot.png");

  shoot1 = new shoot_fill(20, 100, 5);


  smooth();
  s = new cshoot();
  ds = new diagonalSystem();

  minim = new Minim(this);
  player = minim.loadFile("laser.wav");
  kill = minim.loadFile("firstblood.mp3");
  tkill = minim.loadFile("1.wav");

  for (int y=0; y<8; y++) {
    enemy[y] = new Enemigo (y*60, 30, 1);
  }
  for (int y=8; y<16; y++) {
    enemy[y] = new Enemigo ((y-8)*60, 60, 0);


    velx = 1;
    vely = 0;
    xnau=width/2-32;
    imageMode (CENTER);
  }
}

void draw() {
  switch(estado) {
  case 1:
    mainmenu();
    break;
  case 2:
    juego();
    break;
  case 3:
    gameover();
    break;
  case 4:
    exit();
    break;
  }
  fondo();
}

void juego() {
  background(0, 0, 0);
  for (int y=0; y<nenemy; y++) {
    enemy[y].actualizar(y+1);
  }
  image(tiles[2], xnau, ynau, 64, 64);
  textSize(20);
  fill(255);
  text("punts: "+punts, 20, 25);
  s.disparo();
}


void keyPressed() {
  if (keyCode == LEFT) {    
    xnau = xnau - 32;
  }

  if (keyCode == RIGHT) {    
    xnau = xnau + 32;
  }

  if ( key == ' ') {
    s.anyadir();
    player.play();
    player.rewind();
  }
}

void bajar() {
  for (int y=0; y<16; y++) {
    enemy[y].abajo();
  }
}