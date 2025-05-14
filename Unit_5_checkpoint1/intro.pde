boolean pUpOn;
boolean dif1;
boolean dif2;

void intro () {
  background(206, 255, 251);

  //start button
  fill(126, 236, 245);
  stroke(102, 224, 234);
  strokeWeight(10);
  rect(500, 350, 400, 200);

  //powerup toggle
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

  //powerup indicators
  text("Small Ball", 960, 255);
  text("Big Orb", 985, 405);
  text("Speed", 998, 555);
  textSize(40);
  text("DIFFICULTY", 605, 210);
  if (difficulty == 0) {
    text("Easy", 661, 250);
  } else if (difficulty == 1) {
    text("Medium", 630, 250);
  } else if (difficulty == 2) {
    text("Hard", 660, 250);
  }
  fill(57, 154, 255);
  stroke(42, 140, 242);
  circle(1125, 250, 80);
  fill(245, 234, 175);
  stroke(252, 235, 133);
  circle(1125, 400, 80);
  fill(175, 255, 118);
  stroke(149, 240, 85);
  circle(1125, 550, 80);
  triangle(625, 300, 675, 275, 675, 325);
  triangle(775, 300, 725, 275, 725, 325);
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
    
    badx = 700;
    bady = 450;
    badd = 100;
    
    bx = 5;
    by = 5;

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

  if (mouseX > 1050 && mouseX < 1200 && mouseY > 650 && mouseY < 725) {
    pUpOn = !pUpOn;
  }

  if (mouseX > 625 && mouseX < 675 && mouseY > 275 && mouseY < 325) {
    if (difficulty >= 1) {
      difficulty -= 1;
    }
  } else if (mouseX > 725 && mouseX < 775 && mouseY > 275 && mouseY < 325) {
    if (difficulty <= 1) {
      difficulty += 1;
    }
  }
}
