/****************************************************\
 
 Evil Square
 (a subclass of Enemy)
 
 \****************************************************/


class EnemyViper extends Enemy
{
  int VikingHealth = 50;
  int shotTimer = 0;
  int value;
  EnemyViper(float x, float y)
  {
    super(x, y, EnemyViper.width, EnemyViper.height);
    xSpeed = random(1,4);
    ySpeed = random(3,6);
    image = EnemyViper;
    curHealth = VikingHealth;
    maxHealth = VikingHealth;
    value = 1111;
  }


  void die()
  {
    super.die();
    credits = credits + value;
  }

  public void act()
  {
    super.act();

    if (y > height)
    {
      y = -image.height;
      
    }
    if (x > width)
    {
      x = -image.height;
    }

    if (shotTimer == 0)

    {

      objects.add(new ViperShot(x + EnemyViper.width/2+10, y+64));
      objects.add(new ViperShot(x + EnemyViper.width/2-15, y+64));


      shotTimer = ENEMY_VIKING_COOLDOWN;
    }
    if (shotTimer > 0)
    {
      shotTimer--;
    }
  }
}
