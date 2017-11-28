// #Author: Matthew M.
// #Author: Phillip M.
class Gate {
  boolean status = false;
  int PosX = 530;
  int PosYN = 172;
  int PosYS = 597;
  float fee;
  
 
  void openGate() {
    status = true;
    strokeWeight(5);
    stroke(0);
    line(PosX, PosYN, 560, 145);
    line(PosX, PosYS, 560, 570);
    noStroke();
    fill(#11E000);
    ellipse(PosX, PosYN, 5, 5);
    ellipse(PosX, PosYS, 5, 5);
  }

  void closeGate() {
    status = false;
    strokeWeight(5);
    stroke(0);
    line(PosX, PosYN, 570, 172);  // 530 // 172
    line(PosX, PosYS, 560, 570);  // 530 // 597
    noStroke();
    fill(#F21800);
    ellipse(PosX, PosYN, 5, 5);
    fill(#11E000);
    ellipse(PosX, PosYS, 5, 5);
  }
}