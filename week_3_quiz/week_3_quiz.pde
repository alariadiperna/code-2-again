ArrayList<Drop> drops; 
ArrayList<Cloud> clouds; 

PVector origin; 
PVector gravity; 
void setup(){
  size(300, 600); 
  drops = new ArrayList<Drop>();   
  gravity = new PVector(0, .09); 
  clouds = new ArrayList<Cloud>(); 

  
}

void draw(){
  background(185,217,239,25);
  pushMatrix();
  fill(255,255,255,150);
  ellipse(50,30,100,50);
  ellipse(10,50,50,30);
  ellipse(80,50,50,30);
  popMatrix();
  noStroke();
  
  drops.add(new Drop()); 
  
  for (int i = 0; i< drops.size(); i++){
    Drop p = drops.get(i); 
    p.update(); 
    p.display(); 
    if(p.acceleration.y > 1.8){
      drops.remove(i); 
    }
  }
}
