PImage player1;
class Player {
  int x;
  int y;
  Player(int x, int y) {
    this.x= x;
    this.y=y;
    player1=loadImage("defender.png");
  }
  void display() {
    image(player1, x, 200);
    player1.resize(150, 150);
  }
  void move() {
    x=mouseX;
  }
  //void keyPressed() {
  //  if (keyPressed==true && keyCode==RIGHT) {
  //    x=x+3;
  //  }
  //  if (keyPressed==true && keyCode==LEFT) {
  //    x=x-3;
  //  }
}
