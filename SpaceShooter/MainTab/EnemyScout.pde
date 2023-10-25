/****************************************************\
 
 Evil Square
 (a subclass of Enemy)
 
 \****************************************************/


class EnemyScout extends Enemy
{
  int ScoutHealth = 5;
  int shotTimer = 0;
  int value;
  EnemyScout(float x, float y)
  {
    super(x, y, EnemyScout.width, EnemyScout.height);
    xSpeed = int(random(-5,5));
    ySpeed = ENEMY_SCOUT_Y_SPEED;
    image = EnemyScout;
    curHealth = ScoutHealth;
    maxHealth = ScoutHealth;
    value = 25;
  }


    void die()
   {
     super.die();
     credits = credits + value;
   }

  public void act()
  {
    super.act();

    // This code causes the enemy to wrap when it goes to the bottom of the screen
    if (y > height)
    {
      y = -image.height;
    }
    if (x > width)
    {
      xSpeed = xSpeed * -1;
    }
    if(0 > x)
    xSpeed = xSpeed * -1;

    if (shotTimer == 0)

    {

      objects.add(new ScoutShot(x + EnemyScout.width/2, y));

      shotTimer = ENEMY_COOLDOWN;
    }
    if (shotTimer > 0)
    {
      shotTimer--;
    }

  }
}
