//haven't used processing in over a year :( be nice!!

float x; 
float y; 
float speed1; 
float speed2; 
int rad; 

void setup(){
  size(800,800);
  speed1 = 7; 
  speed2 = 6; 

  x = width/2; 
  y = height/2;
  
  rad = 100; 
};

void draw(){
  fill(250); 
  rect(0, 0, width, height); 
  x = x + speed1;
  y = y + speed2; 

  
  noStroke();
  fill(100,140,90);
  ellipse(y,400, rad, rad); 
  
  
   if( x>= (width) || x<= rad/2){
    speed1 = speed1 *-1; }
    
  if( y >= (height) || y <= rad/2){
    speed2 = speed2 *-1; 
 }
  
  
};
