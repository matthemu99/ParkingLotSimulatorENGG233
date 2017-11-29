// #Author: Matthew M.
// #Author: Phillip M.

class Car {
  float r ;
  float g ;
  float b;

  int speed = 0;
  int x = 0;

  Car(int x, int speed) {
    this.speed = speed;
    this.x = x;
    r = random(0, 255);
    g = random(0, 255);
    b = random(0, 255);
  }
  void moveCar() {
    this.x += this.speed;
  }

  void drawCar() {
    moveCar(); 
    fill(r, g, b);
    stroke(0);
    strokeWeight(1);
    rect(x, 103, 35, 25);
    fill(#83D7F0);
    rect(x+5, 108, 7, 15);
    rect(x+20, 108, 7, 15);
    fill(0);
    line(x+5, 102, x+12, 102);
    line(x+5, 129, x+12, 129);
    line(x+20, 102, x+27, 102);
    line(x+20, 129, x+27, 129);
    fill(#FCFC1F);
    ellipse(x+33, 110, 3, 3);
    ellipse(x+33, 122, 3, 3);
  }
}