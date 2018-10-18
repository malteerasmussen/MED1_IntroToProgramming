class flower {
  
  float r;
  int n_Petals;
  float x;
  float y;
  int petalColor;
  int speedX = 2;
  int speedY = 2;
  
  flower(float temp_r, int temp_n_Petals, float temp_x, float temp_y, int temp_petalColor) {
  r = temp_r;
  n_Petals = temp_n_Petals;
  x = temp_x;
  y = temp_y;
  petalColor = temp_petalColor;
  }
  
 void display() {
  float ballX;
  float ballY;
  noStroke();
  fill(petalColor);
  for (float i=0;i<PI*2;i+=2*PI/n_Petals) {
  ballX = x + r*cos(i);
  ballY = y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
}

void move() {
  x+=speedX;
  y+=speedY;
}

void bounce() {
  if (x>width-(r*1.2) || x<0+(r*1.2)){
    speedX=speedX*-1;
  }
  if (y>height-(r*1.2) || y<0+(r*1.2)){
    speedY=speedY*-1;
}

}
}
