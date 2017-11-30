// #Author: Matthew M.
// #Author: Phillip M.

import java.util.Arrays;
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
PriceCalculator cost;
ControlPanel panel;
boolean pause;


///////// TO BE DELETED!!/////////////

Date date1 = new Date(2, 3, 3, true);
Date date2 = new Date(2, 6, 5, true);
/////////


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
  parkGate = new Gate(0, 60);
  parkGate.openGate();
  panel = new ControlPanel("", 0);
  for (int i = 0, j =0; i < 60; i++, j-= 150) {
    cars[i] = new Car(j + (int)random(1, 100)*-1, 1);
  }
  ///////////TEST AREA/////////////////////////

  cost = new PriceCalculator (date1, date2);
  print( cost.calculateFee());




  /////////////////////////////////////////////
}

void draw() {
  rePaint();
  parkGate.openGate();
  clock.addTime();
  clock.timeElapsed(timer++);
  panel = new ControlPanel(clock.day, timeElapsed);

  for (int i = 0; i< 60; i++) {
    cars[i].drawCar();
    cars[i].moveCar();
    //cars[1].rotateCar();
  }
}

void mousePressed() {
  int x1 = 475;
  int y = 6;
  int l = 75;
  int h = 65;
  if (mousePressed ) {
      if (mouseX>x1 && mouseX <x1+l && mouseY>y && mouseY <y+h) {
        println("mouse is pressed on play");
        loop();
      }
    }
  
  pause = true;
}



void rePaint() {
  background(#059505);
  park.drawLot();
  northStreet.drawStreet();
  southStreet.drawStreet();
  panel.drawPanel();
  parkGate.drawSign();
}