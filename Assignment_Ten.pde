float sX = 10;
float sY = 0;
float vY = 0.0;
float gravity = .5;
float jumpSize = -20;
boolean onGround = false; 
boolean firstScreen;
boolean secondScreen;
boolean onPlatform = false;
boolean gameOver = false;
boolean youWin = false;
boolean sPressed = false;


float a = 600;
float b = 200;
float b2 = 200;
float v = -2;

Timer myTimer;
enemy enemy1;
Laser redLaser;
void setup() { 
  size(1000,600);
  enemy1 = new enemy();
  redLaser = new Laser();
  myTimer = new Timer(1000);
  myTimer.start();
}
void draw() { 
  keyPressed();
  firstScreen();
  update();
  move();

    
  if (youWin == true){
    background(0);
    textSize(100);
    text("YOU WIN!",200,200);
  }
  
   if (myTimer.isFinished()){
     textSize(50);
     text(" Use a and d to move and click to jump!",0,500);
  
  }
   
}
void keyPressed(){
   if(key == 's'){
    sPressed = true;
    }else{ 
    sPressed = false;
  }
}
void firstScreen() { //FIRST SCREEN
  background(0,255,0);
  
  fill(0);
  rect(0,400,1000,200);//ground
  
  fill(0,0,255);
  rect(sX,sY,50,50); //player
  
   enemy1.display();
   enemy1.update();
   
   if (sX >= width) { 
     secondScreen = true; 
     sX = 10;
    } 
    if (secondScreen == true) {
      secondScreen();
      
     
    }
  
}

void secondScreen(){ //SECOND SCREEN 
  background(0,255,0);
   
  fill(0);
  rect(0,400,1000,200);//ground
  
  fill(0,0,255);
  rect(sX,sY,50,50); //player
  
  fill(255,0,0);
  rect(800,b2,110,110);//Big enemy

  b2 = b2 - v;
  
  if((b2 >= 250)||(b2 <= 50)){//Big red enemy
   v = -v ; 
   
  
  
  
  }
   if(sPressed == true){
      redLaser.display();
      redLaser.update();
    }
 if(sX >= 900){
    youWin = true; 
  }
}
 void move() {
    if(keyPressed){
      if(key == 'a'){         sX = sX - 5;
      }
      if(key == 'd'){
        sX = sX + 5;
      } 
    }
  }
void update(){  
  vY = gravity + vY;
  sY = vY + sY;
  if (sY >= 350){
    onGround = true;
    sY = 350;
  } else { 
    onGround = false;
  }
  if (sX <= 0){// invisible wall
    sX = 0;
  }
   a = a + v;// enemy movement
  vY = gravity + vY;
  b = vY + b;
  if (b >= 360){
    b = 360;
    }
  if((a <= 0)||(a + 350>=width)){// invisible wall
    v = -v; // Goomba-like movement
    }
  if(b <=360){// It wont jump now :p
   b=360; 
    }
  if((sX + 50 >= a)&&(sX <= a + 50)&&(sY + 10 >= b)){//collision detection
    gameOver = true;
  }
  if((sX + 50 >= a + 300)&&(sX <= a + 350)&&(sY + 10 >= b)){//collision detection
    gameOver = true;
  }
}
void mousePressed(){
  if (onGround){
    jump();
  }
}

void jump(){ 
   vY = jumpSize; 
}

class enemy {
  float a = 600;
  float b = 200;
  float v = -2;
   
void display(){
     
    fill(255,0,0);
    rect(a,b,40,40);  
    
    fill(255,0,0);
    rect(a + 300,b,40,40);
  }
    
void update(){  
  a = a + v;// enemy movement
  vY = gravity + vY;
  b = vY + b;
  if (b >= 360){
    b = 360;
    }
  if((a <= 0)||(a + 350>=width)){// invisible wall
    v = -v; // Goomba-like movement
    }
  if(b <=360){// It wont jump now :p
   b=360; 
    }   
  }
}


class Laser{
   float lX;
   float lY;
  Laser(){
    lX = sX;
    lY = sY;
  }
  void display() { 
    
    fill(255,0,0);
    rect(lX,lY,120,3);
  }
  void update() { 
     lX = lX + 15;
     lY = sY; 
     if ((lX >= 800)&&(lY >= b2 + 110)){
     
  }
   }


}
class Timer{
  int savedTime;  
  int totalTime; 
  
  Timer(int _totalTime){
    totalTime = _totalTime;
  }
  
  void start() {
    savedTime = millis();
  }
  
  boolean isFinished() {
   int passedTime = millis() - savedTime;
   if (passedTime > totalTime) {
     return true;
   } else {
     return false;
   }
  }
}
