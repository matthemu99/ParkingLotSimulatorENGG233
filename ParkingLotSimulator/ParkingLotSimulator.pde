// #Author: Matthew M.
// #Author: Phillip M.

ParkingLot park;
Street northStreet; 
Street southStreet; 
Gate parkGate;
//PriceCalculator cost;
//etc... 
int x = 0;

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
  //strokeWeight(5);
  //stroke(#ED0800);
  //line(200,145,200,85);
  
}

void draw() {
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
 fill(255);
 stroke(0);
 strokeWeight(1);
rect(x,103,35,25);
rect(x+5,108,7,15);
line(x+5,102,x+12,102);
line(x+5,129,x+12,129);
rect(x+20,108,7,15);
line(x+20,102,x+27,102);
line(x+20,129,x+27,129);
ellipse(x+33,110,3,3);
ellipse(x+33,122,3,3);
  x++;
}