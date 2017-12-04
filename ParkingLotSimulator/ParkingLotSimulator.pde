// #Author: Matthew M.
// #Author: Phillip M.
import javax.swing.JOptionPane;
Date time = new Date (0, 0, 0, true);
ParkingLot park;
Street northStreet; 
Street southStreet; 
Gate parkGate;
Date currentDate;
Date timeIn;
Time clock;
int totalTime;
int timer = 0;
int timeElapsed =0;
Car cars[];
PriceCalculator cost;
ControlPanel panel;
boolean lotFull;
int carAmount;
float netProfit =0;
int customers =0;


void setup() {
  try {
    carAmount = Integer.parseInt(JOptionPane.showInputDialog("Please enter how many cars you want: "));
    cars = new Car[carAmount];
  }
  catch (NumberFormatException e) {
    System.err.println("Caught NumberFormatException: " + e.getMessage());
    System.exit(0);
  }

  size(1100, 700);
  background(#059505);

  park = new ParkingLot();
  park.drawLot();
  southStreet = new Street("south");
  northStreet= new Street("north");
  southStreet.drawStreet();
  northStreet.drawStreet();
  //currentDate = new Date(0, 1, 0, true);
  currentDate = time;
  clock = new Time();
  parkGate = new Gate(0, 60);
  parkGate.openGate();
  panel = new ControlPanel("", 0);
  for (int i = 0, j =0; i < carAmount; i++, j-= 150) {
    cars[i] = new Car(j + (int)random(1, 100)*-1, 1);
  }

}

void draw() {
  rePaint();
  clock.addTime();
  clock.timeElapsed(timer++);
  currentDate = time;
  panel = new ControlPanel(clock.day, timeElapsed);
  parkGate.lotAvailability();
  if (parkGate.spaces <=60) {
    parkGate.openGate();
  } else {
    parkGate.closeGate();
  }




  for (int i = 0; i< carAmount; i++) {
    int rand = (int)random(1, 10);
    cars[i].drawCar();
    cars[i].moveCar(rand);
    fill(#6A6C6C);
    stroke(#6A6C6C);
    strokeWeight(0);
    rect(530, 176, 40, 100);
    if (cars[i].x >= width || ( cars[i].x >= width && cars[i].y == 445) ) {
      boolean respawn = true;

      for (int x=0; x<carAmount; x++) {


        if (cars[x].x < 0 && cars[i].x > -160) {


          respawn = false;
        }
      }
      if (respawn == true) {
        cars[i].x = (int)random(-130,-40); 
        cars[i].y = 0;
      }
    }
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