PImage backgroundImage;
final int START= 0;
final int MOVING=1;
final int GAMEOVER=2;
int gameMode;
//ArrayList<BulletEnemy> bulletEnemy1=new ArrayList<>();
ArrayList<Enemy> enemy1=new ArrayList<>();
ArrayList<Bullet> bullet2=new ArrayList<>();
Player player;

void setup() {
  size(800, 800);
  
    
   
  backgroundImage= loadImage("castle3.jpeg");
  backgroundImage.resize(width, height);
  imageMode(CENTER);
  //bulletEnemy1.add(new Enemy((int)random(100, 800), 800, random(0.5, 1.2)));
  //bulletEnemy1.add(new Bullet(-10, 0));

  //for (int i=0; i<6; i++) {
  //  alienList.add(new Enemy((int)random(100, 800), 800, random(0.5, 1.2)));
  //}
  for (int i=0; i<6; i++) {
    //bulletEnemy1.add(new Enemy((int)random(100, 800), 800, random(0.5, 1.2)));
    enemy1.add (new Enemy((int)random(100, 800), 800, random(0.5, 1.2)));
  }

  player= new Player(200, 200 );
}
void draw() {
  switch(gameMode) {
  case START:
    background(0,0,255);
    text("To start the game press spacebar", 200,200);
    textSize(30);
    keyPressed();
    break;
    
   case MOVING:
   background(173, 216, 230);
  image(backgroundImage, 400, 400);
  //for (int i=0;i<bulletEnemy1.size();i++) {
  // BulletEnemy bulletEnemy2= bulletEnemy1.get(i);
  // bulletEnemy2.display();
  // bulletEnemy2.move();
  for (int i=enemy1.size()-1; i>=0; i--) {
    Enemy enemy2= enemy1.get(i);
    enemy2.display();
    enemy2.move();
  }

  for (Bullet bullet3 : bullet2) {
    bullet3.display();
    bullet3.move();
  }

  //for (BulletEnemy bulletEnemy2 : bulletEnemy1) {
  //  bulletEnemy2.display();
  //  bulletEnemy2.move();



  //}
  player.display();
  player.move();
  break;
  } 
  
  



  //for (int i=0; i<bulletEnemy1.size();i++)
  //bulletEnemy1 p= Enemy.get(i);
  //Bullet bulletList = bulletList.get(i);
  //alienList1.display();
  //alienList1.move();
  //alienList1.reset();
  //if (abs(bulletList.x-alienList1.x)<20 && abs(bulletList.y-alienList1.y)<20){
  //}
}

void mouseClicked() {

  bullet2.add(new Bullet(player.x, player.y));
}
void keyPressed(){
if (keyPressed==true && key==' '){
    gameMode=MOVING;
    }
}
