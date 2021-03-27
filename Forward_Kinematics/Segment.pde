class Segment
{ // https://www.youtube.com/watch?v=xXjRlEr7AGk
  PVector startPos;
  PVector endPos; // r * cos(theta) and r * sin(theta)
  
  float len;
  float angle;

  Segment(float X, float Y, float Length, float Angle)
  {
    startPos = new PVector(X, Y);
    len = Length;
    angle = Angle;
    calculateEndPos();
  }
  
  Segment(Segment parent, float Length, float Angle)
  {
    startPos = new PVector(parent.startPos.x, parent.startPos.y);
    len = Length;
    angle = Angle;
    calculateEndPos();
  }
  
  void calculateEndPos()
  {
    float dx = len * cos(angle);
    float dy = len * sin(angle);
    endPos = new PVector(startPos.x + dx, startPos.y + dy);
  }
  
  void show()
  {
    stroke(255-len);
    strokeWeight(4);
    line(startPos.x, startPos.y, endPos.x, endPos.y);
  }
}
