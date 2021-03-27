float x;
float y;
boolean dirX;
boolean dirY;
int r;
int speed;

void setup(){
  size(400,400);
  
  x = width/2 + 30;
  y = width/2;
  dirX = true;
  dirY = false;
  r = 16;
  speed = 5;
}

void draw() {
  
  // TODO: Random direction or speed when colliding
  
  background(50);
  noStroke();
  fill(255);
  
  checkCollision();
  updateBall();
  
  ellipse(x,y,r,r);
}

void checkCollision(){
  // Check X
  if(x>width-r/2){
    dirX = false;
  }else if(x<0+r/2){
    dirX = true;
  }
  
  // Check Y
  if(y>height-r/2){
    dirY = false;
  }else if(y<0+r/2){
    dirY = true;
  }
}

void updateBall(){
  // Update X
  if(dirX){
    x += speed;
  }else if(!dirX){
    x -= speed;
  }
  
  // Update Y
  if(dirY){
    y += speed;
  }else if(!dirY){
    y -= speed;
  }
}