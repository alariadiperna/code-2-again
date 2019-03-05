ArrayList<CButtons> cbutton;
ArrayList<SButtons> sbutton;
boolean buttonIsClicked = false;

void setup(){
  
  size(800, 800);
  noStroke();
    
  fill(0);
  smooth();
  cbutton = new ArrayList<CButtons>(); 
  sbutton = new ArrayList<SButtons>();
}

void draw(){

     xPos = width/2; 
  yPos = height/2; 
   cbutton.add(new CButtons()); 
  if (buttonIsClicked){
  for (int i = 0; i< cbutton.size(); i++){
    CButtons p = cbutton.get(i); 
    p.update(); 
    p.display(); 
    if(p.acceleration.y > 1.8){
      cbutton.remove(i); 
    }
   }
