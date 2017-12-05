// #Author: Matthew M.
// #Author: Phillip M.

class ControlPanel {
  String display ;
  int x1 = 475;
  int x2 = 550;
  int y = 6;
  int l = 75;
  int h = 65;
  int totalHours;

  ControlPanel(String day, int totalHours) {
    this.display = day;
    this.totalHours = totalHours;
  }



  void drawPanel() {
    fill(0);
    strokeWeight(3);
    fill(190);
    rect(20, 6, 200, 65);

    rect(700, 6, 175, 65); // simulation values box

    fill(#3AFC30);
    rect(x1, y, l, h); //play box
    fill(#FF2121);
    rect(x2, y, l, h); // stop box

    fill(0);
    textAlign(LEFT);
    text("Parking Rates:", 25, 25);
    text("$3.00 / Hour  Mon - Sat", 25, 45);
    text("$1.50 / Hour  Sun", 25, 65);

    text("Simulation Values:", 705, 23);
    textSize(12);
    text("Net Profits:      \t$" + netProfit, 705, 38);
    text("Time Elapsed:    \t" + totalHours+  " Hours", 705, 52);
    text("Customers:        \t" + customers, 705, 66);

    textSize(20);
    text("Play", 495, 45);
    text("Pause", 560, 45);

    text(display, 895, 30);
  }
}