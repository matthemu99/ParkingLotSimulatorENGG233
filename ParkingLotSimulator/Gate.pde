// #Author: Matthew M.
// #Author: Phillip M.
class Gate {
  boolean status = false;
  int PosX;
  int PosY;
  float fee;
  
 
  void openGate() {
    status = true;
    strokeWeight(5);
    stroke(0);
    line(530, 172, 560, 145);
    line(530, 597, 560, 570);
    noStroke();
    fill(#11E000);
    ellipse(530, 172, 5, 5);
    ellipse(530, 597, 5, 5);
  }

  void closeGate() {
    status = false;
    strokeWeight(5);
    stroke(0);
    line(530, 172, 570, 172);  // 530 // 172
    line(530, 597, 560, 570);  // 530 // 597
    noStroke();
    fill(#F21800);
    ellipse(530, 172, 5, 5);
    fill(#11E000);
    ellipse(530, 597, 5, 5);
  }
}