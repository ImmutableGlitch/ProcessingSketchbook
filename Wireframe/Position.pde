class Position{
  float X,Y,Z;
  
  Position(float x, float y, float z){
    X=x;
    Y=y;
    Z=z;
  }
  
  Position Relative(float dx, float dy, float dz){
    return new Position(X+dx, Y+dy, Z+dz);
  }
}
