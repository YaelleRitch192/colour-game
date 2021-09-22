void game() {
  background(0);
  fill(255);
  
  //text
  stroke(255);
  rect(0, 0, 400, 600);
  fill(255, 0, 0);
  textFont(font);
  text("false", 450, 200);
  fill(0, 255, 0);
  text("true", 50, 200);
  fill(0, 0, 255);
  text("score: " + score, 200, 90);


  //button
  textAlign(CENTER);
  fill(colours[c]);
  text(words[w], 400, 400);
  textAlign(CORNER);

  // timer 
  fill(0, 255, 0);
  timer=timer + 9;
  rect(0, 550, timer, 50);
  if (timer>800)mode=gameover;
}

void gameclicks() {
//left side true
  if (mouseX>0 && mouseX<width/2 && mouseY>0 && mouseY <height) {
    if (c==w) {
      score=score+1;
      //50/50
      fifty=fifty+int(random(0, 2));
      if (fifty<1) {
        w=int(random(0, 6));
        c=w;
      } else {
        w=int(random(0, 6));
        c=int(random(0, 6));
        while (w==c) {
          w=int(random(0, 6));
          c=int(random(0, 6));
        }
      } 
      timer=0;
    } else mode=gameover;
  }


  if (mouseX>width/2 && mouseX<width && mouseY>0 && mouseY <height) {
    //right side false
    if (c==w) mode=gameover;
    if (c>w || c<w) {
      score=score+1;
      //50/50
      fifty=fifty+int(random(0, 2));
      if (fifty<1) {
        w=int(random(0, 6));
        c=w;
      } else {
        w=int(random(0, 6));
        c=int(random(0, 6));
      }
      timer=0;
    }
  }
}
