class Box
{
  float x;
  float y;
  int size;

  boolean collected = false;

  

  Box()
  {
    x = random(width);
    y = random(height);
    size = 20;
  }


  void render()
  {
    noStroke();
    fill(100, 80, 13);
    if(collected)
    {
      fill(90, 240, 90);
      score = 1;
      

    }
    rect(x, y, size, size);
    
    
    
  }


  void update()
  {
    if(mouseX > x &&           // > Left 

   mouseX < x + size  &&       // > Right 

   mouseY > y &&      // > Top 

   mouseY < y + size)      // < Bottom

  {

   collected =  true;
   

}

  }
}
