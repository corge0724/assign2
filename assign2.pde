PImage  fighterImg,enemyImg,treasureImg,bg1Img,bg2Img,hpImg,start1,start2,end1,end2;
int x,ey,ty,tx,w,z,u,k,l,fx,fy,speed = 5;
final int GAME_START =0;
final int GAME_RUN = 1;
final int GAME_WIN = 2;
final int GAME_LOSE = 3;

boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;
int gameState;
/* please implement your assign1 code in this file. */

void setup () {
  size(640,480) ;  // must use this size.
  // your code
  bg1Img=loadImage("img/bg1.png");
  bg2Img = loadImage("img/bg2.png");
  fighterImg = loadImage("img/fighter.png");
  hpImg = loadImage("img/hp.png");
  treasureImg = loadImage("img/treasure.png");
  enemyImg = loadImage("img/enemy.png");
  start1 = loadImage("img/start1.png");
  start2 = loadImage("img/start2.png");
  end1= loadImage("img/end1.png");
  end2 = loadImage("img/end2.png");

  ey=floor(random(420));
  ty=floor(random(440));
  tx=floor(random(600));
  w=floor(random(196));
  gameState = GAME_START;
}

void draw() {
  // your code
 switch(gameState){
     case GAME_START:
     image(start2,0,0);
    if(mouseX >203 && mouseX < 458){
     if(mousePressed){
       gameState = GAME_RUN;
     }else{
       noStroke();
       image(start1,0,0);
     }
    }
     break;
 
    case GAME_RUN:
   
   if (upPressed){
     fy -= speed;
     }
     if (downPressed){
     fy += speed;
     }
     if (leftPressed){
     fx -= speed;
     }
     if (rightPressed){
     fx += speed;
     }
     image(bg2Img,u,0);
     u=(z+640)%1280-640;
      z+=2;
     image(bg1Img,k,0);
     k=z%1280-640;
     
     image(fighterImg,fx,fy);
     image(treasureImg,tx,ty);
     image(enemyImg,x,ey);
     rect(20,10,w,31);
     fill(255,0,0);
     image(hpImg,10,10);
     
     x+=4;
     x%=640;
     
     
     break;


 }
}


void keyPressed(){
  if (key == CODED){
   switch(keyCode){
    case UP:
    upPressed = true;
    break;
    case DOWN:
    downPressed = true;
    break;
    case LEFT:
    leftPressed = true;
    break;
    case RIGHT:
    rightPressed = true;
    break;
   }
  }
}

void keyReleased(){
 if(key == CODED){
   switch(keyCode){
    case UP:
    upPressed = false;
    break;
    case DOWN:
    downPressed = false;
    break;
    case LEFT:
    leftPressed = false;
    break;
    case RIGHT:
    rightPressed = false;
    break;
   }
 }
}
