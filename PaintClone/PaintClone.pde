//finish this paint program.
//if you press more green enough times it goes back to black
//if you press the less green button when the cursor is black it should go to green
//hint modulo command %
//further hint the modulo command in processing doesn't play nice with negatives

//make buttons for blue and red
//debounce the buttons
//hint make a mousePressed method

//Pat on the back for marking your up/down buttons in a nice way.

color cursorcolor1 = 0;
color cursorcolor2 = 0;
int green = 0;
int step = 10;
int blue = 0;


void setup() {
  size(1000, 1000);
  background(255);
  
}



void draw() {
  noStroke();
  //more green button
  fill(0,green,0);
  rect(0,0,50,50);
  if (mousePressed && mouseX<50 && mouseY<50){
    green = green +step;
  } 
  //less green button
  fill(0,green,0);
  rect(50,0,50,50);
  if (mousePressed && 50<mouseX && mouseX<100 && mouseY<50){
     green = green -step;
  }
  //more blue button
  fill(0,0,blue); 
  rect(0, 100, 50, 50);
  if (mousePressed && mouseX<50 && 100<mouseY && mouseY<150){
    blue = blue + step;
   fill(cursorcolor2); 
  }
  cursorcolor1 = color(0,green,0); 
  cursorcolor2 = color(0, 0, blue);
  //drawing part
  if (mousePressed) {
    fill(cursorcolor1);
    ellipse(mouseX, mouseY, 8, 8);
  }
  if (mousePressed) {
    fill(cursorcolor2);
    ellipse(mouseX, mouseY, 8, 8);
  }
}
