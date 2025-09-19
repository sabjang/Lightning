int startX = 100+(int)(Math.random()*300);
int startY = 0;
int endX = startX;
int endY = 0;

void setup(){
  size(500,500);
  strokeWeight(5);
  background(200, 200, 200);
}

void draw(){
  stroke(240, 240, 0);
  while(endY<=500){
    int move = (int)(Math.random()*9);
    if((int)(Math.random()*2)==0)
      endX=endX+move;
    else
      endX=endX-move;
    endY=endY+(int)(Math.random()*9);
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
  }
  //clouds
  stroke(151, 193, 216);
  fill(151, 193, 216);
  ellipse(200, 10, 300, 50);
  ellipse(50, 10, 150, 50);
  ellipse(400, 10, 350, 50);
  
}

void mousePressed(){
  startX = 100+(int)(Math.random()*300);
  startY = 0;
  endX = startX;
  endY = 0;
}
