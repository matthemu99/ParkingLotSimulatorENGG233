// #Author: Matthew M.
// #Author: Phillip M.

class Street {
  String street;


  Street(String street) {
    this.street = street;
  }


  void drawStreet() {
    if (street.equals("north")) {
      strokeWeight(5);
      stroke(255);
      fill(#6A6C6C);
      rect(-5, 80, width +10, 70);
      rect((width/2)-25, 150, 50, 20); 
      strokeWeight(0);
      stroke(#6A6C6C);
      rect((width/2)-22, 140, 45, 50);
      fill(255);
      textSize(14);
      textAlign(CENTER);
      text("North City Street", width/2, 120);
    }
    if (street.equals("south")) {
      strokeWeight(5);
      stroke(255);
      fill(#6A6C6C);
      rect(-5, 620, width +10, 70);
      rect((width/2)-25, 600, 50, 20); 
      strokeWeight(0);
      stroke(#6A6C6C);
      rect((width/2)-22, 590, 45, 50);
      fill(255);
      textSize(14);
      textAlign(CENTER);
      text("South City Street", width/2, height-40);
    }
  }
}