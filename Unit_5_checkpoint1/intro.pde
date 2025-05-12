boolean pUpOn;

void intro () {
  background(206, 255, 251);
  fill(126, 236, 245);
  stroke(102, 224, 234);
  strokeWeight(10);
  rect(500, 350, 400, 200);
  strokeWeight(5);
  if (pUpOn) {
    fill(175, 255, 118);
    stroke(149, 240, 85);
  } else {
    fill(234, 67, 0);
    stroke(185, 55, 4);
  }
  rect(1050, 650, 150, 75);
  textSize(100);
  fill(0);
  text("START", 560, 480);
  textSize(25);
  fill(0);
  text("POWER UPS", 1061, 695);
}

void gamestart() {
  if (mouseX > 500 && mouseX < 900 && mouseY > 350 && mouseY < 550) {
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

    vx = 10;
    vy = 0;

    vx2 = -10;
    vy2 = 0;

    s1 = 0;
    s2 = 0;
    mode = game;

    px = random(30, width-30);
    py = random(30, height-30);
    power = int(random(3));
  }
}

void pUpOn() {
  if (mouseX > 1050 && mouseX < 1200 && mouseY > 650 && mouseY < 725) {
    pUpOn = !pUpOn;
  }
}
