/* autogenerated by Processing revision 1289 on 2023-01-31 */
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

public class pixel extends PApplet {

int size = 32;
int text = 32;
public void drawBoxes()
{
    for(int i=0; i < width; i=i+size)
    {
        for(int j=0; j < height; j=j+size)
        {
            noStroke();
            fill(random(255), random(255), random(255));
            rect(i, j, size,size);
        }
    }
    counter();
}
public void mousePressed() {
    
    if(mouseButton == LEFT && size > 1)
    {
            size = size / 2;
            text = text /2;
    }
    else if(mouseButton == RIGHT && size < 512)
    {
            size = size*2;
            text = text*2; 
    }
    drawBoxes();
    }
public void setup()
{
    /* size commented out by preprocessor */;
    drawBoxes();
}

public void counter()
{
    textSize(48);
    fill(0);
    text(text, 50,50 );
    fill(255,255,255);
    text(text, 52,48 );
}

public void draw()
{

}


  public void settings() { size(512, 512); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "pixel" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
