ArrayList<Particle> particles;
//Rocket Missle;


void setup()
{
  particles = new ArrayList<Particle>();
  //Missle = new Rocket(width/2, height/2);
  fullScreen();
}

void mousePressed()
{
  float force = random(.5, 3);
  for (int i =0; i <100; i++)
  {
    particles.add(new Particle(mouseX, mouseY));
    
  }
}






void draw()
{
  background(0);
  
  //Missle.render();
  
  for (int i = 0; i < particles.size(); i++)
  {
    particles.get(i).renderBlock();
  }
  
  
  for (int i = 0; i < particles.size(); i++)
  {
    particles.get(i).update();
  }

  //the counter in top left
  fill(255);
  textSize(60);
  text(particles.size(), 80, 80);
  
}
