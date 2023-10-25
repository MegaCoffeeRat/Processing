void displayWorkout(String selection)
{
  if (selection == "upperGym")
  {
    refresh();
    ArrayList<String> UpperGym = new ArrayList<String>();
    UpperGym.add("Lateral Pulldown" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    UpperGym.add(" Inclined Bench Press"  + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    UpperGym.add("Cable Row"  + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    UpperGym.add("Shoulder Press"  + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    UpperGym.add("Bicep Hammer Curl"  + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    UpperGym.add("Forearm Curl"  + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    Collections.shuffle(UpperGym);
    String output = "";
    for (String exercise : UpperGym)
    {
      output += exercise + "\n";
    }
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(36);
    text(output, width/2, height/2);
    state = 3;
  } else if (selection == "lowerGym")
  {
    refresh();
    ArrayList<String> LowerGym = new ArrayList<String>();
    LowerGym.add("Run 1 Mile");
    LowerGym.add("Bulgarian Lunges: " + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    LowerGym.add("Calf Raises" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    LowerGym.add("Squats" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    LowerGym.add("Leg Raises" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    LowerGym.add("Lunges" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    LowerGym.add("DeadLifts" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    Collections.shuffle(LowerGym);
    String output = "";
    for (String exercise : LowerGym) {
      output += exercise + "\n";
    }

    fill(0);
    textAlign(CENTER, CENTER);
    textSize(36);
    text(output, width/2, height/2);

    state = 4;
  } else if (selection == "lowerNoGym")
  {
    refresh();
    ArrayList<String> LowerNoGym = new ArrayList<String>();
    LowerNoGym.add("High- Jump" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    LowerNoGym.add("Calf Raises on an Edge" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    LowerNoGym.add("Body Weight Squats" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    LowerNoGym.add("Lunges" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    LowerNoGym.add("Bulgarian Lunges" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    LowerNoGym.add("40 Flutter Kicks" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    Collections.shuffle(LowerNoGym);
    String output = "";
    for (String exercise : LowerNoGym) {
      output += exercise + "\n";
    }
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(36);
    text(output, width/2, height/2);

    state = 6;
  } else if (selection == "upperNoGym")
  {
    refresh();
    ArrayList<String> UpperNoGym = new ArrayList<String>();
    UpperNoGym.add(" Regular Shoulder Width Push-Ups"  + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    UpperNoGym.add("Diamond Push-Ups" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    UpperNoGym.add("Plank 45 Seconds" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    UpperNoGym.add("Chair Sit 45 Seconds" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    UpperNoGym.add("Mountain Climber - 60 Seconds" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    UpperNoGym.add("Crunches" + " " + (int)random(2, 4) + "*" + (int)random(8, 12));
    Collections.shuffle(UpperNoGym);
    String output = "";
    for (String exercise : UpperNoGym) {
      output += exercise + "\n";
    }
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(36);
    text(output, width/2, height/2);

    state = 5;
  }
}

void refresh()
{
  textAlign(CENTER, CENTER);
  background(background);
  fill(255);
  rect(width/2-295, height/2-265, 600, 500);
  WeightMessage();
  delay(10);
  ImportantMessage();
}
