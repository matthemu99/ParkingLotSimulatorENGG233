// #Author: Matthew M.
// #Author: Phillip M.

class Car {
  float r ;
  float g ;
  float b;

  int speed = 0;
  int x = 0;
  int y = 0;
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
  
 
  void rotateCar(){

        rotate(PI/2.0);
 }
  
  
  
  

  void drawCar() {

    fill(r, g, b);
    stroke(0);
    strokeWeight(1);
    rect(x, 103+y, 35, 25);
    fill(#83D7F0);
    rect(x+5, 108+y, 7, 15);
    rect(x+20, 108+y, 7, 15);
    fill(0);
    line(x+5, 102+y, x+12, 102+y);
    line(x+5, 129+y, x+12, 129+y);
    line(x+20, 102+y, x+27, 102+y);
    line(x+20, 129+y, x+27, 129+y);
    fill(#FCFC1F);
    ellipse(x+33, 110+y, 3, 3);
    ellipse(x+33, 122+y, 3, 3);
  }
}

/*
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

*/