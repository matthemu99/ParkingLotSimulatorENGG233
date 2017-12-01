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
  clock.addTime();
  clock.timeElapsed(timer++);
  panel = new ControlPanel(clock.day, timeElapsed);

  if (parkGate.spaces <=60) {
    parkGate.openGate();
  } else {
    parkGate.closeGate();
  }



  int rand = 0;
  for (int i = 0; i< 60; i++) {
    rand = (int)random(1, 10);
    cars[i].drawCar();
    cars[i].moveCar(rand);
    cars[i].dayIn = currentDate;
    fill(#6A6C6C);
    stroke(#6A6C6C);
    strokeWeight(0);
    rect(530, 176, 40, 100);
  }
}

void mousePressed() {
  int x1 = 475;
  int x2 = 550;
  int y = 6;
  int l = 75;
  int h = 65;

  if (mousePressed ) {
    if (mouseX>x1 && mouseX <x1+l && mouseY>y && mouseY <y+h) {
      println("mouse is pressed on play");
      loop();
    }
  }

  if (mousePressed) {
    if (mouseX>x2 && mouseX <x2+l && mouseY>y && mouseY <y+h) {
      textSize(40);
      textAlign(CENTER);
      fill(#FF2121);
      text("Paused:", 550, 350);
      text("click play to continue", 550, 400);
      println("mouse is pressed on pause");
      noLoop();
    }
  }
}



void rePaint() {
  background(#059505);
  park.drawLot();
  northStreet.drawStreet();
  southStreet.drawStreet();
  panel.drawPanel();
  parkGate.drawSign();
}