// #Author: Matthew M.
// #Author: Phillip M.
//
Date time = new Date (0,0,0,true);
ParkingLot park;
Street northStreet; 
Street southStreet; 
Gate parkGate;
Date currentDate;
Time clock;
int totalTime;

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
  clock = new Time();
  parkGate = new Gate(78,60);
   parkGate.closeGate();
}

void draw() {
  
 clock.addTime();
 clock.timeElapsed(totalTime++);
}