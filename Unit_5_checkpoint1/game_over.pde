void gameover () {
  textSize(50);
  if (s1 == 5) {
    if (pc1 == 1) {
      fill(default1);
    } else if (pc1 == 2) {
      fill(green);
    } else if (pc1 == 3) {
      fill(lime);
    } else if (pc1 == 4) {
      fill(olive);
    } else if (pc1 == 5) {
      fill(black);
    }
    text("PLAYER 1 WINS", 545, 450);
  } else if (s2 == 5) {
    if (pc2 == 1) {
      fill(default2);
    } else if (pc2 == 2) {
      fill(rose);
    } else if (pc2 == 3) {
      fill(orange);
    } else if (pc2 == 4) {
      fill(yellow);
    } else if (pc2 == 5) {
      fill(black);
    }
    text("PLAYER 2 WINS", 555, 450);
  }
}

void resetgameover() {
  if (mouseX > 650 && mouseX < 750 && mouseY > 825 && mouseY < 875) {
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

    s1 = 0;
    s2 = 0;
    mode = game;
  }
}
