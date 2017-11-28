// #Author: Matthew M.
// #Author: Phillip M.
//
ParkingLot park;
Street northStreet; 
Street southStreet; 
Gate parkGate;
//PriceCalculator cost;
//etc... 



void setup() {
  size(1100, 700);
  background(#059505);
  strokeWeight(5);
  stroke(255);
  fill(#6A6C6C);
  rect(150, 172.5, 800, 425);
  park = new ParkingLot();
  park.drawLot();
  southStreet = new Street("south");
  northStreet= new Street("north");
  southStreet.drawStreet();
  northStreet.drawStreet();
  parkGate = new Gate();
  parkGate.closeGate();
}

void draw() {
  clock(timeCounter);
  println(totalHour);
}
int timeCounter =0;
int totalHour =0;
void clock(int t) {

  if (t >= 40) {

    totalHour += 1;
    timeCounter = 0;
  }
  timeCounter++;
}