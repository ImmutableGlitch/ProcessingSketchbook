int screenW = 600;
int screenH = 480;

Position camera = new Position(0,-2,0);

float direction = PI/8; //CCW around Z axis
float FOV = PI/2; // 90deg

Cube cube;
float x = 4, y = 0, z = 0;
float size = 1.2;
float speed = 0.1;

// https://www.instructables.com/id/3D-Wireframe-Engine-Using-Processing/
void setup(){
  size(600,480);
}

void draw(){
  background(0,0,0); // black
  stroke(255);       // white
  
  cube = new Cube(new Position(x,y,z), size);
  
  line(screenW/2 - 5, screenH/2, screenW/2 + 5 , screenH/2); // crosshair X
  line(screenW/2, screenH/2 - 5, screenW/2, screenH/2 + 5);  // crosshair Y
  
  for(int i = 0; i < cube.edges.length; i++){
    Position drawStart = pointOnCanvas(cube.edges[i].start);
    Position drawEnd   = pointOnCanvas(cube.edges[i].end);
    
    line(drawStart.X, drawStart.Y, drawEnd.X, drawEnd.Y);
  }
  
  float degrees = FOV * 180/PI;
  text("FOV: " + degrees,10,20);
}

void keyPressed(){
  // Change cube position
  if(key == 'w'){
    x-=speed;
  }else if(key == 'a'){
    y-=speed;
  }else if(key == 's'){
    x+=speed;
  }else if(key == 'd'){
    y+=speed;
  }else if(key == 'q'){
    z+=speed;
  }else if(key == 'e'){
    z-=speed;
  }
  
  // Change camera FOV or angle
  if(keyCode == UP){
    FOV-=speed;
  }else if(keyCode == LEFT){
    y-=speed;
  }else if(keyCode == DOWN){
    FOV+=speed;
  }else if(keyCode == RIGHT){
    y+=speed;
  }
}

Position pointOnCanvas(Position pos){
  // Horizontal and Vertical angles
  float angleH = atan2(pos.Y,pos.X);
  float angleV = atan2(pos.Z,pos.X);
  
  return new Position(screenW/2 - angleH * screenW/FOV,
                      screenH/2 - angleV * screenW/FOV,
                      0);
}
