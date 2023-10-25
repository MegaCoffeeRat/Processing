boolean AreaBlaster = false;
boolean basicShot = true; //basic shot
boolean speedUpgrade = false;
String Cannon1 = "New Cannon - 50 Credits";
String Cannon2 = "New Cannon - 50 Credits" + " AQUIRED";
String Burner1 = "Afterburner - 75 Credits";
String Burner2 = "Afterburner - 75 Credits" + " AQUIRED";
String BC1 = "BaconCannon - 150 Credits";
String BC2 = "BaconCannon - 150 Credits - AQUIRED";
int dead;
boolean BaconCannon = false;
ArrayList<GameObject> objects;
ArrayList<Star> stars;
int wave = 0;
int lives = 5;
String gamestate = "Title";
int pauseTimer = 0;
int credits = 0;


void setup()
{
  fullScreen();
  gameSetup();
  loadImages();
  noCursor();

  stars = new ArrayList<Star>();

  for (int i = 0; i < 500; i++)
  {
    stars.add(new Star());
  }

  objects = new ArrayList<GameObject>();
  objects.add(new Player(width/2, height - 200));
}

void draw()
{
  render();
  update();

  if (dead == '1' )
  {
    background(Dead);
    if (getKey('r'))
    {
      lives = 5;
      credits = 10;
      wave = 0;
      gamestate = "Title";
      AreaBlaster = false;
      basicShot = true; //basic shot
      speedUpgrade = false;

      Cannon1 = "New Cannon - 50 Credits";
      Cannon2 = "New Cannon - 50 Credits" + " AQUIRED";
      Burner1 = "Afterburner - 75 Credits";
      Burner2 = "Afterburner - 75 Credits" + " AQUIRED";
      BC1 = "BaconCannon - 150 Credits";
      BC2 = "BaconCannon - 150 Credits - AQUIRED";
      BaconCannon = false;

      setup();
      draw();
    }
  }
  if (getKey('e'))
  {
    exit();
  }
  if (getKey('r'))
  {
    lives = 5;
    credits = 10;
    wave = 0;
    gamestate = "Title";
    AreaBlaster = false;
    basicShot = true; //basic shot
    speedUpgrade = false;

    Cannon1 = "New Cannon - 50 Credits";
    Cannon2 = "New Cannon - 50 Credits" + " AQUIRED";
    Burner1 = "Afterburner - 75 Credits";
    Burner2 = "Afterburner - 75 Credits" + " AQUIRED";
    BC1 = "BaconCannon - 150 Credits";
    BC2 = "BaconCannon - 150 Credits - AQUIRED";
    BaconCannon = false;

    setup();
    draw();
  }
}


void FinalBoss()
{
  AreaBlaster = false;
  basicShot = true;
  speedUpgrade = false;
  BaconCannon = false;
  Cannon1 = "?????";
  Cannon2 = "???????";
  Burner1 = "?????";
  Burner2 = "??????";
  BC1 = "??????";
  BC2 = "???????";
  fill(255);
  text("It aint that easy to kill me", 1900, 20);
}

void nextWave()
{
  for (int i = 0; i < objects.size(); i++)
  {
    if (objects.get(i) instanceof Enemy)
    {
      return;
    }
  }
  wave++;
  spawnEnemies();
}



void spawnBossTwo(int count)
{
  for (int i=0; i <count; i++)
  {
    objects.add(new CosmicCommanderTwo (random(width-100), -256));
  }
}


void spawnBoss(int count)
{
  for (int i=0; i <count; i++)
  {
    objects.add(new CosmicCommander(random(width-100), -256));
  }
}



void spawnEnemyViper(int count)
{
  for (int x = 0; x < count; x++)
  {
    objects.add(new EnemyViper(random(width-100), random(0, 100)));
  }
}


void spawnEnemyPhantom(int count)
{
  for (int x = 0; x < count; x++)
  {
    objects.add(new EnemyPhantom(random(width-100), random(0, 100)));
  }
}



void spawnEnemyScout(int count)
{
  for (int x = 0; x < count; x++)
  {
    objects.add(new EnemyScout(random(0+25, width-25), random(50, 100)));
  }
}

void spawnEnemyViking(int count)
{
  for (int i = 0; i < count; i++)
  {
    objects.add(new EnemyViking(random(width-100), random(0, 100)));
  }
}


void spawnMarksmen(int count)
{
  for (int i=0; i <count; i++)
  {
    objects.add(new EnemyMarksmen(random(width), random(0, 100)));
  }
}

void spawnEnemies()
{
  if (wave == 1)
  {
    spawnEnemyScout(int(random(10, 15)));
  }

  if (wave == 2)
  {
    spawnEnemyViking(int(random(5, 10)));
  }
  if (wave == 3)
  {
    spawnMarksmen(int(random(5, 7)));
  }
  if (wave == 4)
  {
    spawnEnemyPhantom(int(random(2, 3)));
  }
  if (wave ==5)
  {
    spawnEnemyViper(int(random(3, 4)));
  }
  if (wave == 6)
  {
    spawnBoss(1);
  }
  if (wave == 7)
  {
    spawnBossTwo(1);
    spawnEnemyScout(10);
    spawnEnemyViking(5);
    spawnMarksmen(2);
    spawnEnemyPhantom(1);
    spawnEnemyViper(2);
    FinalBoss();
    PLAYER_COOLDOWN = 10;
  }
  if (wave == 8)
  {
    gamestate = "done";
  }
}




