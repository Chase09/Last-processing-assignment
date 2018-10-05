PImage stick2;//An image of a stick//
PImage stick3;//Another image of a stick//

PImage lillypad2;//An image of a lillypad//

PImage raindrop;//An image of a raindrop//

PImage frog;//An image of a frog//

int frogX = 1;//An X variable for the frog//
int frogY = 1150;//A Y variable for the frog//

int rainY = 0;//A Y variable for the rain//

int timer2;//This is a variable for the timer//


void setup()
{
  fullScreen();//This makes the window fullscreen//
  frog = loadImage("frog.png");//This loads the image of the frog//
  lillypad2 = loadImage("lillypad2.png");//This loads the images of the lillypads//
  stick2 = loadImage("stick2.png");//This loads the image of the sticks//
  stick3 = loadImage("stick3.png");//This loads the image of the stick on the top of the window//
  raindrop = loadImage("raindrop.png");//This loads the image of the raindrops//
  timer2 = second();//This make the timer go up by seconds//
}

boolean a = false;

void draw()
{
  if (a == false)
  {
    background(187, 0, 255);//This sets the colour of the background to purple//
    fill(255);//This makes the timer white//
    textSize(50);//This is the text size//
    int timer = second() - timer2; 
    text("Timer:", 1150, height/2);//This makes the timer appear close to the middle of the screen//
    text(timer, width/2, height/2);//This makes the seconds appear in the middle of the screen//

    fill(255);//This makes the clouds white//
    noStroke();//This makes the the clouds have no stroke//
    //These make the clouds//
    ellipse(100, 0, 200, 200);
    ellipse(200, 50, 200, 200);
    ellipse(300, 70, 200, 200);
    ellipse(400, 90, 200, 200);
    ellipse(500, 70, 200, 200);
    ellipse(600, 50, 200, 200);
    ellipse(700, 30, 200, 200);
    ellipse(800, 10, 200, 200);
    ellipse(900, 0, 200, 200);
    ellipse(1000, 50, 200, 200);
    ellipse(1100, 70, 200, 200);
    ellipse(1200, 90, 200, 200);
    ellipse(1300, 70, 200, 200);
    ellipse(1400, 50, 200, 200);
    ellipse(1500, 30, 200, 200);
    ellipse(1600, 10, 200, 200);
    ellipse(1700, 0, 200, 200);
    ellipse(1800, 50, 200, 200);
    ellipse(1900, 70, 200, 200);
    ellipse(2000, 90, 200, 200);
    ellipse(2100, 70, 200, 200);
    ellipse(2200, 50, 200, 200);
    ellipse(2300, 30, 200, 200);
    ellipse(2400, 10, 200, 200);
    ellipse(2500, 0, 200, 200);
    ellipse(2600, 50, 200, 200);
    ellipse(2700, 70, 200, 200);
    ellipse(2800, 90, 200, 200);
    ellipse(2900, 70, 200, 200);

    //This makes the water at the bottom of the window//
    fill(0, 255, 0);
    fill(0, 0, 255);
    rectMode(CORNER);
    rect(0, 2000, 2800, -800);
    fill(0, 255, 0);

    //This makes the lillypads appear in the correct coordinates//
    imageMode(CENTER);
    image(lillypad2, 200, 1250, 200, 100);
    image(lillypad2, 800, 1250, 200, 100);
    image(lillypad2, 1400, 1250, 200, 100);
    image(lillypad2, 2000, 1250, 200, 100);
    image(lillypad2, 2600, 1250, 200, 100);

    //This makes the frog start in the right coordinates//
    image(frog, frogX, frogY, 100, 50);

    //This makes the sticks appear in the right coordinates//
    image(stick2, 500, 1050, 120, 300);
    image(stick2, 1100, 950, 120, 300);
    image(stick2, 1700, 1050, 120, 300);
    image(stick2, 2300, 950, 120, 300);
    image(stick3, 1500, 800, 3200, 300);

    //This makes the raindrops start in the right spot//
    image(raindrop, 100, rainY, 100, 100);
    image(raindrop, 400, rainY, 100, 100);
    image(raindrop, 700, rainY, 100, 100);
    image(raindrop, 1000, rainY, 100, 100);
    image(raindrop, 1300, rainY, 100, 100);
    image(raindrop, 1600, rainY, 100, 100);
    image(raindrop, 1900, rainY, 100, 100);
    image(raindrop, 2200, rainY, 100, 100);
    image(raindrop, 2500, rainY, 100, 100);

    rainY = rainY+300;//This is the speed of the raindrops//

    //This makes the reset button appear when the frog reaches the end//
    if (frogX >= 2800)
    {
      fill(255);
      rectMode(CENTER);
      textAlign(CENTER);
      noStroke();
      rect(1300, 600, 400, 200);
      fill(0);
      text("RESET", 1300, 600);
      a = true;
    }
  }

  //This makes the reset button appear when the frog hits the top stick and when it hits the water//
  if (frogY <= 800 || frogY >= 1200)
  {
    fill(255);
    rectMode(CENTER);
    textAlign(CENTER);
    noStroke();
    rect(1300, 600, 400, 200);
    fill(0);
    text("RESET", 1300, 600);
    a = true;
  }
  
  //This makes the reset button appear when the frog hits the first stick//
  if (frogX >= 470 && frogX <= 530 && frogY >= 900 && frogY <= 1200)
  {
    fill(255);
    rectMode(CENTER);
    textAlign(CENTER);
    noStroke();
    rect(1300, 600, 400, 200);
    fill(0);
    text("RESET", 1300, 600);
    a = true;
  }
  //This makes the reset button appear when the frog hits the second stick//
  if (frogX >= 1070 && frogX <= 1130 && frogY >= 800 && frogY <= 1100)
  {
    fill(255);
    rectMode(CENTER);
    textAlign(CENTER);
    noStroke();
    rect(1300, 600, 400, 200);
    fill(0);
    text("RESET", 1300, 600);
    a = true;
  }
  
  //This makes the reset button appear when the frog hits the third stick//
  if (frogX >= 1670 && frogX <= 1730 && frogY >= 900 && frogY <= 1200)
  {
    fill(255);
    rectMode(CENTER);
    textAlign(CENTER);
    noStroke();
    rect(1300, 600, 400, 200);
    fill(0);
    text("RESET", 1300, 600);
    a = true;
  }
  
  //This makes the reset button appear when the frog hits the fourth stick//
  if (frogX >= 2270 && frogX <= 2330 && frogY >= 800 && frogY <= 1100)
  {
    fill(255);
    rectMode(CENTER);
    textAlign(CENTER);
    noStroke();
    rect(1300, 600, 400, 200);
    fill(0);
    text("RESET", 1300, 600);
    a = true;
  }
  
  //This makes the rain keep repeating itself//
  if (rainY >= 2500)
  {
    rainY=0;
  }
}

void mouseClicked()
{
  //This makes it so when you press the reset button it respawns the frog back at the start//
  if (mouseX >= 1100 && mouseX <= 1500 && mouseY >= 500 && mouseY <= 700)
  {
    frogX = 100;
    frogY =1150;
    a = false;
  }
}

void keyPressed()
{
  //This makes it so when you press w,a,s,d it makes it move the frog in any direction//
  if (key == 'd')
  {
    frogX = frogX+30;
  }
  if (key == 'w')
  {
    frogY = frogY-30;
  }
  if (key == 'a')
  {
    frogX = frogX-30;
  }
  if (key == 's')
  {
    frogY = frogY+30;
  }
}

/**
1) My four or more images or shapes are my image of a frog, an image of sticks, an image of raindrops, a rectangle,
and the circles to make the clouds.
2) I watched a video to make the rain repeat itself.
3) My four or more animations are my frog moving, the reset button reseting the game, the raindrops falling, and 
the timer.
4)When you press the w,a,s,d the frog moves in a certain direction.
5)When you click the reset button it resets the game so then everything is back to how it started.
*/
