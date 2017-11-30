
class Time {
  int totalTime = 0;
  String day;
  int counter =40;
  
  void addTime() {
    time.addMinute();
    day = time.toString();
    
   // fill(0);
  //  text(day, 900, 30);

  }


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
}