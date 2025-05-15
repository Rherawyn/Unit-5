void gameover () {
  textSize(50);
  if (s1 == 5) {
    fill(0, 227, 213);
    text("BLUE WINS", 590, 450);
  } else if (s2 == 5) {
    fill(234, 67, 0);
    text("RED WINS", 600, 450);
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
