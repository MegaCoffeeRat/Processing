
class Puddle
{
  float x;
  float y;
  float radius;
  int level = 1;
  


  Puddle()
  {
    x = random(width);
    y = random(height);
  }

  void render()
  {
    noStroke();
    fill(50, 50, 255);
    ellipse(x, y, radius*2, radius*2);
        
  }

  void update()
  {
    radius = radius + growth;
    if (dist(mouseX, mouseY, x, y)<radius)
    {
      gameOver=true;
    }
    
    
  }
}
