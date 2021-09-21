void gameover() {
  background(255);
  text("gameover", 125, 200);
  text("score: " +score, 200, 400);
  text("high score: " + highscore, 40, 525);
  if (highscore<score) highscore=score;
}

void gameoverclicks() {
  mode=intro;
  score=0;
}
