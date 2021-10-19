void setup() {
  size(600, 400);
  frameRate(30);
  noLoop();
  smooth();
}

void draw() {

  if ( (frameCount & 1) == 0 ) {
    background(200);
    point(mouseX, mouseY);
    text("x: " + int(mouseX) + " ," + "y: " + int(mouseY), mouseX,mouseY);
    return;
  } 

  line(pmouseX, pmouseY, mouseX, mouseY);
  text("x: " + int(pmouseX) + " ," + "y: " + int(pmouseY), pmouseX,pmouseY);
  text("x: " + int(mouseX) + " ," + "y: " + int(mouseY), mouseX,mouseY);
  println();
}

void mouseClicked() {
  redraw();
}
