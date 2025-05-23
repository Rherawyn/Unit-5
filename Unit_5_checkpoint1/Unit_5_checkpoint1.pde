import processing.sound.*;

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

//power ups
float px, py, pd; // power up stuffs

boolean speedUp;

boolean speedUp2;

int power;

final int smallball = 0;
final int bigball = 1;
final int speed = 2;

//key variables
boolean akey, dkey, skey, wkey;

boolean akey2, dkey2, skey2, wkey2;

//scores variables
int s1;

int s2;

// timer variable
int t;

// power up timer variable
int t2;

//mode framework
int mode;

final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;
final int options = 4;

//sound variable
//SoundFile music;
SoundFile bounce;
//SoundFile win;

void setup() {
  size(1400, 900, P2D);
  frameRate(60);
  //music.loop();

  //load sounds
  //music = new SoundFile(this,"");
  bounce = new SoundFile(this, "bounce.wav");
  //win = new SoundFile(this,"");

  mode = intro;
  pUpOn = false;
  dif1 = false;
  dif2 = false;
  
  pc1 = 1;
  pc2 = 1;
}

void draw() {
  if  (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == options){
    options();
  } else {
    println("error! mode is " + mode);
  }
}
void mouseReleased() {
  if  (mode == intro) {
    gamestart();
  } else if (mode == game) {
    resetgame();
    returnmenu();
  } else if (mode == gameover) {
    resetgameover();
    returnmenu();
  } else if (mode == options) {
    setting();
  } else {
    println("error! mode is" + mode);
  }
}

void bounce() {
  bounce.stop();
  bounce.play();
}
