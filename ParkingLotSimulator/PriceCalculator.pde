// #Author: Matthew M.
// #Author: Phillip M.

class PriceCalculator {
  float price;
  int dayOut;
  float hourOut;
  float hoursElapsed;
  boolean beforeNoonOut;
  int dayIn;
  float hourIn;
  boolean beforeNoonIn;
  float stallHour;
  float stallDay;
  
  // (out, in)
  PriceCalculator(Date current,Date timeIn) {

    this.dayOut = current.today;
    this.hourOut = current.hour;
    this.beforeNoonOut = current.before_noon;
    this.dayIn = timeIn.today;
    this.hourIn = timeIn.hour;
    this.beforeNoonIn = timeIn.before_noon;
    
  }
void CalcPrice(){
if (dayIn == dayOut && beforeNoonOut == beforeNoonIn){
  stallHour = hourOut - hourIn; 
}
}
  
}