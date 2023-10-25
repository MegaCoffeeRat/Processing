//Block [] blocks   <----old way of array


ArrayList<Block> blocks;


void setup()
{
  blocks = new ArrayList<Block>();
  fullScreen();
}


void mousePressed()
{
  float force = random(.5, 3);
  for(int i =0; i <100; i++)
  {
  blocks.add(new Block(mouseX, mouseY, force));
  }
}

void draw()
{
  //temp code - will change
  background(0);
  float x = random(width);
  float y = random(height);




  for (int i = 0; i < blocks.size(); i++)
  {
    //blocks[i].update();
    blocks.get(i).update();
    blocks.get(i).render();
  }
  textSize(60);
  text(blocks.size(), 80,80);
}
