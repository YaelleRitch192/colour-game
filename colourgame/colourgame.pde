//yaelle ritch
//sept 17
//colourgame

//varibles

//ints
int wordr;
int colourr;
int score;
int highscore;
int timerx;
int fifty;

int mode;
final int intro=0;
final int game=1;
final int gameover=2;

PFont font;

//array
String[] words;
color[]colours;

//gif
PImage []gif;
int frames;
int i;
int f;

//colours
color red = #FF0000;
color orange = #FF8400;
color yellow = #FFEA00;
color green = #29FF00;
color blue = #0070FF;
color purple = #C300FF;

void setup() {
  size(800, 600);
  font=createFont("font.ttf", 100);
  mode=intro;
  words=new String[6];
  words[0]="red";
  words[1]="orange";
  words[2]="yellow";
  words[3]="green";
  words[4]="blue";
  words[5]="purple";
  colours=new color[6];
  colours[0]=red; 
  colours[1]=orange;
  colours[2]=yellow;
  colours[3]=green;
  colours[4]=blue;
  colours[5]=purple;
  //gif
   frames=9;
 gif=new PImage[frames];
 int i = 0;
while(i<frames){
gif[i] = loadImage ("frame_0"+i+"_delay-0.1s.gif");
i=i+1;
}
}

void draw() {
  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if(mode==gameover){
    gameover();
  }
}
