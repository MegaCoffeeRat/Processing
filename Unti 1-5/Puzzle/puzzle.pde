int[] boxes;
int size = 200;
// int index = mouseX/size;




void setup()
{
    size(1400,200);
    boxes = new int[7];
    for(int i = 0; i < boxes.length; i++)
    {
        boxes[i] = (int) random(0,3);
        rect(i*size, boxes[i], size,size);
    }
}



void drawBoxes()
{
    for(int i = 0; i < boxes.length; i++)
    {
        if(boxes[i] == 0)
        {
            fill(255,0,0);

        }
        else if(boxes[i] == 1)
        {
            fill(0,255,0);

        }
        else if(boxes[i] == 2)
        {
            fill(0,0,255);
        }
        rect(i*size, 0,size, size );


        

    }
}



void nextColor(int index)
{
    boxes[index]++;
    if(boxes[index] > 3)
    {
        boxes[index] = 0;
    }
}



void mousePressed() {
      int index = mouseX/size;

    if(index > 0)
      {
       nextColor(index-1); 
      }
    if (index < boxes.length - 1)
    {
        nextColor(index + 1);

    }


}



void draw()
{
    background(100);
    drawBoxes();
}