ArrayList<Particle> particles;
ArrayList<Explosive> expo;
ArrayList<testBomb> circ;
PImage bomb;
void setup()
{
  particles = new ArrayList<Particle>();
  expo = new ArrayList<Explosive>();
  circ = new ArrayList<testBomb>();
  bomb = loadImage("bomb.gif");
  bomb.resize(width, height);
  fullScreen();
}

void mousePressed()
{
  if (mouseButton == CENTER)
  {
    for (int i =0; i <500; i++)
    {
      circ.add(new testBomb(random(width-20),random(height-20)));
    }
  }
  if (mouseButton == LEFT)
  {
    for (int i =0; i <100; i++)
    {
      particles.add(new Particle(mouseX, mouseY));
    }
  }
  if (mouseButton == RIGHT)
  {
    for (int i =0; i <90; i++)
    {
      expo.add(new Explosive(mouseX, mouseY));
    }
  }
  
}






void Yellow()
{
  for (int i = 0; i < particles.size(); i++)
  {
    particles.get(i).renderBlock();
  }
  for (int i = 0; i < particles.size(); i++)
  {
    particles.get(i).update();
  }
}


void boom()
{
  for (int i = 0; i < circ.size(); i++)
  {
    circ.get(i).render();
  }
  for (int i = 0; i < circ.size(); i++)
  {
    circ.get(i).update();
  }
}



void rainbow() {
  for (int i = 0; i < expo.size(); i++)
  {
    expo.get(i).render();
  }
  for (int i = 0; i < expo.size(); i++)
  {
    expo.get(i).update();
  }
}
void draw()
{
  background(0);
  Yellow();
  rainbow();
  boom();
}
