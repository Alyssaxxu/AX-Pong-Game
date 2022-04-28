void game () {

  background (0);

  // center line
  strokeWeight (5);
  stroke (255);
  line (width/2, 0, width/2, height);

  //scoreboard
  textSize( 50);
  fill (255);
  text (leftscore, width/4, 100);
  text (rightscore, 3*width/4, 100);
  //text( timer, 3*width/4, 500);
  timer = timer - 1;

  // draw paddles
  fill(#EBDFF2);
  stroke(255);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  //draw ball
  fill(#7725A5);
  stroke(255);
  circle (ballx, bally, balld);


  // moving ball
  if ( timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  bally = max(bally, 0);
  bally= min (bally, 600);

  // bouncing
  if (bally< balld/2 || bally > height - balld/2) {
    vy = vy * -1;
  }

  // ball rebound
  if (dist ( ballx, bally, leftx, lefty) <= ((leftd/2) + (balld/2))) {
    vx = (ballx - leftx)/20;
    vy= (bally -lefty)/ 20;
  }
  if (dist ( ballx, bally, rightx, righty) <= ((rightd/2) + (balld/2))) {
    vx =(ballx - rightx)/20;
    vy = (bally - righty)/ 20;
  }

  // move paddles
  if (wkey ==true) lefty = lefty-5;
  if (skey==true ) lefty = lefty +5;

  if (AI == false) {
    if (upkey == true) righty = righty -5;
    if (downkey == true) righty = righty +5;
  } else {
    if (ballx > width/2) {
      if (bally> righty) {
        righty = righty + 5;
      }
      if (bally < righty) {
        righty = righty -5;
      }
    }
  }

  lefty = max (lefty, 0);
  lefty = min(lefty, 600);
  righty = max (righty, 0);
  righty = min (righty, 600);


  // scoring
  if ( ballx < 0) {
    rightscore = rightscore +1;
    coin.rewind();
    coin.play();
    ballx = width/ 2;
    bally = height /2 ;
    timer = 100;
  } else {
    if (rightscore== 3) mode = GAMEOVER;
  }

  if (ballx > 800) {
    leftscore ++;
    coin.rewind();
    coin.play();
    ballx = width/ 2;
    bally = height /2 ;
    timer = 100;
  } else {
    if (leftscore== 3) mode = GAMEOVER;
  }
}

void gameClicks() {
  if (leftscore==3) {
    mode = GAMEOVER;
  }
  if (rightscore== 3) {
    mode = GAMEOVER;
  }
  if (mouseX> 0 && mouseX< 800 && mouseY > 0 && mouseY< 600) {
    mode = PAUSE;
  }
}
