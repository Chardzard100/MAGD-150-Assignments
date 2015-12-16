void setup() {   
  size(800,600); 
  
} 
void draw() { 
  stroke(0);
  
  fill(252,0,0);
  rect(0,0,800,300); 
  
  fill(252); 
  rect(0,300,800,300);
  
  fill(0);
  ellipse(400,300,600,600);
 
  fill(#767575); //Magnemite's body
  ellipse(400,300,200,200);
 
  fill(255);
  ellipse(400,300,100,100);
  
  fill(0); 
  ellipse(400,300,10,10);
  
  fill(#767575);
  arc(200,300,200,164,HALF_PI+PI,PI+HALF_PI+PI);
  arc(600,300,200,164,HALF_PI,HALF_PI+PI);
  
  fill(0);
  arc(170,300,200,100,HALF_PI+PI,PI+HALF_PI+PI);
  arc(630,300,200,100,HALF_PI,HALF_PI+PI);
 
 noStroke(); //Magnets
 fill(255,0,0);
 rect(180,219,20,33);
 stroke(0); 
  
  noStroke();
 fill(0,0,255);
 rect(600,217,20,34);
 stroke(0); 
  
  noStroke();
 fill(0,0,255);
 rect(180,348,20,33);
 stroke(0); 
  
   noStroke();
 fill(255,0,0);
 rect(600,349,20,33);
 stroke(0); 
  
  fill(#767575); //Screws
  ellipse(350,365,30,30);
  beginShape(); 
    fill(0);
    vertex(347,355); 
    vertex(352,355); 
    vertex(352,360);
    vertex(357,360);
    vertex(357,365); 
    vertex(352,365); 
    vertex(352,370); 
    vertex(347,370); 
    vertex(347,365); 
    vertex(342,365); 
    vertex(342,360); 
    vertex(347,360);
    endShape(CLOSE);
  
  
  fill(#767575);
  ellipse(450,365,30,30);
   beginShape(); 
    fill(0);
    vertex(447,355); 
    vertex(452,355); 
    vertex(452,360);
    vertex(457,360);
    vertex(457,365); 
    vertex(452,365); 
    vertex(452,370); 
    vertex(447,370); 
    vertex(447,365); 
    vertex(442,365); 
    vertex(442,360); 
    vertex(447,360);
    endShape(CLOSE);
  
  stroke(0); 
  fill(#767575);
  arc(400,180,50,50,PI,PI+PI);
  
  noStroke();
  fill(#767575);
  rect(385,180,30,50);
   
  noStroke(); 
  fill(0);
  rect(397,150,5,15);
  
  stroke(0);
 line(383,185,415,180); 
 line(383,190,415,185);
 line(383,195,415,190);  
 line(383,200,415,195); 
  
 fill(#FFF703);
 triangle(0,0,200,0,0,200);
 triangle(800,0,600,0,800,200);
 triangle(0,600,200,600,0,400);
 triangle(800,600,600,600,800,400);
} 

 
