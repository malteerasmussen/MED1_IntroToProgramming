int num = 30;
int[] x = new int[num];
int[] y = new int[num];
int indexPos = 0;


Figure[] Balls = new Figure[num];

void setup() { 
  size(700, 700);
  noCursor();
  noStroke();
  fill(255, 102);
  for(int i = 0; i<num; i++){
    Balls[i] = new Figure();
  }
}

void draw() {
  background(255);
  x[indexPos] = mouseX;
  y[indexPos] = mouseY;

  indexPos +=1;
  if (indexPos == num) {
    indexPos = 0;
  }

  for (int i = 0; i < num; i++) {
    int pos = (indexPos+i) % num;
    float r = 4*num-i*2;
    Balls[i].display(x[pos], y[pos], r);
  }

  
}
