class SButtons{
  PVector position; 
  PVector velocity;
  PVector acceleration;
   SButtons(){
    acceleration = new PVector(0, 0.05); 
    velocity = new PVector(random(-1, 1), random(-2, 0)); 
    position = new PVector(150, -50); 
  }
    void update(){
    velocity.add(acceleration); 
    position.add(velocity); 
  }
  void display(){
    fill(10,0,100,120); 
    ellipse(position.x, position.y, 8, 8); 
  }
  
}
