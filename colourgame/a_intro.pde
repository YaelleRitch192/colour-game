void intro() {
  //gif
  image(gif[f], 0, 0, width, height);
  f=f+1;
  if (f==frames) f=0;
  //
  textFont(font);
  fill(0);
  textSize(90);
  text("colour game", 100, 300);
  timer=0;
}



void introclicks() {
  if (mouseX>0 && mouseX<800 && mouseY>0 && mouseY<600) mode=game;
  w=int(random(0, 6));
  c=int(random(0, 6));
}
