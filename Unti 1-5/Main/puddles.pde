
class CLASS
{
  float x;
  float y;
  float size = 10;
  
  
  CLASS()
  {
    fill(10,100,200);
    
    x = random(width-20);
    y = random(height-20);
    
  }
  
  void render()
  {
    noStroke();
    ellipse(x, y, size,size);
    size++;
  }
  
  
}
