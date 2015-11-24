float x = 850;    // x for top circle 
float y = 0;      //  y for top cirlce 
float s; // speed variable 
float x1 = 50; // x for middle circle 
float y1 = 450; // y for middle circle 
float x2 = 950; // x for bottom circle 
float y2 = 800; // y for bottom circle 
float thickness; // variable for thickness of lines 
float d;

void setup() {
  size(900, 900);
  frameRate(120);
  background(0);
}

void draw() {

  // calculate the distance between the two circles

  // adjust thickness based on distacne between circles
  //strokeWeight(thickness);
  //thickness = map(d, 450, 1000, 1, 10);
 thickness = 5*d /1000;
  println(thickness);
  //thickness = map(965.66,x1, y1, x2, y2);

  fill(0, 0, 0);
  ellipse(x, y, 1, 1); // make the top circle 

  fill(0, 0, 0);
  ellipse(x1, y1, 1, 1); //make the middle circle 

  fill(0, 0, 0);
  ellipse(x2, y2, 1, 1);// make the bottom circle 

  // determines the distance between top and middle circles 
  d = sqrt(sq(x - x1) + sq(y - y1));
  //println("x is: " + x);
  //println("x1 is: " + x1);
  //println(x-x1);
  //println(d);
// 450, 920
  s = -15; // set the speed 

  x = x + s; // set the speed for the top circle 
  x1 = x1 - s; // set the speed for the middle circle 
  x2 = x2 + s; // set the speed for the bottom circle 

  if ( x < 0) {
    x = 900;
  }
  if ( x1 > 900) {
    x1 = 10;
  }
  if ( x2 < 0) {
    x2 = 900;
  }

  if (thickness < 0) {
    thickness = 1;
  }
  strokeWeight(thickness);
  stroke((255), (255), (255), 50);//stroke color
  line(x1, y1, x, y);// line being drawn between top and middle 

  strokeWeight(1);
  stroke((255), (255), (255));//stroke color 
  line(x1, y1, x2, y2);//lines beingdrawn between middle and bottom 
}

void keyPressed() {
  if (key == '1') {
    stroke(random(255), random(255), random(255));
    line(x1, y1, x, y);

    stroke(random(255), random(255), random(255));
    line(x1, y1, x2, y2);
  }
}