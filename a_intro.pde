void intro(){
 background(255);
 textFont(font);
 fill(0);
 textSize(90);
 text("colour game", 100,300);
}



void introclicks(){
if(mouseX>0 && mouseX<800 && mouseY>0 && mouseY<600) mode=game;

}
