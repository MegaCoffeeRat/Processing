class Particle
{
  float x;
  float y;
  int size;
  int radius;
  float xSpeed;
  float ySpeed;
  float gravity=0.1;
  int r = (int)random(240, 255);
  int g = (int)random(200, 255);
  Particle(float x, float y)
  {
    this.x = x;
    this.y = y;
    size = 10;
    radius = 10;

    xSpeed = random(-5, 7);
    ySpeed = random(-10, 5);
  }

  public void update()
  {
    ySpeed = ySpeed + gravity;
    x=x+xSpeed;
    y=y+ySpeed;
    if (y > height)

    {

      particles.remove(this);
    }
  }

  public void renderBlock()
  {
    fill(r, g, 0);

    rect(x, y, size, size);
  }
}
