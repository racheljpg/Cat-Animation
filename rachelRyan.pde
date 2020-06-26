/*
Name : Rachel Ryan
 Student Number: 20089534
 
 Brief description of the animation achieved: 
 If you drag the mouse over the cat, his eyes close and a red circle appears. If not, his eyes are open.
 Stars are flashing in the sky.
 Pressing left, right, and center mouse keys produces text in the console.
 */

boolean mouseOverCat; //changing the eyes if cat mouse is dragged over cat

void setup () {
  size (800, 500);
  println("Please try clicking the mouse buttons, and dragging on the cat.");
  mouseOverCat = false; //starts at false because you have to drag over cat
}

void draw() {
  noStroke();
  nightSky();
  starLoop();
  noStroke();
  grass();
  cat();
  stroke(0);
  eyes();
  noStroke();
  house();
  window(240, 140, 75, 75);
  window(385, 140, 75, 75);
  window(240, 265, 75, 75);
  window(385, 265, 75, 75);
  path(300, 400, 100, 200);
  door(325, 300, 50, 100);
}

void mouseClicked() {
  int i = 0;
  if (mouseButton == LEFT)
    while (i<=5) {
      println(i + " Rachel Ryan's Programming Assignment");
      i++;
    }
  if (mouseButton == RIGHT) 
    while (i<=5) {
      println(i + " Hope you like it!");
      i++;
    } else if (mouseButton == CENTER)

    println(" The cat is lonely, please rub him.");
}

void heart(int x, int y) {
  fill(255, 0, 0);
  noStroke();
  smooth();
  ellipse(mouseX, mouseY, 50, 50);
}

void cat() {
  fill(204, 102, 0);
  ellipse(650, 450, 150, 200); //body
  fill(255, 128, 0);
  ellipse(650, 475, 100, 125); //body
  fill(204, 102, 0);
  triangle(580, 220, 580, 290, 630, 250); //left ear
  triangle(720, 220, 640, 280, 720, 290); //right ear
  fill(255, 128, 0);
  ellipse(650, 320, 150, 150); //head
  fill(147, 98, 45);
  triangle(640, 330, 660, 330, 650, 340); //nose
}

void eyes() {
  fill(0);
  if (mouseOverCat) { //if the mouse is over the cat, his eyes close 
    line(610, 290, 630, 290); //left eye
    line(670, 290, 690, 290); //right eye
  } else { //if the mouse is not, his eyes are open
    ellipse(620, 290, 10, 10); //left eye
    ellipse(680, 290, 10, 10); //right eye
  }
}

void nightSky() {
  noStroke();
  fill(21, 67, 96);
  rect(0, 0, 800, 300); //night sky
}

void grass() {
  fill(82, 190, 128);
  rect(0, 300, 800, 200); //grass
}

void house() {
  fill(186, 104, 200);
  rect(200, 100, 300, 300); //house
  fill(121, 85, 72);
  triangle(350, 25, 150, 100, 550, 100); //roof
}

void window(int a, int b, int c, int d) {
  noStroke();
  fill(255, 255, 102);
  rect(a, b, c, d);
}

void path(int a, int b, int c, int d) {
  fill(204, 219, 220);
  rect(a, b, c, d);
}

void door(int a, int b, int c, int d) {
  fill(104, 80, 75);
  rect(a, b, c, d);
}

void mouseDragged() {
  if (mouseX >600 && mouseX <700 && mouseY >250 && mouseY <500) { //hitbox of cat
    heart(mouseX, mouseY);
    mouseOverCat = true; //closes eyes because mouse is over cat
  } else {
    mouseOverCat = false; //back to open eyes
  }
}

void star(int x, int y, int size) { 
  //x and y are the coordinates of the centre point
  //size is the distance from the centre point to the points of the star

  stroke(random(0, 255)); //random values between 0,255(black, white)
  line(x, y - size, x, y + size); //vertical line
  line(x - size, y, x + size, y); //horizontal line
}

void starLoop() {
  //calling the stars in a pattern

  for (int y=0; y < 10; y++) //vertical rows
  {
    for (int x=0; x < 10; x++) //horizontal rows
    {
      star(x*100, y*100, 20); //x,y and size of stars
    }
  }
}
