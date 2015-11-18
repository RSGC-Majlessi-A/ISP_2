float x = 850;
float y = 0; 
float s; 
float x1 = 50;
float y1 = 450; 
float x2 = 950;
float y2 = 800; 


void setup() {
  size(900, 900);
  frameRate(1000000);
  background(0);
}

void draw() {
  
  fill(0, 0, 0);
  ellipse(x, y, 1, 1);

  fill(0, 0, 0);
  ellipse(x1, y1, 1, 1);

  fill(0, 0, 0);
  ellipse(x2, y2, 1, 1);


  s = -15;

  x = x + s;
  x1 = x1 - s; 
  x2 = x2 + s;

  if ( x < 0) {
    x = 900;
  }
  if ( x1 > 900) {
    x1 = 10;
  }
  if ( x2 < 0) {
    x2 = 900;
  }
  
  stroke((255), (255), (255));
  line(x1, y1, x, y);
  
 stroke((255), (255),(255));
  line(x1, y1, x2, y2);
  
  
}