void setup(){
  size(1000,800);
}

int cSize = 600;
float theta = 0;

void draw(){
  background(0);
  drawCircle(width/2,height/2,cSize);
}

void drawCircle(float x, float y, float r){
  ellipseMode(CENTER);
  noStroke();
  float red = map(r,cSize,0,0,255);
  float green = map(x,width/2-cSize/2,width/2+cSize/2,0,255);
  
  
  fill(red,green,0,100);
  ellipse(x,y,r,r);
  if(r > 5){
    drawCircle(x-r/4,y,r/2);
    drawCircle(x+r/4,y,r/2);
  }
}
