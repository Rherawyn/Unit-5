//import processing.sound.*;

// ball
float x, y, //position
  d;    //diameter

// ball2
float x2, y2, //position
  d2;     //diameter

// orb
float orbx, orby, orbd; // orb pos/diam
float vx, vy;           // orb velocity
float ax, ay;           //orb gravity

// orb2
float orbx2, orby2, orbd2; // orb pos/diam
float vx2, vy2;           // orb velocity
float ax2, ay2;           //orb gravity

//key variables
boolean akey, dkey, skey, wkey;

boolean akey2, dkey2, skey2, wkey2;

//scores variables
int s1;

int s2;

// timer variable
int t;

//mode framework
int mode;

final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;

//sound variable
//SoundFile music;
//SoundFile bounce;
//SoundFile win;


void setup() {
  size(1400, 900, P2D);
  strokeWeight(5);
  frameRate(60);
  //music.loop();

  //load sounds
  //music = new SoundFile(this,"");
  //bounce = new SoundFile(this,"");
  //win = new SoundFile(this,"");


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

  t = 1;

  mode = game;
}

void draw() {
  if  (mode == intro) {
    intro();
  }
  if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("error! mode is" + mode);
  }
}

//void bounce() {
// bounce.stop();
// bounce.play();
//}
