void gameover(){
  background(255);
text("gameover", 125,200);
text("score: " +score, 200,400);
  text("high score: " + score, 50,550);
}

void gameoverclicks(){
  mode=intro;
}
