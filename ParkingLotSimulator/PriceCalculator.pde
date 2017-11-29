// #Author: Matthew M.
// #Author: Phillip M.

class PriceCalculator {
int counter;
  
  
  
  
void CalculatePrice(Date enter, Date exit){
    while (enter != exit) {

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
  }
}