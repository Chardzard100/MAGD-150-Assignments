float ballX = 575; 
float ballY = 325; 
float moveSpeedX = 5;
float moveSpeedY = 2;
float ballDiameter = 20;
float goal = 10;

void setup() { 
  size(1150,650);
} 
void draw(){ 
  
  background(#069315);
  
  stroke(255);
  strokeWeight(3);
  line(575,0,575,650);
  fill(#069315);
  ellipse(575,325,170,170);
 
  stroke(255);
  ellipse(140,350,250,350);
  ellipse(1000,350,250,350);
  
  rect(970,90,170,500);
  rect(10,90,170,500);
  rect(10,140,50,400);
  rect(1090,140,50,400);
 
  
  stroke(255,0,0);//Red team
  ellipse(200,600,10,10);
  ellipse(400,152,10,10); 
  ellipse(220,300,10,10);
  ellipse(300,400,10,10); 
  ellipse(472,300,10,10);
  ellipse(500,500,10,10);
  ellipse(700,200,10,10); 
  ellipse(800,300,10,10);
  ellipse(800,500,10,10); 
  ellipse(764,100,10,10);
  
  stroke(255,255,0);//Goalie
  ellipse(100,500,10,10); 
  
  stroke(0,0,255); //Blue team
  ellipse(900,100,10,10);
  ellipse(900,300,10,10);
  ellipse(800,400,10,10);
  ellipse(700,400,10,10);
  ellipse(850,600,10,10);
  ellipse(500,400,10,10);
  ellipse(400,500,10,10);
  ellipse(400,300,10,10);
  ellipse(600,200,10,10);
  ellipse(850,400,10,10);
  
  stroke(0);//Goalie
  ellipse(1000,200,10,10);
  
  fill(255);
  stroke(255); 
  ellipse (ballX,ballY,ballDiameter,ballDiameter); 
  
  fill(#069315);
  
   update();
}
 void update(){
 ballX = ballX + moveSpeedX; 
  if (ballX+(ballDiameter/2) >= width) { 
    moveSpeedX = -5; 
  } 
  else if (ballX - (ballDiameter/2) <=0) { 
    moveSpeedX = 5; 
  } 
 ballY = ballY + moveSpeedY;
   if (ballY+(ballDiameter/2) >= height) { 
    moveSpeedY = -2; 
  } 
  else if (ballY - (ballDiameter/2) <=0) { 
    moveSpeedY = 2; 
  }
  
  
  if ((ballX - ballDiameter / 2) == 0){
      score();
  }

 
 
 
 }


void score(){
    moveSpeedX = 0;
    moveSpeedY = 0;
    
     for(int goal = 50; goal < 600; goal = goal + 40){
      
       fill(0);
       textSize(30);       
       text("GOAL", goal + 200, goal + 40);
       
    }
}
