
Ball[] balls;




void setup()
{
  fullScreen();
  balls = new Ball[750];
  
  for (int i = 0; i<balls.length; i++)
  {
    balls[i] = new Ball();
  }
}
void draw()
{
  background(105, 105, 105);
  for (int i = 0; i < balls.length; i++)
  {
    balls[i].render();
  }
  textSize(45);
  text("Total Number of Times the walls have been hit: " + score, 50,50);
  
  
  
}
