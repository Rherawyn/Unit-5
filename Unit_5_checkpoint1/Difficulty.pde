int difficulty;
int enemydirection;

final int easy = 0;
final int medium = 1;
final int hard = 2;
final int Extreme = 3;

float badx, bady, badd; // enemy pos/diam
float bx, by;           // enemy velocity

void difficulty () {
  if (difficulty == 0) {
  } else if (difficulty == 1) {
    deathwall ();
  } else if (difficulty == 2) {
    enemy ();
  } else if (difficulty == 3) {
    deathwall ();
    enemy ();
  }
}

void enemy () {
  fill (50);
  stroke (25);
  strokeWeight(5);
  circle(badx, bady, badd);
  badx += bx;
  bady += by;

  if (badx > width-50) {
    bx = -bx;
    badx = width-50;
  }

  if (badx < 50) {
    bx = -bx;
    badx = 50;
  }

  if (bady > height-50) {
    by = -by;
    bady = height-50;
  }

  if (bady < 50) {
    by = -by;
    bady = 50;
  }

  if (dist(x, y, badx, bady) <= (d2 /2) + (badd /2)) {
    t = -100;
    t2 = -100;

    x = 400;
    y = 450;
    d = 80;

    x2 = 1000;
    y2 = 450;
    d2 = 80;

    orbx = 400;
    orby = 200;
    orbd = 50;

    orbx2 = 1000;
    orby2 = 200;
    orbd2 = 50;

    badx = 700;
    bady = 450;
    badd = 100;

    enemydirection ();

    vx = 10;
    vy = 0;

    vx2 = -10;
    vy2 = 0;

    s2 += 1;
  } else if (dist(x2, y2, badx, bady) <= (d2 /2) + (badd /2)) {
    t = -100;
    t2 = -100;

    x = 400;
    y = 450;
    d = 80;

    x2 = 1000;
    y2 = 450;
    d2 = 80;

    orbx = 400;
    orby = 200;
    orbd = 50;

    orbx2 = 1000;
    orby2 = 200;
    orbd2 = 50;

    badx = 700;
    bady = 450;
    badd = 100;

    enemydirection ();

    vx = 10;
    vy = 0;

    vx2 = -10;
    vy2 = 0;

    s1 += 1;
  }
}

void enemydirection () {
  enemydirection = int(random(4));
  if (enemydirection == 0) {
    bx = 4;
    by = 4;
  } else if (enemydirection == 1) {
    bx = -4;
    by = 4;
  } else if (enemydirection == 2) {
    bx = 4;
    by = -4;
  } else if (enemydirection == 3) {
    bx = -4;
    by = -4;
  }
}

void deathwall () {
  noFill();
  stroke(2550, 0, 0);
  strokeWeight(10);
  rect(0, 0, 1400, 900);
  if (x <= d/2 || x >= width-d/2 || y <= d/2 || y >= height-d/2) {
    t = -100;
    t2 = -100;

    x = 400;
    y = 450;
    d = 80;

    x2 = 1000;
    y2 = 450;
    d2 = 80;

    orbx = 400;
    orby = 200;
    orbd = 50;

    orbx2 = 1000;
    orby2 = 200;
    orbd2 = 50;

    badx = 700;
    bady = 450;
    badd = 100;

    enemydirection ();

    vx = 10;
    vy = 0;

    vx2 = -10;
    vy2 = 0;

    s2 += 1;
  } else if (x2 <= d2/2 || x2 >= width-d2/2 || y2 <= d2/2 || y2 >= height-d2/2) {
    t = -100;
    t2 = -100;

    x = 400;
    y = 450;
    d = 80;

    x2 = 1000;
    y2 = 450;
    d2 = 80;

    orbx = 400;
    orby = 200;
    orbd = 50;

    orbx2 = 1000;
    orby2 = 200;
    orbd2 = 50;

    badx = 700;
    bady = 450;
    badd = 100;

    enemydirection ();

    vx = 10;
    vy = 0;

    vx2 = -10;
    vy2 = 0;

    s1 += 1;
  }
}
