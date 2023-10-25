import java.util.Collections;

PImage background;
int sizeX = 500;
int sizeY = 100;
int x1;
int y1;
int x2;
int y2;



void setup()
{
  fullScreen();
  //size(1920,1080);
  background = loadImage("gym.png");
  x1 = width/2-250;
  y1 = height/2-250;
  x2 = width/2-250;
  y2 = height/2+50;
  
  state = 0;
  
  textAlign(CENTER, CENTER);
  background(background);
  strokeWeight(2);
  fill(155);
  rect(x1, y1, sizeX, sizeY);
  fill(0);
  textSize(36);
  text("Upper Body", width/2-5, height/2-209);
  fill(155);
  rect(x2, y2, sizeX, sizeY);
  fill(0);
  textSize(36);
  text("Lower Body", width/2-3, height/2+93);
}

void mousePressed()
{

  if (mouseX > x1 && mouseX < x1 + sizeX && mouseY > y1 && mouseY < y1 + sizeY)
  {
    if (state == 0)
    {
      EquipmentSelector('1');
    } else if (state == 1)
    {
      displayWorkout("upperGym");
    } else if (state == 2)
    {
      displayWorkout("lowerGym");
    }
  } else if (mouseX > x2 &&  mouseX < x2 + sizeX && mouseY > y2 && mouseY < y2 + sizeY)
  {
    if (state == 0)
    {
      EquipmentSelector('0');
    } else if (state == 2)
    {
      displayWorkout("lowerNoGym");
    } else if (state == 1)
    {
      displayWorkout("upperNoGym");
    }
  }
  resetButton();
  exitButton();
  
}
void draw()
{
}
