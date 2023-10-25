/****************************************************\
 
 Evil Square
 (a subclass of Enemy)
 
 \****************************************************/


class EnemyMarksmen extends Enemy
{
  int MarksmenHealth = 100;
  int shotTimer = 0;
  int value;
  EnemyMarksmen(float x, float y)
  {
    super(x, y, EnemyScout.width, EnemyScout.height);
    xSpeed = 3;//ENEMY_SCOUT_X_SPEED;
    ySpeed = ENEMY_SCOUT_Y_SPEED;
    image = Marksmen;
    curHealth = MarksmenHealth;
    maxHealth = MarksmenHealth;
     value = 75;
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

    if (shotTimer == 0)

    {

      objects.add(new MarksmenShot(x + Marksmen.width/2, y));

      shotTimer = ENEMY_COOLDOWN;
    }
    if (shotTimer > 0)
    {
      shotTimer--;
    }

  }
}
