class testBomb extends Particle

{
    int fade;

  testBomb(float x, float y)
  {
    super(x, y);
    
  }
  
  
  void render()
  {
    noStroke();
    fill(255,255,255);
    ellipse(x, y, 20,20);
  }
  
  
  void update()
  {
    super.update();
  }
  
}
