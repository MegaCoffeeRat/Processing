Puddle[] puddles;
Box[] chests;
int StartPuddleCount = 20;
int numChests = (int)random(5, 9);

boolean gameOver = false;

int score = 0;

int timer = 5*60;
int readTimer;
int level = 1;
float radius;
float growth = 0.2;
void setup()
{
  size(1000, 1000);
  puddles = new Puddle[StartPuddleCount];
  chests = new Box[numChests];
  for (int i=0; i<puddles.length; i++)
  {
    puddles[i] = new Puddle();
  }

  for (int i=0; i < chests.length; i++)
  {
    chests[i] = new Box();
  }
}

void reset()
{
  StartPuddleCount = 50;
  for (int i=0; i<puddles.length; i++)
  {
    puddles[i] = new Puddle();
  }

  for (int i=0; i < chests.length; i++)
  {
    chests[i] = new Box();
  }
  draw();
}




void draw()
{

  background(90, 240, 90);
  timer--;
  readTimer = (int)timer/60;



  for (int i = 0; i < chests.length; i++)
  {
    chests[i].render();
    chests[i].update();
  }




  for (int i = 0; i < puddles.length; i++)
  {
    puddles[i].render();

    if (!gameOver)
    {
      fill(0);
      text("TTNL: " + readTimer, 100, 100);
      if (readTimer == 0)
      {
        textAlign(CENTER, CENTER);
        textSize(60);
        fill(0);
        text("Next Level!", height/2, width/2);
        reset();

        timer = 5*60;
        growth = 0.5;
        radius = 5;
        level = 2;
 '     }

      puddles[i].update();
    } else if (gameOver)
    {
      textAlign(CENTER, CENTER);
      textSize(60);
      fill(0);
      text("GameOver", height/2, width/2);
    }
  }
  textAlign(CENTER, CENTER);
  textSize(60);
  fill(0);
  text("Score: " + score, 100, 150);
  textAlign(CENTER, CENTER);
  textSize(60);
  fill(0);
  text("Level: " + level, 100, 50);
}
