class Particle
{
  float x;
  float y;
  int size;
  int radius;
  float xSpeed;
  float ySpeed;
  float gravity=0.1;
  int r = (int)random(255);
  int g = (int)random(255);
  int b = (int)random(255);
  Particle(float x, float y)
  {
    this.x = x;
    this.y = y;
    size = 10;
    radius = 10;

    xSpeed = random(-5, 7);
    ySpeed = random(-10, 5);
  }

  void update()
  {
    ySpeed = ySpeed + gravity;
    x=x+xSpeed;
    y=y+ySpeed;
    if (y > height)

    {

      particles.remove(this);
    }
  }

  void renderBlock()
  {
    fill(r, g, b);

    rect(x, y, size, size);
  }
  void renderCircle()
  {
    fill(r, g, b);
    ellipse(x, y, radius*2, radius*2);
  }
}
