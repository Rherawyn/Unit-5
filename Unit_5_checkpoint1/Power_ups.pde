void powerUp () {
  pd = 50;
  px = random(30, width-30);
  py = random(30, height-30);
  power = int(random(3));
  if (power == smallball) {
    fill(57, 154, 255);
    stroke(42, 140, 242);
    circle(px, py, pd);
  } else if (power == sheild) {
    fill(245, 234, 175);
    stroke(252, 235, 133);
    circle(px, py, pd);
  } else if (power == speed) {
    fill(175, 255, 118);
    stroke(149, 240, 85);
    circle(px, py, pd);
  }

  if (dist(x, y, px, y) <= 65) {

    if (power == smallball) {
      d = 40;
    } else if (power == sheild) {
      //
    } else if (power == speed) {
    }
    t2 = -100;
  } else if (dist(x2, y2, px, px) <= 65) {
    if (power == smallball) {
      d2 = 40;
    } else if (power == sheild) {
      //
    } else if (power == speed) {
    }
  }
}

//if (dist(x2, y2, px, py) <= 65) {
