import processing.serial.*;
Serial port;
float brightness = 0;
float foo = 0.0;

void setup(){
  size(500,200);
  port = new Serial(this, "COM3", 9600);
  //port.bufferUntil('\n');
}

void draw(){
  foo = map(mouseY, 0,200, 0,255);
  background(0,foo,0);
}

void mouseReleased() {
  port.write(String.format("0,%.0f,0\n",foo));
  print(String.format("0,%.0f,0\n",foo));
}