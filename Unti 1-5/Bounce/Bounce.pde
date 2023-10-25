float RxPos = random(50, 750);
float RyPos = random(50, 750);
float BxPos = random(50, 750);
float ByPos = random(50, 750);
float RxSpeed = random(5, 7);
float RySpeed = random(5, 7);
float BxSpeed = random(5, 7);
float BySpeed = random(5, 7);

//make random starting color
//when hit wall -> change ball color
//make hit off of each other
void setup()
{
  size(800, 800);
}

void BlueBall()
{
  fill(0, 100, 255);
  ellipse(BxPos, ByPos, 50, 50);

  ByPos = ByPos + BySpeed;

  BxPos = BxPos + BxSpeed;
  if (BxPos > width-25)
  {
    BxSpeed = BxSpeed * -1;
  } else if (ByPos < 0+15)
  {
    BySpeed = BySpeed * -1;
  } else if (BxPos < 0+15)
  {
    BxSpeed = BxSpeed * -1;
  } else if (ByPos > height-25) {
    BySpeed = BySpeed * -1;
  }
}


void RedBall()
{
  fill(255, 100, 0);
  ellipse(RxPos, RyPos, 50, 50);


  RxPos = RxPos + RxSpeed;
  RyPos = RyPos + RySpeed;


  if (RyPos < 0+25)
  {
    RySpeed = RySpeed *-1;
  } else if (RyPos > height-25)
  {
    RySpeed = RySpeed *-1;
  } else if (RxPos < 0+5)
  {
    RxSpeed = RxSpeed * -1;
  } else if (RxPos > width-25)
  {
    RxSpeed = RxSpeed * -1;
  }
}

void draw()


{
  background(100);
  BlueBall();
  RedBall();
  println(RxPos);
}
