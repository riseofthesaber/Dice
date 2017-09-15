void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  int value=0;
  background(175);
  for(int X=5; X<50; X+=5 ){
     for(int Y=5; Y<45; Y+=5 ){
      Die DND= new Die(X*10,Y*10);
      DND.show();
    value = value+DND.result;
  
     }
  }
  textAlign(CENTER);
  textSize(100);
 text(value,250,500);
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
  float size=50/2;
  //variable declarations here
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    roll();//variable initializations here
  }
  void roll()
  {
  result=(int)(Math.random()*6)+1;
    //your code here
  }
  void show()
  {
    fill(255);
    rect(myX-(size/2),myY-(size/2),size,size,(size/2.5));
    fill(0);
  
    if(result==1){
    ellipse(myX,myY,(size/5),(size/5));
    }else  if(result==2){
    ellipse(myX-(size/5),myY-(size/5),(size/5),(size/5));
     ellipse(myX+(size/5),myY+(size/5),(size/5),(size/5));
    }else if(result==3){
     ellipse(myX,myY,(size/5),(size/5));
     ellipse(myX-(size/5),myY-(size/5),(size/5),(size/5));
     ellipse(myX+(size/5),myY+(size/5),(size/5),(size/5));
    }else  if(result==4){
     ellipse(myX-(size/5),myY-(size/5),(size/5),(size/5));
     ellipse(myX+(size/5),myY+(size/5),(size/5),(size/5));
     ellipse(myX+(size/5),myY-(size/5),(size/5),(size/5));
     ellipse(myX-(size/5),myY+(size/5),(size/5),(size/5));
    }else if(result==5){
    ellipse(myX,myY,(size/5),(size/5));
     ellipse(myX-(size/5),myY-(size/5),(size/5),(size/5));
     ellipse(myX+(size/5),myY+(size/5),(size/5),(size/5));
     ellipse(myX+(size/5),myY-(size/5),(size/5),(size/5));
     ellipse(myX-(size/5),myY+(size/5),(size/5),(size/5));
    }else{
      ellipse(myX-(size/5),myY,(size/5),(size/5));
       ellipse(myX+(size/5),myY,(size/5),(size/5));
      //
      ellipse(myX-(size/5),myY-(size/4),(size/5),(size/5));
     ellipse(myX+(size/5),myY+(size/4),(size/5),(size/5));
     ellipse(myX+(size/5),myY-(size/4),(size/5),(size/5));
     ellipse(myX-(size/5),myY+(size/4),(size/5),(size/5));
    
    }
    //your code here
  }
}

