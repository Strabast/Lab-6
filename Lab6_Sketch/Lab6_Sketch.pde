PImage pic;
PImage stamp;
boolean click;

void setup() {
  size(400, 400);
  pic = loadImage("monalisa.jpg");
  image(pic, 0, 0);
}

void draw() {
}

//Get 30x30 part of image
void keyPressed() {
  stamp = get(mouseX - 15, mouseY - 15, 30, 30);
  click = true; //There to make sure the program doesn't crash.
}

//Draws selected part of image
void mouseReleased() {
  if (click == true) {
    set(mouseX, mouseY, stamp);
  }
}
