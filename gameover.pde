void gameover () {
  background(255);
  
   gameover.play();

  if (leftscore> rightscore) {
    fill(#EBDFF2);
    textSize(50);
    text("LEFT WINS!", 400, 200);

    //Replay button
    fill (#7725A5);
    strokeWeight(5);
    //tactile replay button 
    if (mouseX> 300 && mouseX< 500 && mouseY > 300 && mouseY < 400) {
      stroke(#7725A5);
    } else {
      stroke(255);
    }
    rect( 300, 300, 200, 100);
    fill (255);
    textSize (20);
    text ("RETURN TO HOME", 400, 350);
    
  } else  if (rightscore> leftscore) {
    background( 255);
    fill(#EBDFF2);
    textSize( 50);
    text("RIGHT WINS!", 400, 200);

    //Replay button
    strokeWeight(5);
    fill (#7725A5);
    //tactile replay button 
    if (mouseX> 300 && mouseX< 500 && mouseY > 300 && mouseY < 400) {
      stroke(#7725A5);
    } else {
      stroke(255);
    }
    rect( 300, 300, 200, 100);
    fill (255);
    textSize (20);
    text ("RETURN TO HOME", 400, 350);
  }
}

void gameoverClicks () {
  if (mouseX> 300 && mouseX< 500 && mouseY > 300 && mouseY < 400) {
    mode = INTRO;
    rightscore = 0;
    leftscore = 0;
  }
}