void collisions()
{
  for (GameObject one : objects)
  {
    for (GameObject two : objects)
    {
      if (one.isCollision(two))
      {
        one.addCollision(two);
        two.addCollision(one);
      }
    }
  }
}

void act()
{
  for (int x = 0; x < objects.size (); x++)
  {
    objects.get(x).act();
  }
}

void cleanUp()
{
  for (int x = 0; x < objects.size (); x++)
  {
    objects.get(x).cleanUp();
  }
}


void renderTitle()
{
}

void updateTitle()
{


  if (keyPressed)
  {
    gamestate = "gameplay";
  }
}











void updateGameplay()
{
  collisions();
  act();
  cleanUp();
  nextWave();



  if (getKey('p') && pauseTimer == 0)

  {
    gamestate = "pause";
    pauseTimer = 15;
    PauseScreen();
  }
}

void updatePause()
{
  if (getKey('1') && credits >= 30 && pauseTimer == 0 && !AreaBlaster)
  {
    credits = credits - 50;
    pauseTimer = 15;
    AreaBlaster = true;
  }
  if (!AreaBlaster)
  {
    fill(155);
    rect(125, 500, 300, 50);
    fill(200, 0, 0);
    text("1 - " + Cannon1, 270, 520);
  }



  if (credits  > 50 && !AreaBlaster)
  {
    fill(155);
    rect(125, 500, 300, 50);
    fill(200, 10, 255);
    text("1 - " + Cannon1, 270, 520);
  }


  if (AreaBlaster)
  {
    fill(155);
    rect(125, 500, 375, 50);
    fill(255, 255, 255);
    text("1 - " + Cannon2, 315, 520);
  }
  if (getKey('p') && pauseTimer == 0)
  {
    gamestate = "gameplay";
    pauseTimer = 15;
  }



  if (getKey('2') && credits >= 75 && pauseTimer == 0 && !speedUpgrade)
  {
    credits = credits - 75;
    pauseTimer = 15;
    speedUpgrade = true;
  }
  if (!speedUpgrade)
  {
    fill(155);
    rect(125, 550, 300, 50);
    fill(200, 0, 0);
    text("2 - " + Burner1, 270, 570);
  }
  if (credits  > 50 && !speedUpgrade)
  {
    fill(155);
    rect(125, 550, 300, 50);
    fill(200, 10, 255);
    text("2 - " + Burner1, 270, 570);
  }
  if (speedUpgrade)
  {
    fill(155);
    rect(125, 550, 375, 50);
    fill(255, 255, 255);
    text("2 - " + Burner2, 315, 570);
  }


  if (getKey('3') && credits >= 150 && pauseTimer == 0 && !BaconCannon)
  {
    credits = credits - 150;
    pauseTimer = 15;
    BaconCannon = true;
  }
  if (!BaconCannon)
  {
    fill(155);
    rect(125, 600, 440, 50);
    fill(200, 0, 0);
    text("3 - " + BC1, 340, 620);
  }
  if (credits >= 150 && !BaconCannon)
  {
    fill(155);
    rect(125, 600, 440, 50);
    fill(200, 10, 255);
    text("3 - "+ BC1, 340, 620);
  }
  if (BaconCannon)
  {
    fill(155);
    rect(125, 600, 540, 50);
    fill(255);
    text("3 - " + BC2, 390, 620);
  }
}
void renderPause()
{
  renderGameplay();
}


void update()
{
  if (pauseTimer > 0)
  {
    pauseTimer--;
  }

  if (gamestate.equals("gameplay"))
  {
    updateGameplay();
  } else if (gamestate.equals("Title"))
  {
    background(Menu);
    updateTitle();
  } else if (gamestate.equals("pause"))
  {
    updatePause();
    noTint();
  } else if (gamestate.equals("done"))
  {
    background(Complete);
  }
}

void render()
{
  if (gamestate.equals("gameplay"))
  {
    renderGameplay();
  } else if (gamestate.equals("Title"))
  {
    background(Menu);
    updateTitle();
  }
}

void renderGameplay()
{
  background(0);
  for (int x = 0; x < stars.size(); x++)
  {
    stars.get(x).render();
    stars.get(x).update();
  }

  for (int x = 0; x < objects.size (); x++)
  {
    textAlign(LEFT, TOP);
    objects.get(x).render();
    textSize(24);
    fill(255);
    text("Wave: "+ wave, 100, 100);

    textSize(24);
    fill(255);
    text(" Extra Lives: " + lives, 100, 150);
    textSize(24);
    fill(255);
    text("Credits: " + credits, 100, 200);
  }
}
