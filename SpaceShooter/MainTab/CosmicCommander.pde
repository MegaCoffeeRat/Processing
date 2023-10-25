
class CosmicCommander extends Enemy
{
  int CommanderHealth = 250;
  int shotTimer = 0;
  int value;
  CosmicCommander(float x, float y)
  {
    super(x, y, CosmicCommander.width/2, CosmicCommander.height/2);
    xSpeed = random(3,4);
    ySpeed = 2;
    image = CosmicCommander;
    curHealth = CommanderHealth;
    maxHealth = CommanderHealth;
     value = 250;
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
    if (x > width-200)
    {
      xSpeed = xSpeed * -1;
    }
    if( 0 > x)
    {
      xSpeed = xSpeed * -1;
    }

    if (shotTimer == 0)
    {
      objects.add(new Nebula(x + CosmicCommander.width/2, y+256));

      shotTimer = ENEMY_COOLDOWN;
    }
    if (shotTimer > 0)
    {
      shotTimer--;
    }
  }
}
