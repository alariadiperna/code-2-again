//could not get gif to load
//I feel like I can't progress past this point
PImage photo;

void setup() {
  size(700, 700);
  photo = loadImage("mario.gif");
}

void draw() {
  image(photo, 350, 350);
}
