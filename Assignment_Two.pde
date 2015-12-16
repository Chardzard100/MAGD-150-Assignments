//This is my portrayl of society
void setup() { 
  size (1280,800); 
  background(0);
  
  
}
 void draw(){
  background(0);
  fill(0,245,145);
  rect(50,50,1180,650); 
  //Inside the rectangles is where everyone is...
  //Notice how they are mostly the same color...
  fill(0,0,252);
  rect(100,100,1080,550); 
  stroke(0,0,252); 
     
  fill(252);  
  ellipse(640,400,1080,550); 
 
  line(100,200,1180,200); 
  line(100,600,1180,600); 
  
  fill(200,100,0);  
  arc(10,20,40,60,0,PI+QUARTER_PI, CHORD);
  //This is how I feel about my life. I'm alway left out...
  
  fill(200);
  arc(640,400,200,200,0,HALF_PI);
  
  fill(17,38,0);
  triangle(500,300,200,200,800,200);
  
  fill(30,252,100);
  triangle(600,600,200,500,500,500);
 
  //There are things that are there, but we cant see them... They may or may not be living beings... 
  point(640,400);
  point(600,400);
  point(680,400); 
  point(640,440); 
  point(640,360);
 
 //Even the odd ones were socially accepted... 
  beginShape(TRIANGLES);
  vertex(630,475);
  vertex(640,620);
  vertex(650,675);
  vertex(300,400);
  vertex(330,500); 
  vertex(500,400);
  endShape();
 
 beginShape(); 
 vertex(1070,380);
 vertex(1079,490); 
 vertex(900,445);
 vertex(800,210);
 endShape();
  
 beginShape(); 
 vertex(640,200); 
 vertex(590,200); 
 vertex(540,300);
 vertex(680,300); 
 vertex(590,500);
 vertex(590,600); 
 endShape();
 
 //New change comes everyday. Perhaps pink wil be the new green?
 fill(250,100,252);
 ellipse(640,400,10,10);
 ellipse(640,10,10,10); 
 ellipse(640,790,10,10);
 ellipse(mouseX,mouseY,250,250);
 ellipse(mouseY,mouseX,250,250);
 //With governmental aprrovement and advertising, It'll will be...
 
 fill(0);
 ellipse(mouseX,mouseY,200,200); 
 ellipse(mouseY,mouseX,200,200);
 //These are the government watching us
 }
