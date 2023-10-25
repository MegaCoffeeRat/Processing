/****************************************************\
 
 Game Object
 (the super class of player, enemy, and projectiles)
 
 \****************************************************/

abstract class GameObject
{
  ArrayList<GameObject> collisions;

  protected int timer;
  protected PImage image;
  protected boolean isAlive;
  protected float curHealth;
  protected float maxHealth;
  protected float damage;
  protected float x;
  protected float y;
  protected float w;
  protected float h;
  protected float xSpeed;
  protected float ySpeed;

  public float getX()
  {
    return x;
  }
  public float getY()
  {
    return y;
  }
  public float getWidth()
  {
    return w;
  }
  public float getHeight()
  {
    return h;
  }

  public float getDamage()
  {
    return damage;
  }

  public float getCurHealth()
  {
    return curHealth;
  }

 
  public void takeDamage(float amount)
  {
    curHealth = curHealth - amount;

    if (curHealth <=0)
    {
      curHealth = 0;
      die();
    }

  }

  GameObject(float x, float y, float w, float h)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    isAlive = true;
    collisions = new ArrayList<GameObject>();
    curHealth = 1;
    maxHealth = 1;
    damage = 1;
    timer = 0;
  }

  boolean containsPoint(float xPos, float yPos)
  {
    return xPos >= x && xPos <= x+w && yPos >= y && yPos <= y+h;
  }

  boolean isCollision(GameObject o)
  {
    if (this == o) return false;

    if (containsPoint(o.x, o.y))
    {
      return true;
    }
    if (containsPoint(o.x+o.w, o.y))
    {
      return true;
    }
    if (containsPoint(o.x, o.y+o.h))
    {
      return true;
    }
    if (containsPoint(o.x+o.w, o.y+o.h))
    {
      return true;
    }

    return false;
  }

  boolean mouseOver()
  {
    return containsPoint(mouseX, mouseY);
  }

  void render()
  {
    image(image, x, y, w, h);
    if (maxHealth != 1)
    {
      float perHealth = curHealth / maxHealth;
      int bH = 6;
      int gap = 4;
      fill(0,100,0);
      rect(x,y-bH - gap, w, bH);
      fill(255 * (1-perHealth), 255 * perHealth, 0);
      rect(x,y-bH-gap,w*perHealth, bH);
      
      
      
    }
  }

  void act()
  {
    if (!collisions.isEmpty())
    {
      reactions();
      collisions.clear();
    }

    timer++;
    x = x + xSpeed;
    y = y + ySpeed;
  }

  void addCollision(GameObject o)
  {
    for (GameObject c : collisions)
    {
      if (o == c)
      {
        return;
      }
    }
    collisions.add(o);
  }

  void die()
  {
    curHealth = 0;
    isAlive = false;
  }

  void cleanUp()
  {
    if (!isAlive)
    {
      objects.remove(this);
    }
  }

  public abstract void reactions();
}
