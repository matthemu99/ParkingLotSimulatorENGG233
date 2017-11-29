// #Author: Matthew M.
// #Author: Phillip M.
class Gate {
  boolean status = false;
  int PosX = 530;
  int PosYN = 172;
  int PosYS = 597;
  float fee;
  int spaces;
  Gate(float fee, int spaces) {
    this.fee = fee;
    this.spaces = spaces;
    
  }


void drawSign(){
  
  textSize(10);
    textAlign(LEFT);
    stroke (0);

    strokeWeight(3);
    fill(#516AE0);
    rect(PosX -100, PosYN-20, 92, 32);
    fill(255 );
    rect(PosX -100, PosYN-20, 92, 16);
    fill(0);
    text("ENTRANCE", PosX-95, PosYN-8); 
    text("Space:  " + spaces, PosX-95, PosYN+8); 

    strokeWeight(3);
    fill(#516AE0);
    rect(PosX -100, PosYN+415, 92, 32);
    fill(255 );
    rect(PosX -100, PosYN+415, 92, 16);
    fill(0);
    text("EXIT", PosX-95, PosYN+428); 
    text("Fee = $" + fee, PosX-95, PosYN+443);
  
}
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