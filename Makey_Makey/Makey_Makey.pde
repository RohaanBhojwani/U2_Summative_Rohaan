//Variables
PImage ScoreBoard;
PImage Background;
int Score = 0;
Timer timer;


void setup()
{
  
  size(800,800);
 Background = loadImage("Background.jpg");
Background.resize(800,800);
 ScoreBoard = loadImage("ScoreBoard.png");
 ScoreBoard.resize(400,310);
 timer = new Timer(60000);
  timer.start();
}
void draw()
{
  image (Background, 0,0);
 image (ScoreBoard, 400, 100);
 fill(255,0,0);
 textSize(30);
  text(Score, 550,150);
   text((60-(millis()-timer.savedTime)/1000),570,380);
   
  if (timer.isFinished()) {
    background(0,0,0);
    text("Game Over. Your score is", 200,400);
    text(Score,350,400);
  }
}

void keyPressed()
{
 if (key==' ')
  {
Score=Score+1;
  }
  }
  
  
  
  
