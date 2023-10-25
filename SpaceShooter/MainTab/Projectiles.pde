/****************************************************\
 
 Abstract Projectile Classes
 (Subclasses of GameObject)
 
 \****************************************************/

abstract class Projectile extends GameObject
{
  int PROJECTILE_DURATION = 100;
  int duration;
  int PLAYER_SHOT_DURATION = 25;
  int ENEMY_SHOT_DURATION = 150;
  Projectile(float x, float y, float w, float h, float xSpeed, float ySpeed)
  {
    super(x, y, w, h);
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    duration = PROJECTILE_DURATION;
  }

  void act()
  {
    super.act();

    if (timer > duration)
    {
      die();
    }
  }
}

abstract class PlayerProjectile extends Projectile
{
  PlayerProjectile(float x, float y, float w, float h, float xSpeed, float ySpeed)
  {
    super(x, y, w, h, xSpeed, ySpeed);
    duration = PLAYER_SHOT_DURATION;
  }

  void reactions()
  {
    for (int x = 0; x < collisions.size (); x++)
    {
      GameObject o = collisions.get(x);

      // When this projectile hits an enemy, this sets it to be removed
      if (o instanceof Enemy)
      {
        die();
      }
    }
  }
}

abstract class EnemyProjectile extends Projectile
{
  EnemyProjectile(float x, float y, float w, float h, float xSpeed, float ySpeed)
  {
    super(x, y, w, h, xSpeed, ySpeed);
  }

  void reactions()
  {
    for (int x = 0; x < collisions.size (); x++)
    {
      GameObject o = collisions.get(x);

      // When this projectile hits a player, set it to be removed
      if (o instanceof Player)
      {
        die();
      }
    }
  }
}

/****************************************************\
 
 Concrete Projectile Classes
 
 - You'll design new projectiles here.
 - The most important part is the "super" call
 - It takes six parameters, in this order
 1) starting x position
 2) starting y position
 3) width
 4) height
 5) x speed
 6) y speed
 
 \****************************************************/



class Nebula extends EnemyProjectile
{
  Nebula(float x, float y)
  {
    super(x, y, Nebula.width, Nebula.height, 0, 10);
    image = Nebula;
    duration = 50;
    damage = 80;
  }
}







class LaserBaconAtor extends PlayerProjectile
{
  LaserBaconAtor(float x, float y)
  {
    super(x, y, SpaceBacon.width, SpaceBacon.height, 0, -10);
    
      image = SpaceBacon;
      duration = 155;
      damage = 7;
    
  }
}




class ViperShot extends EnemyProjectile
{
  ViperShot(float x, float y)
  {
    super(x,y, ViperShot.width, ViperShot.height, 0,10);
    image = ViperShot;
    duration = ENEMY_SHOT_DURATION;
    damage = 25;
  }
}


class PhantomShot extends EnemyProjectile
{
  PhantomShot(float x, float y)
  {
    super(x, y, PhantomShot.width, PhantomShot.height, 0, 10);
    image = PhantomShot;
    duration = ENEMY_SHOT_DURATION;
    damage = 25;
  }
}



class MarksmenShot extends EnemyProjectile
{
  MarksmenShot(float x, float y)
  {
    super(x, y, MarksmenShot.width, MarksmenShot.height, 0, 15);
    image = MarksmenShot;
    duration = ENEMY_SHOT_DURATION;
    damage = 50;
  }
}


class AreaBlaster extends PlayerProjectile
{
  AreaBlaster(float x, float y, float xSpeed, float ySpeed)
  {
    super(x, y, UpgradeShot.width, UpgradeShot.height, xSpeed, ySpeed);
    image = UpgradeShot;
    damage = 15;
    duration = 100;
  }
}




class PlayerShotBasic extends PlayerProjectile
{
  PlayerShotBasic(float x, float y)
  {
    super(x, y, GreenShot.width, GreenShot.height, 0, -PLAYER_SHOT_SPEED);
    image = GreenShot;
    damage = PLAYER_SHOT_DAMAGE;
    duration = 100;
  }
}


class HeavyShot extends EnemyProjectile
{
  HeavyShot(float x, float y)
  {
    super(x, y, HeavyShot.width, HeavyShot.height, 0, ScoutShotSpeed-int(random(1, 3)));
    image = HeavyShot;
    damage = HeavyShotDamage;

    duration = ENEMY_SHOT_DURATION;
  }
}



class ScoutShot extends EnemyProjectile
{
  ScoutShot(float x, float y)
  {
    super(x, y, ScoutShot.width, ScoutShot.height, 0, ScoutShotSpeed);
    image = ScoutShot;
    damage = RED_SHOT_DAMAGE;
    duration = ENEMY_SHOT_DURATION;
    damage = 10;
  }
}
