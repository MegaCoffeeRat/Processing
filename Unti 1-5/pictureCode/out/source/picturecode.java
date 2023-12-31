/* autogenerated by Processing revision 1289 on 2023-01-17 */
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

public class picturecode extends PApplet {

PImage minion;
PImage ban;
float xPos;
float yPos;
float xSize;
float ySize;
float ranX;
float ranY;


public void setup() {
    /* size commented out by preprocessor */;
    minion = loadImage("minion.png");
    ban = loadImage("ban.png");
    xPos = 25;
    yPos = 25;
    xSize = 200;
    ySize = 80;


    ranX = random(100, 700);
    ranY = random(100, 700);
    
}

public void sizeButton()
{
    if(keyPressed && keyCode == '=')
    {
        xSize = xSize * 2;
        ySize = ySize * 2;
    }
    else if(keyPressed && keyCode == '-')
    {
        xSize = xSize/2;
        ySize = ySize/2;
    }
}

// void eat()
// {
//     if(xPos && yPos == ranX && ranY)
//     {
//         textSize(36);
//         text("banana eaten", 100, 100, 100, 100);
//     }
// }

public void draw() {
    background(random(255), random(255), random(255));
    image(ban, ranX, ranY, 50,50);
    image(minion, xPos,yPos, xSize, ySize);

    fill(0);
    ellipse(width/2, height/2, 50,50);




    sizeButton();
    if(keyPressed && key == 'd')
    {
        xPos = xPos + 2;
    }
    else if(keyPressed && key == 'a')
    {
        xPos = xPos - 2;
    }
    else if(keyPressed && key == 'w')
    {
        yPos = yPos - 2;

    }
    else if( keyPressed && key == 's')
    {
        yPos = yPos + 2;
    }

}   


  public void settings() { size(800, 800); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "picturecode" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
