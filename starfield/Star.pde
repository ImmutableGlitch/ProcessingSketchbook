class Star{
  float x;
  float y;
  float depth;
  
  Star(){
    // Place the star within the screen with random depth
   x = random(-width/2,width/2);
   y = random(-height/2,height/2);
   depth = random(width);
  }
  
  void update(){
    depth -= 10;
        
    if(depth<1 || x > 400 || y > 400){
      x = random(-width/2,width/2);
      y = random(-height/2,height/2);
      depth = random(width);
    }
    
  }

  void show(){
    fill(255);
    noStroke();
    
    // map(value, start1, stop1, start2, stop2)
    float sx = map(x/depth, 0, 1, 0 , width/2);
    float sy = map(y/depth, 0, 1, 0 , height/2);
    float r = map(depth,0,width,16,0);
    
    ellipse(sx,sy,r,r); //<>//
  }
  
}