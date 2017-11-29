// #Author: Matthew M.
// #Author: Phillip M.
//
Date time = new Date (0, 0, 0, true);
ParkingLot park;
Street northStreet; 
Street southStreet; 
Gate parkGate;
Date currentDate;
Time clock;
int totalTime;
int timer = 0;
int timeElapsed =0;
Car cars[] = new Car[60];

//PriceCalculator cost;
//etc... 



void setup() {
  size(1100, 700);
  background(#059505);

  park = new ParkingLot();
  park.drawLot();
  southStreet = new Street("south");
  northStreet= new Street("north");
  southStreet.drawStreet();
  northStreet.drawStreet();
  currentDate = new Date(0, 1, 0, true);
  clock = new Time();
  parkGate = new Gate(78, 60);
  parkGate.closeGate();
  for (int i = 0; i < 20; i++) {
    cars[i] = new Car((int)random(1, 2000)*-1, 1);
  }
}

void draw() {
  rePaint();

  clock.addTime();
  clock.timeElapsed(timer++);

  for (int i = 0; i< 20; i++) {
    cars[i].moveCar();
  }
  
  
}
void rePaint() {
  background(#059505);
  park.drawLot();
  northStreet.drawStreet();
  southStreet.drawStreet();
}