class Explosive extends Particle
{
  int fade;
  Explosive(float x, float y)
  {
    super(x, y);
    size = 20;
    fade = 150;
  }

  void update()
  {
    super.update();
  }

  void render()
  {
    noStroke();
    fill(random(255), random(255), random(255), fade);

    rect(x, y, size, size);
  }
}
