class Points {

  float x;
  float y;
  float r=30;

  //makes arguments for x and y position of points in order to use array to put points in various positions
  Points(float temp_x, float temp_y) {
    x=temp_x;
    y=temp_y;
  }

  //displays points
  void display() {
    noStroke();
    fill(#FA5953);
    ellipseMode(CENTER);
    ellipse(x, y, r, r);
    println(pVel);
  }

  //makes points fall down and start again from the top when they hit bottom of screen
  void move() {
    y+=pVel;
    if (y>height) {
      y=-(pVel*10);
      x=random(width);
    }


    if (!ready) {
      newTime=time;
    }
  }

  //increases speed of the falling points every 10th second
  void speedUp() {
    if (time > newTime+9) {
      pVel+=2;
      newTime=time;
    }
  }

  //when a point collides with the Object it starts over and life decreases by 1
  void hit() {
    x=random(width);
    y=-pVel*10-400;
    life-=1;
  }
}
