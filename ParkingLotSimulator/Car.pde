// #Author: Matthew M.
// #Author: Phillip M.

class Car {
  float r ;
  float g ;
  float b;
  int toggle;
  Date dayIn;
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
    if (x >= 540) {
      toggle = 1;

      this.x =540;
      this.y++;
      if (y >= 35) {
        y= 85;
      }
    }
  }



  void drawCar() {
    switch(toggle) {

    default:
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
      break;
    case 1:
      fill(r, g, b);
      stroke(0);
      strokeWeight(1);
      rect(x, 103+y, 25, 35);
      fill(#83D7F0);
      rect(x+5, 108+y, 15, 7);
      rect(x+5, 123+y, 15, 7);
      fill(0);
      line(x-1, 108+y, x-1, 115+y);
      line(x-1, 123+y, x-1, 130+y);
      line(x+26, 108+y, x+26, 115+y);
      line(x+26, 123+y, x+26, 130+y);
      fill(#FCFC1F);
      ellipse(x+7, y+136, 3, 3);
      ellipse(x+19, 136+y, 3, 3);
      break;
    }
  }
}