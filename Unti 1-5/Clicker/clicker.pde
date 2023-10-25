int xPos;
float yPos = 25;
int radius = 20;
int score = 0;
float gravity = (0.8);

int timer = 20*60;
int readTimer;

void setup()
{
  size(800, 800);
  xPos = (int)random(50, 700);
}



void resetBall()
{
  xPos = (int)random(50, 700);
  yPos = 25;
}


void checkScore()
{
  if(score > 10)
  {
    textSize(36);
    text("YOU ARE A GAMER", 300, 200);
    
  }
  else if(score < 10)
  {
    text("U SUCK", 400, 200);

    
  }
}
  



void mousePressed()
{
  if (dist(mouseX, mouseY, xPos, yPos) < radius)
  {
    resetBall();
    score++;
  }
}


void object()
{
  fill(255, 0, 0);
  ellipse(xPos, yPos, 100, 100);
}


void draw()
{
  background(192, 192, 192);
  timer--;
  readTimer = (int)timer/60;
  textSize(24);
  text("Current Score: " + score, 100, 50);
  textSize(24);
  text("Time Left: " + readTimer, 500,50);
  object();
  yPos = yPos + 4;
  
  if(readTimer == (0))
  {
    yPos = -50;
    textSize(36);
    text("GAMEOVER", width/2, height/2);
    checkScore();
    if(keyPressed && key == 'r')
    {
      timer = 20*60;
    }


  }




  if(keyPressed && key == 'q')
    {
      exit();
    }
  if(yPos > 750)
  {
    resetBall();
  }
}


