// #Author: Matthew M.
// #Author: Phillip M.


ParkingLot park;
//Street northStreet;
//Street southStreet;
//PriceCalculator cost;
//etc... 


void setup() {
  size(1100, 700);
  background(#059505);
  strokeWeight(5);
  stroke(255);
  fill(#6A6C6C);
  rect(125, 125, 850, 450);
  park = new ParkingLot();
  park.drawLot();
}

void draw() {
}