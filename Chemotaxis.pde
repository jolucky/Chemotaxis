 Walker[] lots;
 void setup()   
 {     
 	size(500,500);
  lots= new Walker[50];
  for(int i = 0; i < lots.length; i++)
  {
    lots[i] = new Walker();
  }
 }   
 void draw()   
 {    
 	background(0);
  //draw box
  for(int i = 0; i < lots.length; i++)
  {
    lots[i].show();
    lots[i].walk();
  }
 }  
 class Walker    
 {     
 	int myX1,myY1,ballColor;
  
  Walker()
  {
    myX1 =250;
    myY1 =250;
    ballColor=(int)(Math.random()*150)+106;
  }
  void walk()
  {
    //Moving the balls
    if(mouseX < myX1) 
      myX1 = myX1 + (int)(Math.random()*5)-1;
    if (mouseX> myX1)
      myX1 = myX1 + (int)(Math.random()*5)-3;
    if(mouseY< myY1)
      myY1 =myY1+(int)(Math.random()*5)-1;
      else
      myY1 =myY1+(int)(Math.random()*5)-3;      
    //Right Boundary
    if(myX1>495)
      myX1=495;
    //Left boundary
    else if(myX1<5)
      myX1=5;
    //Outside left of box boundary
    else if(myY1<95 && (myX1>195 && myX1<200))
      myX1=195;
    //Outside right of box boundary
    else if(myY1<95 && (myX1<305 && myX1>300))
      myX1=305;
    //Right inside Box boundary
    else if((myX1>295 && myX1<300) && (myY1<100 && myY1>-20))
      myX1=295;
    //Left inside box boundary
    else if((myX1<205 && myX1>200) && (myY1<100 && myY1>-20))
      myX1=205;
    //Top boundary
    else if(myY1<5)
      myY1=5;
    //Bottom boundary
    else if(myY1>450)
      myY1=450;
    
    
    
  }
  void show()
  {
    fill(100,150,0,5);
    rect(200,0,100,100);
    stroke(255);
    fill(ballColor,0,ballColor);
      ellipse(myX1,myY1,10,10);
    fill(255);
      rect(0,460,500,50);
    noStroke();
    fill(0,100,150);
      text("Get all the Boi's into their relief shelter.",150,480);
  }
 }    