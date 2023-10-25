int red = (int)random(255);
int green = (int)random(255);
int blue = (int)random(255);

void setup()
{
  fullScreen();
  background(red, green, blue);
}


void paint()
{


  if (keyPressed && (key == ('1')))
  {
    if (mousePressed && mouseButton == LEFT) {
      fill((int)random(255), (int)random(255), (int)random(255));
      ellipse(mouseX, mouseY, 25, 25);
    }
  } else if (keyPressed && key == ('2'))
  {
    if (mousePressed && mouseButton == LEFT) {
      fill((int)random(255), (int)random(255), (int)random(255));
      ellipse(mouseX, mouseY, 50, 50);
    }
  } else if (keyPressed && key == ('3'))
  {
    if (mousePressed && mouseButton == LEFT) {
      fill((int)random(255), (int)random(255), (int)random(255));
      ellipse(mouseX, mouseY, 100, 100);
    }
  }
}





void erase() {
  if (mousePressed && mouseButton == RIGHT)
  {
    noStroke();
    fill(red, green, blue);
    ellipse(mouseX, mouseY, 50, 50);
  }
}




void draw()
{

  paint();

  erase();
}
