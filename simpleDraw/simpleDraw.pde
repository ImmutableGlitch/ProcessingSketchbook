void setup(){
  size(400,400);
  background(100);
}

void draw(){
  stroke(255);
  // Hold mouse to draw
  if(mousePressed){
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}

void keyPressed(){
  // spacebar to clear screen
  if(key == ' '){
    background(100);
  }
}