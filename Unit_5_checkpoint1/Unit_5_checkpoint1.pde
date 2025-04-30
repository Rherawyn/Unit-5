

// ball
float x, y, //position
  d;    //diameter

// ball2
float x2, y2, //position
  d2;     //diameter

// orb
float orbx, orby, orbd; // orb pos/diam
float vx, vy;           // orb velocity
float ax, ay;           //orb gravity

//key variables
boolean akey, dkey, skey, wkey;

boolean akey2, dkey2, skey2, wkey2;


void setup() {
  size(600, 600, P2D);
  strokeWeight(3);
  frameRate(60);
  x = width/2;
  y = height/2;
  d = 100;

  x2 = width/2;
  y2 = height/2;
  d2 = 100;

  orbx = width/2;
  orby = height/2;
  orbd = 50;
  vx = 3;
  vy = 5;
  ax = 0;
  ay = 1;
}

void draw() {
  background(206, 255, 251);
  circle(x, y, d);
  circle(x2, y2, d2);
  circle(orbx, orby, orbd);

  orbx += vx;
  orby += vy;

  //gravity

  vx = vx+ax;
  vy = vy+ay;

  //bouncy bounce
  if (orbx < 25 || orbx > 575) {
    vx = -vx;
  }

  if (orby > 575) {
    vy = vy * -0.90;
    vx = vx * 0.95;
  }

  if (akey) x = x - 5;
  if (dkey) x = x + 5;
  if (wkey) y = y - 5;
  if (skey) y = y + 5;

  if (akey2) x2 = x2 - 5;
  if (dkey2) x2 = x2 + 5;
  if (wkey2) y2 = y2 - 5;
  if (skey2) y2 = y2 + 5;

  //collisions
  if (dist(x2, y2, orbx, orby) <= 75) {
    vx = -vx;
    vy = vy * -0.85;
  }
  
  if (dist(x, y, orbx, orby) <= 75) {
    vy = vy * -0.85;
  }
  
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
