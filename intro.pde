void intro () {
  background (#EBDFF2);
  textFont (myFont);

  // TITLE
  stroke(0);
  strokeWeight(1);
  fill(255);
  textSize(72);
  text( "PONG GAME", 400, 200);

  //one player button
  fill(255);
  strokeWeight(5);
  if (mouseX> 100 && mouseX< 350 && mouseY > 350 && mouseY < 475) {
    stroke(255);
  } else {
    stroke(#7725A5);
  }
  rect( 100, 350, 250, 125);
  fill(#7725A5);
  textSize(35);
  text (" 1 PLAYER", 215, 405);

  //two player button
  fill(255);
  strokeWeight(5);
  if (mouseX> 450 && mouseX< 700 && mouseY > 350 && mouseY < 475) {
    stroke(255);
  } else {
    stroke(#7725A5);
  }
  rect( 450, 350, 250, 125);
  fill(#7725A5);
  textSize(35);
  text (" 2 PLAYER", 565, 405);
}


void introClicks () {

  if (mouseX> 100 && mouseX< 350 && mouseY > 350 && mouseY < 475) {
    mode = GAME;
    AI = true;
  }
  if (mouseX> 450 && mouseX< 700 && mouseY > 350 && mouseY < 475) {
    mode = GAME;
    AI = false;
  }
}
