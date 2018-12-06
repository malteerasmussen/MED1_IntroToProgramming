class Object {

  float r=50;
  float x;
  float y;
  float xRes=350;
  float yRes=650;
  float xv=5;
  float yv=-5;

  //displaying the cube
  void display() {
    noStroke();
    fill(255);
    rectMode(CENTER);
    rect(mouseX, y, r, r);

    keyPressed();
  }

  //making cube move left or right when keys are pressed
 /* void keyPressed() {
    if (keyCode == RIGHT) {
      x+=xv;
    }
    if (keyCode == LEFT) {
      x-=xv;
    }
    //making cube stay inside screen borders
    if (x<(r/2)) {
      x=r/2;
    }
    if (x>(width-(r/2))) {
      x=(width-(r/2));
    }
  }
*/
  //method for making cube fly up when game starts
  void fly() {
    if (y>400) {
      y+=yv;
    }
  }

  //resets position of cube
  void reset() {
    x=xRes;
    y=yRes;
  }
}
