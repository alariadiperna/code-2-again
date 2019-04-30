float angle = 35;
float dist = 100;

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  colorMode(RGB);
  //background(0, 25, 51);
  colorMode(HSB, 360, 100, 100);
  
  float x = cos( radians(angle)) * dist;
  float y = sin( radians(angle)) * dist;
  
  fill(0, 0, 100);
  ellipse(250, 250, 3, 3);
  fill(angle, 100, 100);
  ellipse(x + 250, y + 250, 30, 30);
  ellipse(x + 125, y + 125, 30, 30);
  ellipse(x + 375, y + 375, 30, 30);
    if (keyPressed){
    if (key == 'n' || key == 'N') {
      angle += 1;
      angle %= 360;
    }
    if (key == 'm' || key == 'M') {
      angle -= 1;
      angle %= 360;
    }
    
  }
   
   
}
