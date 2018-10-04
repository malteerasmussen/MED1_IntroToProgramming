//int r=100;

flower myFlower = new flower();

void setup() {
  size(600,400);
  background(#43AF76);
  
}

void draw(){

  
  myFlower.display(20,4,30,200,#5B981A);
  myFlower.display(70,12,500,300,#FAD9F1);
  
}  

class flower {
 void display(float r, int n_Petals, float x, float y, int petalColor) {
  noStroke();
  float ballX;
  float ballY;
  fill(petalColor); //<>//
  for (float i=0;i<PI*2;i+=2*PI/n_Petals) {
  ballX=x + r*cos(i);
  ballY=y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
}
}
