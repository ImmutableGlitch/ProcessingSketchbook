import processing.serial.*;

Serial myPort; 

void setup() { 
fill(0,0,255); size(1920, 1080); myPort = new Serial(this, "COM4", 9600);
}

void draw() {
if (keyPressed && (keyCode == LEFT)) {; myPort.write (20); fill(#ff0000); rect(0,0,1920, 1080); delay (10); }
if (keyPressed && (keyCode == DOWN)) { ; myPort.write (40); fill(#ffff00); rect(0, 0, 1920, 1080); delay(10); }
if (keyPressed && (keyCode == RIGHT)) { ; myPort.write (60); fill(#00ff00); rect(0, 0, 1920, 1080); delay(10); }
if (keyPressed && (keyCode == UP)) { ; myPort.write (80); fill(0,0,0); rect(0, 0, 1920, 1080); delay(10); } 
}
