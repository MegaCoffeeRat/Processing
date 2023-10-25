int state;
void EquipmentSelector(int num)
{
  buttons();
  if (num == '1') {
    state = 1;
    //somehow pull a fuckig 
  } else if (num == '0')
  {
    state = 2;
  }
}


void buttons()
{
  float X1 = width/2;
  float X2 = width/2;
  float Y1 = height/2-209;
  float Y2 = height/2+93;
  textAlign(CENTER, CENTER);

  strokeWeight(2);
  background(background);
  fill(155);
  rect(x1, y1, 500, 100);
  fill(0);
  textSize(36);
  text("I Do Have Gym Equipment", X1, Y1);



  strokeWeight(2);
  fill(155);
  rect(x2, y2, sizeX, sizeY);
  fill(0);
  textSize(36);
  text("I Do Not Have Gym Equipment", X2, Y2);
}
