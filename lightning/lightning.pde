import ddf.minim.*;
AudioPlayer player;
Minim minim;
int startX=100;
int endX=100;
int startY=435;
int endY=435;
int count=0;
PImage darth;

void setup()
{
    minim = new Minim(this);
    player = minim.loadFile("song.mp3", 2048);
    size(900,900);
    background(25);
    darth = loadImage("darth.png");
}
void draw()
{
  player.play();
  image(darth,0,330);
  int col1 = (int) Math.floor(Math.random() * 256);
  int col2 = (int) Math.floor(Math.random() * 256);
  int col3 = (int) Math.floor(Math.random() * 256);
  int sWeight = (int) Math.floor(Math.random() * 5 + 1);
  strokeWeight(sWeight);
  stroke(col1,col2,col3);
  while (endX<900)
  {
    endX=startX + (int) Math.floor(Math.random() * 10);
    if (mouseY<450){
     endY=startY + (int) Math.floor(Math.random() * 19 - 11);
    }
    if (mouseY>450){
     endY=startY + (int) Math.floor(Math.random() * 19 - 8);
    }
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
    System.out.println(mouseX+" "+mouseY);
  }
  startX=100;
  endX=100;
  startY=435;
  endY=435;
  count++;
  if (count==10){
    background(25);
    count=0;
  }
}
void mousePressed()
{
  
}
