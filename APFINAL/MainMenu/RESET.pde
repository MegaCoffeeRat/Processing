void resetButton()
{
  strokeWeight(3);
  fill(155);
  rect(100,500,115,50);
   
  textAlign(RIGHT);
  fill(255,0,0);
  textSize(30);
  text("RESET", 200,535);
  
  if (mouseX > 100 && mouseX < 100 + 100 && mouseY > 500 && mouseY < 500 + 50)
    {
      if(state == 3 || state == 5 || state == 4 || state == 6)
      {
        setup();
        mousePressed();
      }
    }

}



void exitButton()
{
  strokeWeight(3);
  fill(155);
  rect(100,300,115,50);
   
  textAlign(RIGHT);
  fill(255,0,0);
  textSize(30);
  text("EXIT", 185,335);
  
  if (mouseX > 100 && mouseX < 100 + 100 && mouseY > 300 && mouseY < 300 + 50)
    {
      if(state == 3 || state == 5 || state == 4 || state == 6 || state == 0 || state == 2)
      {
        exit();
      }
    }
}
