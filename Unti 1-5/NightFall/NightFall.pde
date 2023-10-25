void setup()
{
  size(800, 800);
}



void moonFilter()
{
  noStroke();
  fill(0, 0, 80);
  ellipse(90, 80, 100, 100);
}
void Sky()
{
  noStroke();
  fill(135, 206, 235);
  rect(0, 0, width, height);
}
void nSky()
{
  noStroke();
  fill(0, 0, 153);
  rect(0, 0, width, height);
}
void grass()
{
  //noStroke();
  fill(86, 125, 70);
  rect(0, 600, 800, 250);
}
void house()
{
  fill(127);
  rect(200, 200, 400, 400);
  triangle(200, 200, 450, 100, 600, 200);
  //houseDetail
  fill(128, 64, 0);
  rect(350, 400, 100, 200);
  fill(0);
  ellipse(435, 500, 10, 10);
}
void sun() {
  fill(255, 255, 0);
  ellipse(75, 80, 100, 100);
}
void moon()
{
  fill(255, 255, 255);
  ellipse(75, 80, 100, 100);
  noStroke();
}


void onNight() {
  nSky();
  //dark grass
  fill(0, 51, 0);
  rect(0, 600, 800, 250);
  house();

  fill(0, 4, 55, 190);
  rect(0, 0, width, height);
}
void onDay()
{
  Sky();
  grass();
  house();
}






void draw()
{
  if (mousePressed)
  {
    onNight();
    moon();
    moonFilter();

    fill(255, 255, 0);
    rect(260, 250, 75, 140);
    rect(460, 250, 100, 90);
  } else {
    onDay();
    sun();
    fill(255, 255, 255);
    rect(260, 250, 75, 140);
    rect(460, 250, 100, 90);
  }
}
