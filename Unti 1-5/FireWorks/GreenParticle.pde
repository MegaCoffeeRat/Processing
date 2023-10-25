class GreenParticle extends Particle
{
  int growthRate;
  GreenParticle(float x, float y)
  
  {
    super(x,y);
    r = 0;
    g = (int)random(100,255);
    b = 0;
    growthRate = 4;
  }
  
  void update()
  {
    super.update();
    size = size + growthRate;
  }
  
  void render()
  {
    noStroke();
    fill(r,g,b);
    ellipse(x,y,size,size);
  }
  
  
}
