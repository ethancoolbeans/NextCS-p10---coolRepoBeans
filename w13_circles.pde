int cx, cy;
int csize;
int circles; 

void setup() {
  size(500, 500);
  frameRate(30);
  background(0);
  csize = 50;
  cx = csize/2;
  cy = csize/2;
  circles = 4;
}

void draw() {
  if (frameCount % 30 == 0) {
    background(0);
    circleRow(cx, cy, circles, csize);
    cx = cx + csize;
    if (cx > width) {
      cx = csize/2;
      cy = cy + csize;}
  }
}

void circleRow(int cx, int cy, int circles, int csize) {
  for (int i = circles; 0 < i; i = i - 1) {
    fill(83, 195, 189);
    int finalx = cx + csize * i;
    circle(finalx, cy, csize);
  }
}
