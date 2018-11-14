class Figure {

  int x;
  int y;
  int r;

  void display(float x, float y, float r) {
    float a = (r/4)*(sqrt(2));
    ellipseMode(CENTER);
    fill(#FA9C44);
    ellipse(x, y, r, r);
    stroke(0);
    strokeWeight(r/25);
    line(x, y-(r/2), x, y+(r/2));
    line(x-(r/2), y, x+(r/2), y);
    noFill();
    bezier(x-a, y-a, x-a/2, y-a/2, x-a/2, y+a/2, x-a, y+a); 
    bezier(x+a, y-a, x+a/2, y-a/2, x+a/2, y+a/2, x+a, y+a);
  }
}
