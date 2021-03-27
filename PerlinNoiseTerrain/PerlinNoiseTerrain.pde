int w = 1800;
int h = 900;
int cols, rows;
int scale = 10;
float[][] terrain;
float flying = 0;

void setup(){
  size(600,600, P3D);
  cols = w/scale;
  rows = h/scale;
  terrain = new float[cols][rows];
  
}

void draw(){
  background(0);
  stroke(255);
  noFill();
  
  translate(width/2, height/2-100);
  rotateX(PI/3);
  translate(-w/2, -h/2);
  flying -=0.1;
  
  float yOffset = flying;
  for (int y = 0; y < rows; y++) // For every row
  {
    float xOffset = 0;
    for (int x = 0; x < cols; x++)
    {
      terrain[x][y] = map(noise(xOffset,yOffset),0,1,-30,80);
      xOffset += 0.1;
    }
    yOffset += 0.1;
  }

  for (int y = 0; y < rows-1; y++) // For every row
  {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++)
    {
      vertex(x*scale, y*scale, terrain[x][y]);
      vertex(x*scale, (y+1)*scale, terrain[x][y+1]);
    }  
    endShape();
  }

}// draw
