float x = 850;
float y = 100; 
float s; 
float x1 = 50;
float y1 = 400.5; 
float x2 = 950;
float y2 = 725; 


void setup() {
  size(900, 900);
  frameRate(60);
  background(255);
}


void draw() {
  background(255, 255, 255);
  fill(0, 0, 0);
  ellipse(x, y, 50, 50);

  fill(0, 0, 0);
  ellipse(x1, y1, 50, 50);

  fill(0, 0, 0);
  ellipse(x2, y2, 50, 50);


  s = -15;

  x = x + s;
  x1 = x1 - s; 
  x2 = x2 + s;
  
  if( x < 0){
  x = 900;
  }
  if( x1 > 900){
  x1 = 50;
  }
  if( x2 < 0){
  x2 = 900;
  }
}