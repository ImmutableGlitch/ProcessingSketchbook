void setup(){
  size(600,600);
  background(150,220,255);
}

void draw(){
  
  fill(0,100,0);
  stroke(0);
  rectMode(CENTER);
  line(pmouseX,pmouseY,mouseX,mouseY);
}

void mousePressed(){
  background(150,220,255);
}