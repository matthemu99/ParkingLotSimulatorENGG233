
class Time {
  int totalTime = 0;
  String day = " ";
  int counter =40;

  void addTime(int t) {
    //day = time.toString();

    float increment = 1; 
    if (t >= 40*increment) {
      if (counter == 60) {

        time.addMinute();
        day = time.toString();
        counter = 0;
      }

      counter += 10;
    }
  }

  /*
  void timeElapsed(int t) {
   float increment = 1; 
   if (t >= 40*increment) {
   if (counter == 60) {
   timeElapsed++;
   counter = 0;
   }
   
   counter ++;
   }
   }
   */
}