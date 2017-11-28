// #Author: Matthew M.
// #Author: Phillip M.
//
ParkingLot park;
Street northStreet; 
Street southStreet; 
Gate parkGate;
Date currentDate;

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
  currentDate = new Date(0, 1, 0, true);
  // parkGate = new Gate();
  // parkGate.closeGate();
}

void draw() {
  clock(timeCounter++);
  println(currentDate, timeElapsed);
}
int timeCounter =0;
int timeElapsed = 0;
int counter = 0;

void clock(int t) {

  float increment = 0.025; 
  if (t >= 40*increment) {
    currentDate.addMinute();
    if (counter == 60) {
      timeElapsed++;
      counter = 0;
    }

    counter ++;
    timeCounter = 0;
  }
}