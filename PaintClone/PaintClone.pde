//making a paint clone

//Green
color cursorcolor1 = 0;
//Blue
color cursorcolor2 = 0;
//Red
color cursorcolor3 = 0;

int green = 0;
int step = 10;
int blue = 0;
int red = 0;


void setup() {
  size(1000, 1000);
  background(255);
  rectMode(CORNERS);
}



void draw() {
  noStroke();
  //more green button
  fill(0, green, 0);
  rect(0, 0, 50, 50);
  if (mousePressed && mouseX<50 && mouseY<50) {
    green = green +step;
  } 
  //less green button
  fill(0, green, 0);
  rect(50, 0, 100, 50);
  if (mousePressed && 50<mouseX && mouseX<100 && mouseY<50) {
    green = green -step;
  }
  //more blue button
  fill(0, 0, blue); 
  rect(0, 50, 50, 100);
  if (mousePressed && mouseX<50 && 50<mouseY && mouseY<100) {
    blue = blue + step;
    fill(cursorcolor2);
  }
  //less blue button
  fill(0, 0, blue);
  rect(50, 50, 100, 100);
  if (mousePressed && 50<mouseX && mouseX<100 && mouseY<100) {
    blue = blue - step;
  }
  //more red button
  fill(red, 0, 0);
  rect(0, 100, 50, 150);
  if (mousePressed && mouseX<50 && 100<mouseY && mouseY<150) {
    red = red + step;
    fill(cursorcolor3);
  }
  //less red button
  fill(red, 0, 0);
  rect(50, 100, 100, 150);
  if (mousePressed && 50<mouseX && mouseX<100 && mouseY<150) {
    red = red - step;
  }
  //green, blue, red
  cursorcolor1 = color(0, green, 0); 
  cursorcolor2 = color(0, 0, blue);
  cursorcolor3 = color(red, 0, 0);
  //drawing part
  if (mousePressed) {
    fill(cursorcolor1);
    ellipse(mouseX, mouseY, 15, 15);
    //}
    //if (mousePressed) {
    fill(cursorcolor2);
    ellipse(mouseX, mouseY, 11, 11);
    //}
    //if (mousePressed) {
    fill(cursorcolor3);
    ellipse(mouseX, mouseY, 8, 7);
  }
}
