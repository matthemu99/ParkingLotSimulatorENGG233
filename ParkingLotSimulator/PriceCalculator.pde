// #Author: Matthew M.
// #Author: Phillip M.

class PriceCalculator {
  float price;
  int day;
  float hour;
  float hoursElapsed;
  boolean beforeNoon;
  PriceCalculator(Date current, int hoursElapsed) {

    this.day = current.today;
    this.hour = current.hour;
    this.beforeNoon = current.before_noon;
    this.hoursElapsed = hoursElapsed;
  }

  void parkingFee() {
    if (day <=5 && ((beforeNoon == true&& hour >=8) || (beforeNoon ==false && hour <= 6) )) {
      this.price = hour * 3.00;
    } else if (day ==6 && ((beforeNoon == true&& hour >=8) || (beforeNoon ==false && hour <= 6) )) {
      this.price = hour * 2.00;
    } else {
      this.price = hour * 1.50;
    }
  }
}