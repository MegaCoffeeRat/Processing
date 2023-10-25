/* autogenerated by Processing revision 1289 on 2023-01-13 */
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

public class Paint extends PApplet {

int red = (int)random(255);
int green = (int)random(255);
int blue = (int)random(255);

public void setup()
{
  /* size commented out by preprocessor */;
  background(red, green, blue);
}


public void paint()
{


  if (keyPressed && (key == ('1')))
  {
    if (mousePressed && mouseButton == LEFT) {
      fill((int)random(255), (int)random(255), (int)random(255));
      ellipse(mouseX, mouseY, 25, 25);
    }
  } else if (keyPressed && key == ('2'))
  {
    if (mousePressed && mouseButton == LEFT) {
      fill((int)random(255), (int)random(255), (int)random(255));
      ellipse(mouseX, mouseY, 50, 50);
    }
  } else if (keyPressed && key == ('3'))
  {
    if (mousePressed && mouseButton == LEFT) {
      fill((int)random(255), (int)random(255), (int)random(255));
      ellipse(mouseX, mouseY, 100, 100);
    }
  }
}





public void erase() {
  if (mousePressed && mouseButton == RIGHT)
  {
    noStroke();
    fill(red, green, blue);
    ellipse(mouseX, mouseY, 50, 50);
  }
}




public void draw()
{

  paint();

  erase();
}


  public void settings() { fullScreen(); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Paint" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}