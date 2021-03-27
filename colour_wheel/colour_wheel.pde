float hue;
color c;
float r;
float g;
float b;
float xPos;
float yPos;
 
void setup() {
  size(800, 450);
}
 
void draw() {
  background(250,200,0);
  
  translate(width/2, height/2);
  float a = atan2(mouseY-height/2, mouseX-width/2);
  text(a,10,70);
  rotate(a);
  
  // Draw a rectangle with translation and rotation above
  rect(0, -5, 60, 10);
}