//used some of my own previous code

float ballA;
float ballB;

float ballSize;

float speedX;
float speedY;

void setup() {
  size(800,800);
  
  noStroke();
  
  ballA = width/2;
  ballB = height/2;
  
  speedX = random(-5,5);
  speedY = random(-5,5);
  
  ballSize = 75;
}

void draw() {
 float r = map(ballA, 0, width, 0, 255);
  float g = map(ballB, 0, height, 0, 255);
  
  
  background(255);
  fill(r,g,150);
  ellipse(ballA, ballB, ballSize, ballSize);
  
  ballA += speedX;
  ballB += speedY;
  
  if (ballA > width - ballSize/2 || ballA < ballSize/2) {
    ballA -= speedX;
    speedX = -speedX;
  }
  
  if (ballB > height - ballSize/2 || ballB < ballSize/2) {
    ballB -= speedY;
    speedY = -speedY;
  }
  
}

void mousePressed() {
  ballA = mouseX;
  ballB = mouseY;
  
  speedX = random(-5,5);
  speedY = random(-5,5);
  
}

void mouseDragged() 
{
  ballA = mouseX;
  ballB = mouseY;
  
  speedX = random(-5,5);
  speedY = random(-5,5);
}
