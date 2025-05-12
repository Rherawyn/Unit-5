void powerUp () {
  pd = 50;
  if (power == smallball) {
    fill(57, 154, 255);
    stroke(42, 140, 242);
    circle(px, py, pd);
  } else if (power == shield) {
    fill(245, 234, 175);
    stroke(252, 235, 133);
    circle(px, py, pd);
  } else if (power == speed) {
    fill(175, 255, 118);
    stroke(149, 240, 85);
    circle(px, py, pd);
  }

  //power up collision
  if (dist(x, y, px, py) <= d /2 + 25) {
    if (power == smallball) {
      d = 60;
    } else if (power == shield) {
      orbd = 70;
    } else if (power == speed) {
      speedUp = true;
    }
    px = random(30, width-30);
    py = random(30, height-30);
    power = int(random(3));
    t2 = -100;
  } else if (dist(x2, y2, px, py) <= d2 /2 + 25) {
    if (power == smallball) {
      d2 = 60;
    } else if (power == shield) {
      orbd2 = 70;
    } else if (power == speed) {
      speedUp2 = true;
    }
    px = random(30, width-30);
    py = random(30, height-30);
    power = int(random(3));
    t2 = -100;
  }
}
