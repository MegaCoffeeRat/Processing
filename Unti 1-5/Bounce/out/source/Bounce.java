/* autogenerated by Processing revision 1289 on 2023-01-18 */
import processing.core.*;
import processing.data.*;
import processing.event.*;
import processing.opengl.*;

import java.util.HashMap;
import java.util.ArrayList;
import java.io.File;
import java.io.BufferedReader;
import java.io.PrintWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.IOException;

public class Bounce extends PApplet {

float RxPos = random(50, 750);
float RyPos = random(50, 750);
float BxPos = random(50, 750);
float ByPos = random(50, 750);
float RxSpeed = random(5, 7);
float RySpeed = random(5, 7);
float BxSpeed = random(5, 7);
float BySpeed = random(5, 7);

//make random starting color
//when hit wall -> change ball color
//make hit off of each other
public void setup()
{
  /* size commented out by preprocessor */;
}

public void BlueBall()
{
  fill(0, 100, 255);
  ellipse(BxPos, ByPos, 50, 50);

  ByPos = ByPos + BySpeed;

  BxPos = BxPos + BxSpeed;
  if (BxPos > width-25)
  {
    BxSpeed = BxSpeed * -1;
  } else if (ByPos < 0+15)
  {
    BySpeed = BySpeed * -1;
  } else if (BxPos < 0+15)
  {
    BxSpeed = BxSpeed * -1;
  } else if (ByPos > height-25) {
    BySpeed = BySpeed * -1;
  }
}


public void RedBall()
{
  fill(255, 100, 0);
  ellipse(RxPos, RyPos, 50, 50);


  RxPos = RxPos + RxSpeed;
  RyPos = RyPos + RySpeed;


  if (RyPos < 0+25)
  {
    RySpeed = RySpeed *-1;
  } else if (RyPos > height-25)
  {
    RySpeed = RySpeed *-1;
  } else if (RxPos < 0+5)
  {
    RxSpeed = RxSpeed * -1;
  } else if (RxPos > width-25)
  {
    RxSpeed = RxSpeed * -1;
  }
}

public void draw()


{
  background(100);
  BlueBall();
  RedBall();
  println(RxPos);
}


  public void settings() { size(800, 800); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Bounce" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
