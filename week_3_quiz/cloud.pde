//cloud incomplete

class Cloud{
   PVector position; 
  PVector velocity; 
  PVector acceleration; 
  Cloud(){
    acceleration = new PVector(0, 0.05); 
    velocity = new PVector(random(-1, 1), random(-2, 0)); 
    position = new PVector(150, -50); 
  }
  
  void update(){
    velocity.add(acceleration); 
    position.add(velocity); 
  }
  
  void display(){
  fill(255,255,255,150);
  ellipse(50,30,100,50);
  ellipse(10,50,50,30);
  ellipse(80,50,50,30);
  }
  

}
