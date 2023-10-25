int size = 32;
int text = 32;
void drawBoxes()
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
void mousePressed() {
    
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
void setup()
{
    size(512,512);
    drawBoxes();
}

void counter()
{
    textSize(48);
    fill(0);
    text(text, 50,50 );
    fill(255,255,255);
    text(text, 52,48 );
}

void draw()
{

}
