<<<<<<< HEAD
class Time {
  int totalTime = 0;
  String day;
 int counter =0;

  void addTime() {
=======
class Time{
 int totalTime = 0;
 String day;
  
  
  void addTime(){

>>>>>>> c85d226ff1236c3a1f8bfa5235b4e98dba1d1821
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