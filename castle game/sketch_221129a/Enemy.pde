
class Enemy 
//extends BulletEnemy
{
  int x;
  float y;
  float speedY;
  int imageAlienCounter;
  PImage[] imageAlien= new PImage[2];
  Enemy(int x, float y, float speedY) {
    //super(x,y);
    this.x= x;
    this.y=y;
    this.speedY=speedY;

    for (int i=0; i<2; i++) {
      imageAlien[i]=loadImage("enemy" + (i)+ ".png");
    }
     
  }
  
  void display() {

    if (imageAlienCounter<20 ) {
      image(imageAlien[0], x, y);
    } else if (imageAlienCounter<40 ) {
      image(imageAlien[1], x, y);
    } else {
      image(imageAlien[1], x, y);
      imageAlienCounter=0;
    }
    imageAlienCounter++;
  }
  

  void move() {
    y= y-speedY;
    reset();
    
    }
    void reset (){
    if (y<350){
    y=800;
    x= (int)random(100,670);
    }
    }
    boolean collision(Bullet bullet2){
    int distanceX= abs(this.x-bullet2.x);
    float distanceY= abs(this.y-bullet2.y);
    return distanceX<20 && distanceY<20;
    }
  
  }

  
  
