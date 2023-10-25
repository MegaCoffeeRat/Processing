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


void setup()
{
    size(800, 800);
    red = random(255);
    green = random(255);
    blue = random(255);

    xPos = 25;
    yPos = 100;

    xSpeed = random(1,7);
    ySpeed = 0.5;

    gravity = 0.7;
    friction = random(0.7, 0.9);
}



void mainFunc()
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



void draw()
{
    mainFunc();
    

    while(current > record)
    {
        record++;        
    }
}