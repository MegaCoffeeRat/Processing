class Star
{
  float x;
  float y;
  int size;
  
  Star()
  {
    x = random(width);
    y = random(height);
    y = y + size * 0.5;
    size = (int)random(1, 4);
  }
  void update()
  {
  y++;
  if (y > height)
    {
      y = 0;
    }
    
  }
  void render()
  {
    fill(255);
    ellipse(x,y,size,size);
  }
}
