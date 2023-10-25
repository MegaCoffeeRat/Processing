/****************************************************\
 
 Evil Square
 (a subclass of Enemy)
 
 \****************************************************/


class EnemyPhantom extends Enemy
{
  int PhantomHealth = 250;
  int shotTimer = 0;
  int value;

  EnemyPhantom(float x, float y)
  {
    super(x, random(height), EnemyPhantom.width/2, EnemyPhantom.height/2);
    xSpeed = int(random(-10, -15));
    ySpeed = ENEMY_SCOUT_Y_SPEED;
    image = EnemyPhantom;
    curHealth = PhantomHealth;
    maxHealth = PhantomHealth;
    value = 100;
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
    if (x > width-260)
    {
      xSpeed = xSpeed * -1;
    }
    if (0>x)
    {
      xSpeed = xSpeed * -1;
    }

    if (shotTimer == 0)

    {

      objects.add(new PhantomShot(x + EnemyPhantom.width/2+24, y));
      objects.add(new PhantomShot(x + EnemyPhantom.width/2, y));

      shotTimer = ENEMY_COOLDOWN;
    }
    if (shotTimer > 0)
    {
      shotTimer--;
    }
  }
}
