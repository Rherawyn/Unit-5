void game() {
  //change scene
  if (s1 > 4 || s2 > 4) {
    mode = gameover;
  }

  background(206, 255, 251);
  strokeWeight(5);
  fill(0, 227, 213);
  stroke(0, 191, 179);
  circle(x, y, d);
  circle(orbx, orby, orbd);
  fill(234, 67, 0);
  stroke(185, 55, 4);
  circle(x2, y2, d2);
  circle(orbx2, orby2, orbd2);
  fill(126, 236, 245);
  stroke(102, 224, 234);
  rect(650, 825, 100, 50);
  rect(650, 25, 100, 50);
  textSize(30);
  fill(0);
  text("RESET", 659, 860);
  text("MENU", 661, 60);

  //movement
  if (speedUp) {
    if (t > 0) {
      if (akey) x = x - 10;
      if (dkey) x = x + 10;
      if (wkey) y = y - 10;
      if (skey) y = y + 10;
    }
  } else if (!speedUp) {
    if (t > 0) {
      if (akey) x = x - 7;
      if (dkey) x = x + 7;
      if (wkey) y = y - 7;
      if (skey) y = y + 7;
    }
  }

  if (speedUp2) {
    if (t > 0) {
      if (akey2) x2 = x2 - 10;
      if (dkey2) x2 = x2 + 10;
      if (wkey2) y2 = y2 - 10;
      if (skey2) y2 = y2 + 10;
    }
  } else if (!speedUp2) {
    if (t > 0) {
      if (akey2) x2 = x2 - 7;
      if (dkey2) x2 = x2 + 7;
      if (wkey2) y2 = y2 - 7;
      if (skey2) y2 = y2 + 7;
    }
  }

  if (x >= width-40) x = width-40;
  if (x <= 40) x = 40;
  if (y >= height-40) y = height-40;
  if (y <= 40) y = 40;
  if (x2 >= width-40) x2 = width-40;
  if (x2 <= 40) x2 = 40;
  if (y2 >= height-40) y2 = height-40;
  if (y2 <= 40) y2 = 40;


  //gravity

  ax =  -((orbx - x)/2)/ dist(x, y, orbx, orby)* dist(x, y, orbx, orby)/130;
  ay =  -((orby - y)/2)/ dist(x, y, orbx, orby)* dist(x, y, orbx, orby)/130;

  ax2 =  -((orbx2 - x2)/2)/ dist(x2, y2, orbx2, orby2)* dist(x2, y2, orbx2, orby2)/130;
  ay2 =  -((orby2 - y2)/2)/ dist(x2, y2, orbx2, orby2)* dist(x2, y2, orbx2, orby2)/130;

  orbx += vx;
  orby += vy;

  orbx2 += vx2;
  orby2 += vy2;

  vx = vx+(ax/2);
  vy = vy+(ay/2);

  vx2 = vx2+(ax2/2);
  vy2 = vy2+(ay2/2);

  if (vx > 15) vx -= 3;

  if (vx < -15) vx += 3;

  if (vy > 15) vy -= 3;

  if (vy < -15) vy += 3;

  if (vx2 > 15) vx2 -= 3;

  if (vx2 < -15) vx2 += 3;

  if (vy2 > 15) vy2 -= 3;

  if (vy2 < -15) vy2 += 3;

  //bouncy bounce

  if (orbx > width-30) {
    vx = -vx;
    orbx = width-30;
  }

  if (orbx < 30) {
    vx = -vx;
    orbx = 30;
  }

  if (orby > height-30) {
    vy = -vy;
    orby = height-30;
  }

  if (orby < 30) {
    vy = -vy;
    orby = 30;
  }

  if (orbx2 > width-30) {
    vx2 = -vx2;
    orbx2 = width-30;
  }

  if (orbx2 < 30) {
    vx2 = -vx2;
    orbx2 = 30;
  }

  if (orby2 > height-30) {
    vy2 = -vy2;
    orby2 = height-30;
  }

  if (orby2 < 30) {
    vy2 = -vy2;
    orby2 = 30;
  }

  //collisions
  if (dist(x2, y2, orbx2, orby2) <= (d2 /2) + (orbd2 /2)) {
    vx2 = (orbx2 - x2)/5;
    vy2 = (orby2 - y2)/5;
    bounce();
  }

  if (dist(x, y, orbx, orby) <= (d /2) + (orbd /2)) {
    vx = (orbx - x)/5;
    vy = (orby - y)/5;
    bounce();
  }

  //if (dist(orbx, orby, orbx2, orby2) <= 50) {
  //  vx2 = (orbx2 - x2)/10;
  //  vy2 = (orby2 - y2)/10;
  //  vx = (orbx - x)/10;
  //  vy = (orby - y)/10;
  //  //bounce();
  //}

  // Scoring system
  if (dist(x, y, orbx2, orby2) <= (d /2) + (orbd2 /2) || (dist(x, y, badx, bady) <= (d2 /2) + (badd /2))) {
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

    s2 += 1;
  } else if (dist(x2, y2, orbx, orby) <= (d2 /2) + (orbd /2) || (dist(x2, y2, badx, bady) <= (d2 /2) + (badd /2))) {
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

    s1 += 1;
  }

  t += 1;
  t2 += 1;

  //power ups
  if (pUpOn) {
    if (t2 >= 500) {
      d = 80;
      d2 = 80;
      orbd = 50;
      orbd2 = 50;
      speedUp = false;
      speedUp2 = false;
      powerUp();
    }
  }

  //score
  textSize(50);
  fill(0, 227, 213);
  text(s1, 600, 60);
  fill(234, 67, 0);
  text(s2, 775, 60);
  
  //diffuclty effect
    difficulty ();
}

//CONROLES
void keyPressed() {
  if (key == 'a' || key == 'A') akey = true;
  if (key == 'd' || key == 'D') dkey = true;
  if (key == 's' || key == 'S') skey = true;
  if (key == 'w' || key == 'W') wkey = true;

  if (keyCode == RIGHT) dkey2 = true;
  if (keyCode == LEFT) akey2 = true;
  if (keyCode == UP) wkey2 = true;
  if (keyCode == DOWN) skey2 = true;
}

void keyReleased() {
  if (key == 'a' || key == 'A') akey = false;
  if (key == 'd' || key == 'D') dkey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'w' || key == 'W') wkey = false;

  if (keyCode == RIGHT) dkey2 = false;
  if (keyCode == LEFT) akey2 = false;
  if (keyCode == UP) wkey2 = false;
  if (keyCode == DOWN) skey2 = false;
}

void resetgame() {
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
    
    bx = 5;
    by = 5;

    vx = 10;
    vy = 0;

    vx2 = -10;
    vy2 = 0;
  }
}

void returnmenu () {
  if (mouseX > 650 && mouseX < 750 && mouseY > 25 && mouseY < 75) {
    mode = intro;
  }
}
