class Block

{
  float x;
  float y;
  int size;
  float xSpeed;
  float ySpeed;


  Block(float x, float y, float force)
  {
    this.x = x;
    this.y = y;
    size = 10;
    force = force;


    xSpeed = random(-5, 5)* force;
    ySpeed = random(-2, 2)*force;
  }
  void update()
  {
    x=x+xSpeed;
    y=y+ySpeed;
    
    if(x>width || x < 0)
    {
xSpeed = xSpeed*-1;    }
  }

  void render()
  {
    fill(255, 0, 0);
    rect(x, y, size, size);
  }
}
