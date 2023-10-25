PImage minion;
PImage ban;
float xPos;
float yPos;
float xSize;
float ySize;
float ranX;
float ranY;


void setup() {
    size(800, 800);
    minion = loadImage("minion.png");
    ban = loadImage("ban.png");
    xPos = 25;
    yPos = 25;
    xSize = 200;
    ySize = 80;


    ranX = random(100, 700);
    ranY = random(100, 700);
    
}

void sizeButton()
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

void draw() {
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

