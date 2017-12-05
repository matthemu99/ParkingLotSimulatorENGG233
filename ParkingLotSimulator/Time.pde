
class Time {
  int totalTime = 0;
  String day = " ";
  int counter =40;
  int currentHour = currentDate.hour;

  void addTime(int t) {
    float increment = 1; 
    if (t >= 40*increment) {
      if (counter == 60) {

        time.addMinute();
        day = time.toString();
        counter = 0;
      }

      counter += 10;
    }
    if (currentHour != currentDate.hour) {
      timeElapsed++;
      currentHour = currentDate.hour;
    }
  }



  int DayOrNight() {
    if ((currentDate.hour >= 5 && currentDate.before_noon==false && currentDate.hour !=12)||(currentDate.hour <= 8 && currentDate.before_noon==true && currentDate.hour !=12)) {
      return #026C26;
    } else {
      return #059505;
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