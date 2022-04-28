import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//PONG GAME
//Alyssa Xu
// 2-4


//Mode Framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

// AI
boolean AI;

// font
PFont myFont;

// SOUND VARIABLES
Minim minim;
AudioPlayer theme, coin, bump, gameover;

//entity variables
float leftx, lefty, leftd, rightd, rightx, righty;
float ballx, bally, balld ;

//ball variables
float vx, vy;
float x, y, d, r;

//keyboard variables
boolean wkey, skey, upkey, downkey;

// scoring
int leftscore, rightscore, timer;

void setup() {
  textAlign (CENTER, CENTER);
  size(800, 600);
  mode =INTRO;

  // font
  myFont = createFont ("Times New Roman", 100);

  //initalize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;

  rightx = 800;
  righty = height/2;
  rightd = 200;

  // intialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;

  // intialize speed
  vx = random(-5, 5);
  vy = random( -5, 5);

  // tactile initialize
  d= 100;

  //initialize timer
  rightscore = 0;
  leftscore =0;
  timer = 100;

  //initialize keyboards variables
  wkey = skey = upkey = downkey = false;
  
    // minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump=minim.loadFile("bump.wav");
  gameover = minim.loadFile( "gameover.wav");
  
}

void draw() {
  if ( mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game () ;
  } else if (mode == PAUSE) {
    pause() ;
  } else if (mode == GAMEOVER) {
    gameover ();
  } else {
    println("Mode error" + mode);
  }
}
