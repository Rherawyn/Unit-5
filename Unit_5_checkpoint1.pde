

// ball
float x, y, //position  
      d;    //diameter
      
// ball2
float x2, y2, //position  
      d2;    //diameter
      
//key variables
boolean akey,dkey,skey,wkey;

boolean akey2,dkey2,skey2,wkey2;


void setup() {
  size(600, 600);
  strokeWeight(3);
  x = width/2;
  y = height/2;
  d = 100;
  x2 = width/2;
  y2 = height/2;
  d2 = 100;
}

void draw() {
  background(206, 255, 251);
  circle(x,y,d);
  circle(x2,y2,d2);
  
  if (akey) x = x - 5;
  if (dkey) x = x + 5;
  if (wkey) y = y - 5;
  if (skey) y = y + 5;
  
  if (akey2) x2 = x2 - 5;
  if (dkey2) x2 = x2 + 5;
  if (wkey2) y2 = y2 - 5;
  if (skey2) y2 = y2 + 5;

}

void keyPressed() {
 if (key == 'a') akey = true;
 if (key == 'd') dkey = true;
 if (key == 's') skey = true;
 if (key == 'w') wkey = true;
 
 if (keyCode == RIGHT) dkey2 = true;
 if (keyCode == LEFT) akey2 = true;
 if (keyCode == UP) wkey2 = true;
 if (keyCode == DOWN) skey2 = true;
}

void keyReleased() {
 if (key == 'a') akey = false;
 if (key == 'd') dkey = false;
 if (key == 's') skey = false;
 if (key == 'w') wkey = false;
 
 if (keyCode == RIGHT) dkey2 = false;
 if (keyCode == LEFT) akey2 = false;
 if (keyCode == UP) wkey2 = false;
 if (keyCode == DOWN) skey2 = false;
}
