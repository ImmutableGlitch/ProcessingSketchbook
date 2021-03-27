Segment first;
Segment second;

void setup()
{
  size(600, 400);
  surface.setLocation(10, 10); // sets output window position
  
  first = new Segment(100, 200, 30, radians(45));
  second = new Segment(first, 90, radians(5));
}

void draw()
{
  background(50);
  first.show();
  second.show();
}
