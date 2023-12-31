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

public class Gravity extends PApplet {

float red;
float green;
float blue;

float xPos;
float yPos;

float xSpeed;
float ySpeed;

float gravity;
float friction;

int current = 0;
int record = 0;
int attempt = 0;


public void setup()
{
    /* size commented out by preprocessor */;
    red = random(255);
    green = random(255);
    blue = random(255);

    xPos = 25;
    yPos = 100;

    xSpeed = random(1,7);
    ySpeed = 0.5f;

    gravity = 0.7f;
    friction = random(0.7f, 0.9f);
}



public void mainFunc()
{
    background(red, green, blue);

    fill(255,0,0);
    ellipse(xPos, yPos, 50, 50);

    fill(0,0,0);
    textSize(36);
    text("Current: " + current, 100, 100);

    textSize(36);
    text("Record: " + record, 550, 100);

    text("attempt: " + attempt, 0,25);

    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
    ySpeed = ySpeed + gravity;

    if(yPos > height-30)
    {
        ySpeed = abs(ySpeed)* -1;
        ySpeed = ySpeed * friction;
        current++;
    }


    if(xPos > width-25)
    {
        xPos = 25;
        yPos = 100;
        current = 0;
        xSpeed = random(1,7);
        attempt++;


    }


}



public void draw()
{
    mainFunc();
    

    while(current > record)
    {
        record++;        
    }
}


  public void settings() { size(800, 800); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Gravity" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
