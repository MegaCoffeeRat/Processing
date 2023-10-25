
void setup() {
  // create an ArrayList to store the exercises
  ArrayList<String> exercises = new ArrayList<String>();
  
  // add some exercises to the ArrayList
  exercises.add("push-ups");
  exercises.add("squats");
  exercises.add("plank");
  exercises.add("lunges");
  
  // generate a workout program by randomly selecting exercises from the ArrayList
  String workout = "Today's workout program: \n";
  for (int i = 0; i < 5; i++) {
    int randomIndex = (int) random(exercises.size());
    workout += "- " + exercises.get(randomIndex) + "\n";
  }
  
  // display the workout program in the console
  println(workout);
}

void draw() {
  // empty
}
