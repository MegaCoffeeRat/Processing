String[] myStringArray = {"apple", "banana", "orange"};
ArrayList<String> myArrayList = new ArrayList<String>();





  
  // display the workout program in the console
  
  
  
  
void setup()
{
  for (int i = 0; i < myStringArray.length; i++) {
  myArrayList.add(myStringArray[i]);
}
  String workout = "Today's workout program: \n";
  for (int i = 0; i < 5; i++) {
    int randomIndex = (int) random(myArrayList.size());
    workout += "- " + myArrayList.get(randomIndex) + "\n";
  }
    println(workout);

}
