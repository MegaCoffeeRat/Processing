/****************************************************\
 
 Player
 (a subclass of GameObject)
 
 \****************************************************/

class Player extends GameObject
{
  int shotTimer = 0;
  int PLAYER_HEALTH = 100;
  int invulTimer = 0;
  Player(float x, float y)
  {
    super(x, y, 64, 64);
    image = GreenFalcon;



    curHealth = PLAYER_HEALTH;
    maxHealth = PLAYER_HEALTH;
  }



  void takeDamage(float amount)
  {
    if (invulTimer == 0)
    {
      super.takeDamage(amount);
    }
  }


  public void render()
  {
    super.render();
    int bX = width / 3;
    int bY = height - 100;
    int bW = width / 3;
    int bH = 25;

    float perHealth = curHealth / maxHealth;

    fill(125, 0, 0);
    rect(bX, bY, bW, bH);
    fill(255 * (1-perHealth), 255 * perHealth, 0);
    rect(bX, bY, bW * curHealth/maxHealth, bH);

    if (invulTimer == 0 || invulTimer % 2 == 0)
    {
      super.render();
    }
  }
  public void act()
  {
    if (speedUpgrade)
    {
      PLAYER_SPEED = 12.5;
    }
    super.act();

    xSpeed = 0;
    ySpeed = 0;

    if ((getKey('a') || getKey('A')) && x > 0)
    {
      xSpeed -= PLAYER_SPEED;
    }
    if ((getKey('d') || getKey('D')) && x+w < width)
    {
      xSpeed += PLAYER_SPEED;
    }
    if ((getKey('w') || getKey('W')) && y > 0)
    {
      ySpeed -= PLAYER_SPEED;
    }
    if ((getKey('s') || getKey('S')) && y+h < height)
    {
      ySpeed += PLAYER_SPEED;
    }


    if (shotTimer > 0)
    {
      shotTimer--;
    }






    if (getKey(' ') && shotTimer == 0)
    {
      if (BaconCannon)
      {
        PLAYER_COOLDOWN = 0;
        objects.add(new LaserBaconAtor(x+28, y));
        basicShot = false;
        AreaBlaster = false;
      }

      if (basicShot)
      {
        objects.add(new PlayerShotBasic(x+28, y));
      }


      shotTimer = PLAYER_COOLDOWN;


      if (AreaBlaster)
      {
        objects.add(new AreaBlaster(x+0, y-10, -1.5, -8));
        objects.add(new AreaBlaster(x+0, y-10, 0, -8));
        objects.add(new AreaBlaster(x+24, y-10, 1.5, -8));
        objects.add(new AreaBlaster(x+24, y+45, -1.5, 0));
        objects.add(new AreaBlaster(x+24, y+45, 1.5, 0));
        objects.add(new AreaBlaster(x+0, y-10, -1.5, 8));
        objects.add(new AreaBlaster(x+24, y-10, 1.5, 8));
        objects.add(new AreaBlaster(x+0, y-10, 0, 8));
        basicShot = false;
        BaconCannon = false;
      }
    }
  }




  public void die()
  {
    if (lives > 0)
    {
      x = width/2;
      y = height - 200;
      curHealth = maxHealth;
      lives--;
    } else
    {
      curHealth = 0;
      isAlive = false;
      invulTimer = 120;
      if (invulTimer>0)
      {
        invulTimer--;
      }
      dead = '1';
    }
  }


  public void reactions()
  {
    for (int x = 0; x < collisions.size (); x++)
    {
      GameObject o = collisions.get(x);

      if (o instanceof EnemyProjectile || o instanceof Enemy)
      {
        takeDamage(o.getDamage());
      }
    }
  }
}
