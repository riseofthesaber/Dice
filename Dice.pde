void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  Die DND= new Die(250,250);
  DND.show();
  //your code here
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX;
  int myY;
  int result;
  //variable declarations here
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    roll();//variable initializations here
  }
  void roll()
  {
  result=/*(int)(Math.random()*6)+1*/1;
    //your code here
  }
  void show()
  {
    fill(255);
    rect(myX,myY,25,25,10);
    fill(0);
    if(result==1){
    ellipse(myX,myY,5,5);
    }else  if(result==2){
    
    }else if(result==3){
    
    }else  if(result==4){
    
    }else if(result==5){
    
    }else{
    
    }
    //your code here
  }
}
