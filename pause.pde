void pause() {
   textAlign (CENTER, CENTER);
  textSize(100);
  fill( 255);
  
  text( "PAUSED", 400, 300);
}

void pauseClicks () {
   if(mouseX> 0 && mouseX< 800 && mouseY > 0 && mouseY< 600) {
    mode = GAME;
  }
} 
