boolean pUpOn;
boolean dif1;
boolean dif2;

int pc1;
int pc2;

//color options
//player 1
color default1 = #00E3D5;
color default1s = #00BFB3;

color green = #24FFA2;
color greens = #1CE891;

color lime = #C0FF2E;
color limes = #B4F225;

color olive = #A0C42D;
color olives = #94B725;

//player 2
color default2 = #EA4300;
color default2s = #B93704;

color orange = #F59516;
color oranges = #DE8816;

color yellow = #ECED26;
color yellows = #E2E329;

color rose = #F71653;
color roses = #D82152;

color blacks = #323232;
color black = #4B4B4B;

void options () {
  background(206, 255, 251);
  textSize(100);
  fill(0);
  stroke(0);
  text("OPTIONS", 502, 100);
  line(490,115,910,115);

  //start button
  fill(126, 236, 245);
  stroke(102, 224, 234);
  strokeWeight(5);
  rect(650, 825, 100, 50);

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
  textSize(25);
  fill(0);
  text("BACK", 670, 857);
  textSize(25);
  fill(0);
  text("POWER UPS", 1061, 695);

  //powerup indicators
  text("Small Ball", 1010, 255);
  text("Big Orb", 1035, 405);
  text("Speed", 1048, 555);
  textSize(40);
  text("DIFFICULTY", 600, 210);
  if (difficulty == 0) {
    text("Easy", 661, 250);
  } else if (difficulty == 1) {
    text("Medium", 630, 250);
  } else if (difficulty == 2) {
    text("Hard", 660, 250);
  } else if (difficulty == 3) {
    text("Extreme", 630, 250);
  }
  fill(57, 154, 255);
  stroke(42, 140, 242);
  circle(1175, 250, 80);
  fill(245, 234, 175);
  stroke(252, 235, 133);
  circle(1175, 400, 80);
  fill(175, 255, 118);
  stroke(149, 240, 85);
  circle(1175, 550, 80);
  triangle(625, 300, 675, 275, 675, 325);
  triangle(775, 300, 725, 275, 725, 325);

  // cosmetic indicators
  fill(0);
  textSize(40);
  text("Player 1", 85, 125);
  text("Player 2", 285, 125);
  //player 1
  fill(default1);
  stroke(default1s);
  circle(150, 200, 100);

  fill(green);
  stroke(greens);
  circle(150, 350, 100);

  fill(lime);
  stroke(limes);
  circle(150, 500, 100);

  fill(olive);
  stroke(olives);
  circle(150, 650, 100);

  fill(black);
  stroke(blacks);
  circle(150, 800, 100);

  //player 2
  fill(default2);
  stroke(default2s);
  circle(350, 200, 100);

  fill(rose);
  stroke(roses);
  circle(350, 350, 100);

  fill(orange);
  stroke(oranges);
  circle(350, 500, 100);

  fill(yellow);
  stroke(yellows);
  circle(350, 650, 100);

  fill(black);
  stroke(blacks);
  circle(350, 800, 100);
  
  //borders
  noFill();
  stroke(157, 255, 247);
  strokeWeight(10);
  rect(25, 75, 450, 800);
  rect(950, 180, 350, 570);
  rect(580, 150, 240, 200);

  //tactile
  strokeWeight(5);
  //vanity stuff
  for (int i = 0; i < 5; i ++) {
    if (dist(150, 200 + 150*i, mouseX, mouseY) < 50) {
      noFill();
      stroke(100);
      circle(150, 200 + 150*i, 110);
    }
  }
  
  for (int i = 0; i < 5; i ++) {
    if (dist(350, 200 + 150*i, mouseX, mouseY) < 50) {
      noFill();
      stroke(100);
      circle(350, 200 + 150*i, 110);
    }
  }
  
  //triangle buttons
  
  if (mouseX > 625 && mouseX < 675 && mouseY > 275 && mouseY < 325) {
    noFill();
    stroke(100);
    triangle(615, 300, 680, 267, 680, 333); 
  }
  
  if (mouseX > 725 && mouseX < 775  && mouseY > 275 && mouseY < 325) {
    noFill();
    stroke(100);
    triangle(720, 333, 720, 267, 785, 300); 
  }
}

void setting() {
  if (mouseX > 650 && mouseX < 750 && mouseY > 825 && mouseY < 875) {
    mode = intro;
  }

  //powerup stuff
  if (mouseX > 1050 && mouseX < 1200 && mouseY > 650 && mouseY < 725) {
    pUpOn = !pUpOn;
  }

  if (mouseX > 625 && mouseX < 675 && mouseY > 275 && mouseY < 325) {
    if (difficulty >= 1) {
      difficulty -= 1;
    }
  } else if (mouseX > 725 && mouseX < 775 && mouseY > 275 && mouseY < 325) {
    if (difficulty <= 2) {
      difficulty += 1;
    }
  }

  // cosmetic stuff
  //player1
  if (dist(150, 200, mouseX, mouseY) < 50) {
    pc1 = 1;
  }
  if (dist(150, 350, mouseX, mouseY) < 50) {
    pc1 = 2;
  }
  if (dist(150, 500, mouseX, mouseY) < 50) {
    pc1 = 3;
  }
  if (dist(150, 650, mouseX, mouseY) < 50) {
    pc1 = 4;
  }
  if (dist(150, 800, mouseX, mouseY) < 50) {
    pc1 = 5;
  }
  //player2
  if (dist(350, 200, mouseX, mouseY) < 50) {
    pc2 = 1;
  }
  if (dist(350, 350, mouseX, mouseY) < 50) {
    pc2 = 2;
  }
  if (dist(350, 500, mouseX, mouseY) < 50) {
    pc2 = 3;
  }
  if (dist(350, 650, mouseX, mouseY) < 50) {
    pc2 = 4;
  }
  if (dist(350, 800, mouseX, mouseY) < 50) {
    pc2 = 5;
  }
}
