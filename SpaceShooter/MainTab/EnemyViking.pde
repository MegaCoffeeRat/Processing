/****************************************************\
 
 Evil Square
 (a subclass of Enemy)
 
 \****************************************************/


class EnemyViking extends Enemy
{
  int VikingHealth = 50;
  int shotTimer = 0;
  int value;
  EnemyViking(float x, float y)
  {
    super(x, y, EnemyViking.width, EnemyViking.height);
    xSpeed = ENEMY_VIKING_xSPEED;
    ySpeed = ENEMY_VIKING_ySPEED;
    image = EnemyViking;
    curHealth = VikingHealth;
    maxHealth = VikingHealth;
    value = 50;
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

      objects.add(new HeavyShot(x + EnemyViking.width/2+10, y+64));
      objects.add(new HeavyShot(x + EnemyViking.width/2-15, y+64));


      shotTimer = ENEMY_VIKING_COOLDOWN;
    }
    if (shotTimer > 0)
    {
      shotTimer--;
    }
  }
}
