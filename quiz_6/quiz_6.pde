ArrayList<Circ> circle;
int circc = 5;
float angleOffset = 0;
float radius = 300;

void setup(){
size (700, 700);
background(0);

circle = new ArrayList<Circ>();

  for(int i = 0; i < circc; i++){
    circle.add(new Circ());
  }

}

void draw(){
  
  for(int i = 0; i < circc; i++){
    //how do I make this a stable rotation??
    float tx = width/random(0,4) + sin(radians(angleOffset + frameCount*1 + 360/(i+1)))*radius;
    float ty = height/random(0,2) + cos(radians(angleOffset + frameCount*0.01 + 360/(i+1)))*radius;
    
    //float tx = width/2 + sin(radians(angleOffset + frameCount*1 + 360/(i+1)))*radius;
    //float ty = height/2 + cos(radians(angleOffset + frameCount*0.01 + 360/(i+1)))*radius;
 //having trouble making the circles start at different points   
   circle.get(i).setPos(new PVector(tx, ty)); 
   
   circle.get(i).run();
  }
  
  
}
