import processing.serial.*; 
 
Serial myPort;    // The serial port
PFont myFont;     // The display font
String valX;
String valY;
String[] data;
int lf = 10;      // ASCII linefeed 
 
void setup() { 
  size(400,400);
  
  // You'll need to make this font with the Create Font Tool 
  //myFont = loadFont("ArialMS-18.vlw"); 
  //textFont(myFont, 18); 
  myPort = new Serial(this, "COM4", 9600); 
  myPort.bufferUntil(lf); 
} 
 
void draw() { 
  
   clear();
   background(255,255,255);
  
  if(valX != null && valY != null){
    text("X: " + valX, 0,10);
    text("Y: " + valY, 0,20);
    //ellipse(parseInt(valX),parseInt(valY),10,10);
    fill(0,parseInt(valX),0);
    //ellipse(parseInt(valX),125,10,parseInt(valX));
    //ellipse(parseInt(valX),125,10,10);
    ellipse(parseInt(valX),parseInt(valY),10,10);
  }
} 
 
void serialEvent(Serial p) { 
  data = p.readString().split(","); 
  valX = data[0];
  valY = data[1];
  
} 