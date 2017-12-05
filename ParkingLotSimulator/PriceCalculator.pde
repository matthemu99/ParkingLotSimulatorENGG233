// #Author: Matthew M.
// #Author: Phillip M.

class PriceCalculator {
  Date enter;
  Date exit;
  float cost = 1.5;

  PriceCalculator(Date enter, Date exit) {
    this.enter = enter;
    this.exit = exit;
  }

  int counter =0;
  double calculateFee() {
    while (enter.equal(exit) == false) {

      if (counter<60) {
        enter.addMinute();
        counter++;
      } else if (counter==60) {
        if (enter.today == 6) {
          cost+=1.5;
        } else {
          cost+=3.0;
        }
        counter = 0;
        enter.addMinute();
      }
    }

    return cost;
  }
}