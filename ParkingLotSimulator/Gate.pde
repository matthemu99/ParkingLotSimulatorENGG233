// #Author: Matthew M.
// #Author: Phillip M.
class Gate {
  boolean status = false;
  int posX;
  int posY;

  float fee;

  Gate( int x, int y   ) {
    this.posX = x;
    this.posY = y;
    
if (status ==

}


  void openGate() {
    status = true;
  }

  void closeGate() {
    status = false;
  }
}