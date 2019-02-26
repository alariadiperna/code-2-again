class Circ {

  float sp = .73;
  float speed=.1, maxNumber= 102;
  float sine, x = 270, speed2=sp;
  float sine2, x2 = 270, speed3=((sp/3)*3);
  float z;
  float r;
  float r2;

  PVector pos;

  Circ() {
  }

  void setPos(PVector _pos) {
    pos = _pos.copy();
  }

  void run() {
    pushMatrix();

    r = random (16, 32);
    translate(pos.x-sine/r, pos.y-sine/r);
    z =z -.7;
    x+=speed2;
    x2+=speed3;
    sine = (1+sin(radians(x)))*maxNumber/2;
    sine2 = (1+sin(radians(x2)))*maxNumber/2;
    
    stroke(200);
    background(0);
    //frameRate(100);
    float size;
    size = maxNumber/4;
    fill(255);
    ellipse(sine/r*1.5, sine/r*1.5, size-sine/4, size+sine/4);
    fill(200);
    ellipse(sine/r*1.5, sine/r*1.5, size-sine/4, size+sine/4);
    fill(220);
    ellipse(sine/r*1.5, sine/r*1.5, size-sine/4, size+sine/4);
    fill(190);
    ellipse(sine/r*1.5, sine/r*1.5, size-sine/4, size+sine/4);
    fill(150);
    ellipse(sine/r*1.5, sine/r*1.5, size-sine/4, size+sine/4);
//want to add more circles but can't make them start at different points
    popMatrix();
  }
} 
