int difficulty;

final int easy = 0;
final int medium = 1;
final int hard = 2;

float badx, bady, badd; // enemy pos/diam
float bx, by;           // enemy velocity

void difficulty () {
  if (difficulty == 0) {
  } else if (difficulty == 1) {
    enemy ();
  } else if (difficulty == 2) {
    enemy ();
  }
}

void enemy () {
  fill (50);
  stroke (25);
  circle(badx,bady,badd);
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
}
