 int alienEye1X = 300;
 int moveSpeedX = 20; 
 int alienEyeDiameter = 100; 
 int alienEye2X = 350;
 boolean mState = false; 
 boolean wState = false;
void setup() {
  size(600,700);
}
void draw(){ 
   background(0); 
   frameRate(60);
    //Alien UFOs
    stroke(0);
    strokeWeight(0);
    fill(0,205,50);
    ellipse(alienEye1X,200,alienEyeDiameter,50);
    ellipse(alienEye2X,100,alienEyeDiameter,50); 
    fill(0,50,205);
    ellipse(300,100,150,150);
    
    //Spaceship 1
    fill(190);
    ellipse(145,600,200,50);
    fill(255);
    rect(100,550,90,120);
    fill(220);
    ellipse(145,600,40,80);
    fill(100);
    triangle(100,550,190,550,145,500); 
    rect(180,640,20,50);
    rect(90,640,20,50); 
   
    //Spaceship2
    fill(140);
    rect(380,575,130,30);
    fill(200);
    ellipse(445,575,80,140);
    rect(400,550,90,120);
    rect(430,560,30,10);
    rect(430,570,30,10);
    rect(430,580,30,10);
    rect(430,590,30,10);
    rect(430,600,30,10);
    rect(430,610,30,10);
    rect(430,620,30,10);
    fill(255);
    rect(480,640,20,50);
    rect(390,640,20,50);  
  
    if (wState == false) { 
      textSize(30);
      text("HURRY!! CLICK ONCE TO SHOOT!",50,350);
      
    } else{ 
      text("Oh no... QUICK! HIT SPACEBAR TO NUKE!",0,350);
      text("Not very effective...",0,35);
    }
   if (mState == false) { 
       alienMove();
  }else{
       boom();
     }
    
}
void boom(){ 
 fill(255,0,0); 
 rect(0,0,width,height); 
 fill(0);
 textSize(140);
 text("KABOOM",0,350);
 textSize(20);
 text("They survived...",0,400);
 
 float a = (random(0,width));
 float b = (random(0,height));
 
 frameRate(2);
 fill(0,50,205);
 ellipse(a,b,150,150);
 
}

void keyPressed(){ 
   mState =!mState;
  
  }
void mousePressed() { 
    stroke(255,0,0);
    strokeWeight(20);
    line(145,500,145,0);
    line(445,500,445,0);
    wState =!wState;
    
}  
void  alienMove(){ 
alienEye1X = alienEye1X - moveSpeedX;
  if (alienEye1X+(alienEyeDiameter/2) >= width) { 
    moveSpeedX = -5; 
  } 
  else if (alienEye1X - (alienEyeDiameter/2) <=0) { 
    moveSpeedX = 5; 
  } 
alienEye2X = alienEye2X - moveSpeedX;
  if (alienEye2X+(alienEyeDiameter/2) >= width) { 
    moveSpeedX = 5; 
  } 
  else if (alienEye2X - (alienEyeDiameter/2) <=0) { 
    moveSpeedX = -5; 
  } 
}
  
