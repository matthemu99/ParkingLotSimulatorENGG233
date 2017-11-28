class Time{
 int totalTime = 0;
 String day;
  
  
  void addTime(){
    time.addMinute();
    day = time.toString();
    println(day);
    println(totalTime);
  
}


}