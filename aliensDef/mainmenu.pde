float distancia;
boolean click (int x, int y, int width, int height) {
  if (mouseX >= x && mouseY<= x+width && mouseY>= y && mouseY<= y+height) {
    return  true;
  } else return false;
}

void mouseClicked() {
  switch(estado) {
    case 1:
   if(click(90, 50, 500, 100)){
     estado = 2;
   }
    if(click(90, 150, 500, 100)){
     estado = 4;
   }
    break;
    case 2:
   
    break;
    case 3:
   
    break;
  }

}
void mainmenu() {
  background(0, 0, 0);
  fill(255, 255, 255);
  rect(90, 50, 500, 100);
  fill(0);
  textSize(50);
  text("Play", 290, 110);

  fill(0, 0, 255);
  rect(90, 150, 500, 100);
  fill(0);
  textSize(50);
  text("EXIT", 290, 200);
}