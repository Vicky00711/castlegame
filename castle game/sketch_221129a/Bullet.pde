PImage bullet1;
class Bullet 
//extends BulletEnemy 
{
  int x;
  float y;
  
  Bullet(int x, float y ) {
    //super(x,y);
    this.x=x;
    this.y=y;
     bullet1= loadImage("bullet2.png");
  }
  
  void display() {
   
    
    image(bullet1, x,y);
    bullet1.resize(40,40);
    
  }
  
  void move() {
    y= y+5;
  }
  
}
