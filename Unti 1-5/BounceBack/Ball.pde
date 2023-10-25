int score = 0;
class Ball
{
  float x;
  float y;
  int xSpeed = (int)random(5, 10);
  int ySpeed = (int)random(5, 10);
  
  int r = (int)random(255);
  int g = (int)random(255);
  int b = (int)random(255);

  Ball()

  {
    fill(random(255), random(255), random(255));


    x = random(width-20);
    y = random(height-20);
  }

  void render()
  {
    noStroke();
    ellipse(x, y, 20, 20);
    x = x + xSpeed;
    y = y + ySpeed;

    if (x>width-25)
    {
      xSpeed = xSpeed * -1;
      score++;
    } else if (x<12)
    {
      xSpeed = xSpeed * -1;
      score++;
    }


    if (y>height-25)
    {
      ySpeed = ySpeed * -1;
      score++;
    } else if (y<12)
    {
      ySpeed = ySpeed * -1;
      score++;
    }
  }
}
