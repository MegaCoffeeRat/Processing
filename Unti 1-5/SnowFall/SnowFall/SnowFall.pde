int ySpeed = 3;
Snowflake[] snowflakes;



void setup()

{

  size(800, 600);

   


  snowflakes = new Snowflake[500];

  

  for(int i = 0; i < snowflakes.length; i++)

  {

    snowflakes[i] = new Snowflake();

  }

  

}



void draw()

{

  background(80, 140, 255);

  


  for(int i = 0; i < snowflakes.length; i++)

  {

     snowflakes[i].render();

  }

  for(int i = 0; i < snowflakes.length; i++)

  {

     //snowflakes[i].update();

     snowflakes[i].render();

  }

}



void update()
{
   
}
