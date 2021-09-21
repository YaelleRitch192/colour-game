void game() {
  background(0);
  fill(255);
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
  fill(colours[colourr]);
  text(words[wordr], 400, 400);

  textAlign(CORNER);

  // timer 
  fill(0, 255, 0);
  timerx=timerx + 5;
  rect(0, 550, timerx, 50);
  if (timerx>800)mode=gameover;
}

void gameclicks() {

  if (mouseX>0 && mouseX<width/2 && mouseY>0 && mouseY <height) {
    if (colourr==wordr) {
      score=score+1;
      //50/50
      fifty=fifty+int(random(0, 2));
      if (fifty<1) {
        wordr=int(random(0, 6));
        colourr=wordr;
      } else {
        wordr=int(random(0, 6));
        colourr=int(random(0, 6));
      }
      timerx=0;
    } else mode=gameover;
  }


  if (mouseX>width/2 && mouseX<width && mouseY>0 && mouseY <height) {
    if (colourr==wordr) mode=gameover;
    if (colourr>wordr || colourr<wordr) {
      score=score+1;
      //50/50
      fifty=fifty+int(random(0, 2));
      if (fifty<1) {
        wordr=int(random(0, 6));
        colourr=wordr;
      } else {
        wordr=int(random(0, 6));
        colourr=int(random(0, 6));
      }
      timerx=0;
    }
  }
}
