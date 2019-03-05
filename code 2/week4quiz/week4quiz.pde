//using some of my previous work for reference (like the i++ formula, etc)
int size = int(random(20,90)); 
color[][] grid = new int[size][size]; 
int[][] op = new int[size][size]; 

void setup(){
  size(800, 800); 
  noStroke(); 
  
  for (int i = 0; i< size; i++){
    for (int j = 0; j< size; j++){
      grid[i][j] = color(random(0,140), random(200,255), random(100,255)); 
      op[i][j]= 255; 
    }
  }
}

void draw(){
  background(0); 
  for(int i = 0; i< size; i++){
    for(int j = 0; j< size; j++){
      fill(grid[i][j], op[i][j]);
      ellipse(i*size, j*size, size, size);
      
      if(mousePressed){
        if(mouseX>=(i*size) && mouseX<((i+1)*size) && mouseY>=(j*size) && mouseY < ((j+1)*size)){
          op[i][j] = 0; 
        }
        else{
          op[i][j] = 255; 
        }
      }
    }
  }
}
