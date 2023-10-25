float[] yPosition;
int ySpeed;


void setup() {
  size(800, 600);

  ySpeed = 4;
  yPosition = new float[40];
  for (int i = 0; i < yPosition.length; i++)
  {
    yPosition[i] = random(0, 600);
    ellipse(i*20, yPosition[i], 20, 20);
  }
}

void draw() {
  background(0, 100, 255);
  for (int i = 0; i < yPosition.length; i++)
  {
    ellipse(i*20, yPosition[i], 20, 20);
    yPosition[i]--;

  }
  
  
}