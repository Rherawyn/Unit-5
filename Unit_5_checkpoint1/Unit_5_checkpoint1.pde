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
  frameRate(60);
  //music.loop();

  //load sounds
  //music = new SoundFile(this,"");
  //bounce = new SoundFile(this,"");
  //win = new SoundFile(this,"");

  mode = intro;
}

void draw() {
  if  (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("error! mode is " + mode);
  }
}
void mouseReleased() {
  if  (mode == intro) {
    gamestart();
  } else if (mode == game) {
    resetgame();
  } else if (mode == gameover) {
    resetgameover();
  } else {
    println("error! mode is" + mode);
  }
}

//void bounce() {
// bounce.stop();
// bounce.play();
//}
