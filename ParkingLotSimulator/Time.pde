class Time {
  int totalTime = 0;
  String day;
 int counter =0;

  void addTime() {
    time.addMinute();
    day = time.toString();
    println(day);
    println(totalTime);
  }
 
  
  void timeElapsed(int t) {
    float increment = 0.025; 
    if (t >= 40*increment) {
      if (counter == 60) {
        timeElapsed++;
        counter = 0;
      }

      counter ++;
      timeCounter = 0;
    }
  }
}