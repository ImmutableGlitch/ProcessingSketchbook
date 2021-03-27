import ddf.minim.*;

Minim minim;
AudioPlayer wallSound, batSound;
PImage ball, bat, back;
float batPosition;
float ballX, ballY;
float vertSpeed, horiSpeed;

void setup()
{
  size(960,720);
  imageMode(CENTER);
  ball = loadImage("ball.png");
  bat = loadImage("bat.png");
  back = loadImage("back.png");
  minim = new Minim(this);
  wallSound = minim.loadFile("wall.mp3");
  batSound = minim.loadFile("bat.mp3");
  batPosition = width/2;
  resetBall();
}

void resetBall()
{
  ballX = 20;
  ballY = 1;
  vertSpeed = 6;
  horiSpeed = random(-6,6);
}

void draw()
{
  image(back,width/2,height/2,width,height);
  
  int batMovement = 10;
  
  // Move the bat
  if (keyPressed && (keyCode == LEFT)) {
      batPosition = batPosition - batMovement;
  }

  if (keyPressed && (keyCode == RIGHT)) {
      batPosition = batPosition + batMovement;
  }
  
  // Draw the bat
  image(bat,batPosition,height-bat.height);

  // Calculate new position of ball - being sure to keep it on screen
  ballX = ballX + horiSpeed;
  ballY = ballY + vertSpeed;
  if(ballY >= height) resetBall();
  if(ballY <= 0) ceilingBounce();
  if(ballX >= width) wallBounce();
  if(ballX <= 0) wallBounce();

  // Draw the ball in the correct position and orientation
  translate(ballX,ballY);
  if(vertSpeed > 0) rotate(-sin(horiSpeed/vertSpeed));
  else rotate(PI-sin(horiSpeed/vertSpeed));
  image(ball,0,0);
  
  // Do collision detection between bat and ball
  if(batTouchingBall()) {
    float distFromBatCenter = batPosition-ballX;
    horiSpeed = -distFromBatCenter/10;
    vertSpeed = -vertSpeed;
    ballY = height-(bat.height*2);
    batSound.rewind();
    batSound.play();
  }
}

boolean batTouchingBall()
{
  float distFromBatCenter = batPosition-ballX;
  return (ballY > height-(bat.height*2)) && (ballY < height-(bat.height/2)) && (abs(distFromBatCenter)<bat.width/2);
}

void wallBounce()
{
  horiSpeed = -horiSpeed;
  wallSound.rewind();
  wallSound.play();
}

void ceilingBounce()
{
  vertSpeed = -vertSpeed;
  wallSound.rewind();
  wallSound.play();
}
