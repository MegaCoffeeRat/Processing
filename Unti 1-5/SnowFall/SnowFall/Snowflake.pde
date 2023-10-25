class Snowflake      // This means we're defining a class - like we did with Robots!

{

   float x;      // This is the data belonging to the class

   float y;      // Every snowflake has its own x and y position

   

   Snowflake()      // This is the constructor.  It's called when the object is made.

   {        // Think of it like the setup() for each object.

     x = random(width);

     y = random(height);

   }

   

   void render()    // This method is called render().  That's just a programming word

   {        // that refers to drawing stuff on the screen.

     fill(255);
     ellipse(x, y, 10, 10);  // Later on we'll add another method to handle movement.

   } 

}
