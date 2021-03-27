import processing.serial.*;

Serial myPort;

void setup() 
{
  size(200, 200);
  String portName = Serial.list()[3];
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  background(255);

  //for(int i = 0; i<=50; i++){
  //  myPort.write(i + " " + i + " 0\n");
  //}       
  //for(int i = 50; i>=0; i--){
  //  myPort.write(i + " " + i + " 0\n");
  //} 
  
  //1,2,3 changes RGB
  if (mouseOverRect() == 1) { 
    background(255,0,0);                    
    myPort.write("255 0 0\n");
  } 
  else if(mouseOverRect() == 2) { 
    background(0,255,0);                      
    myPort.write("0 255 0\n");
  }
  else if(mouseOverRect() == 3) {
    background(0,0,255);               
    myPort.write("0 0 255\n");
  }

  fill(255,0,0);
  rect(90, 60, 20, 20);
  fill(0,255,0);
  rect(90, 90, 20, 20);
  fill(0,0,255);
  rect(90, 120, 20, 20); 
}

int mouseOverRect() { 
    if ((mouseX >= 90) && (mouseX <= 110) && (mouseY >= 60) && (mouseY <= 80)) {
        return 1;
    }
    else if ((mouseX >= 90) && (mouseX <= 110) && (mouseY >= 90) && (mouseY <= 110)){
        return 2;
    }
    else if ((mouseX >= 90) && (mouseX <= 110) && (mouseY >= 120) && (mouseY <= 140)){
        return 3;
    }
    else{
      return 0;
    }
}