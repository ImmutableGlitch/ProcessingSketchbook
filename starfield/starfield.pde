Star[] stars = new Star[100];

void setup(){
  size(800,800);
  
  // Populate array of stars
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}

void draw(){
  // Black background with center of screen as 0,0
  background(0);
  translate(width/2,height/2);
  
  // Update and show each star
  for(int i = 0; i < stars.length; i++){
    stars[i].update();
    stars[i].show();
  }
  
}