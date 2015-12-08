float x = 850;    // x for top circle 
float y = 0;      //  y for top cirlce 
float s; // speed variable 
float x1 = 50; // x for middle circle 
float y1 = 450; // y for middle circle 
float x2 = 950; // x for bottom circle 
float y2 = (random(0)); // y for bottom circle 
float thickness; // variable for thickness of lines 
float d; // variable for distance 
float oppacity; 

import processing.sound.*;
SoundFile edge;
SoundFile nonEdge;

void setup() {
  size(900, 900);
  frameRate(60);
  background(0);

  edge = new SoundFile(this, "wake me up edge.mp3");// adds file to play on keypressed
  nonEdge = new SoundFile(this, "Wake me up non edge.mp3");// adds file to play on keypressed
}

void draw() {

  // every 5 seconds
  // calculate the distance between the two circles
  // adjust thickness based on distacne between circles
  thickness = 5*d /1000;
  //println(thickness);
  oppacity = 100*d / 1000;// calcualte the oppacity based on distance 


  fill(0, 0, 0);
  ellipse(x, y, 1, 1); // make the top circle 

  fill(0, 0, 0);
  ellipse(x1, y1, 1, 1); //make the middle circle 

  fill(0, 0, 0);
  ellipse(x2, y2, 1, 1);// make the bottom circle 

  // determines the distance between top and middle circles 
  d = sqrt(sq(x - x1) + sq(y - y1));

  s = -15; // set the speed 

  x = x + (random(s)); // set the speed for the top circle, randomizing it aswell 
  x1 = x1 - (random(s)); // set the speed for the middle circle, with a random aspect
  x2 = x2 + (random(s)); // set the speed for the bottom circle , with a random aspect
  y2 = y2 +random(-15, 15);//allows y2 to change elevation randomly
  y = y+random(-15, 15);// allows y to change elevaion randomly 
  y1 = y1+random(-15, 15);// randomizes the y for the middle circles 
  if ( y2 > 900) { // if the third circle passes 900 it resets to 800
    y2 = 800;
  }

  if (y2 < 450 ) { // if the third circle passes 450 it resets to 800
    y2 = 800;
  }
  if ( y > 450) { // if the first circle passes  450 it resets to 0
    y = 0;
  }

  if (y < 0 ) { // if the first circle is less than 0 it resets to 50
    y = 50;
  }
  if ( x < 0) { // if the first circle is les than 0 it resets to 900 
    x = 900;
  }
  if ( x1 > 900) {
    x1 = 10;
  }
  if ( x2 < 0) {
    x2 = 900;
  }
  if ( y1 > 750) { //allows for the y1 to be reset if it goes too far down 
    y1 = 450;
  }

  if (y1 <150) { // if the y1 is too low it reset back to the origonal position 
    y1 = 450;
  }

  if (thickness < 0) {
    thickness = 1;
  }

  // when the 
  if (frameCount%60 == 0) {
    fill(0, 0, 0, 30);
    noStroke();
    rect(0, 0, 900, 900);
  }

  strokeWeight(thickness);
  stroke((255), (255), (255), oppacity);//stroke color
  line(x1, y1, x, y);// line being drawn between top and middle 

  strokeWeight(thickness);
  stroke((255), (255), (255), oppacity);//stroke color 
  line(x1, y1, x2, y2);//lines beingdrawn between middle and bottom
}

void keyPressed() {
  if (key == 'z') {
    stroke(random(255), random(255), random(255));
    line(x1, y1, x, y);
  }

  if (key == 'x') {
    stroke(random(255), random(255), random(255));
    line(x1, y1, x2, y2);
  }
  if (key =='c') {
    saveFrame("output-########.png");
  }

  if (key == 'e') { 
    edge.play();
  }
  if (key == 'r') {
    nonEdge.play();
  }
}