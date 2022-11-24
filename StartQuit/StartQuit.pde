//Global Varibles
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColor, yellow=#FFFF00 , purple=#FF00FF ;
//
void setup() 
{
  size(400, 300);
  //fulScreen(); //displayWidth, displayHeight
  displayOrientation();
  appWidth = width;
  appHeight = height;
  //
  population();
  //
} //End setup
//
void draw () 
{
  if ( noNowReallyStart==true ) {
    program();
  }
} //End draw
//
void keyPressed () 
{
  //Post-OS Level Start Button
  if ( key==' ' && start==true ) noNowReallyStart = true;
  //
  //Prototype Key Board Quit Button OR Shortcut
  if ( key=='Q' || key=='q') exit() ;
  if ( key==CODED && keyCode == ESC) ;
  //
} //End KeyPressed
//
void mousePressed () 
{
  //
  //OS level Start Button
  start = true;
  println("TO Start, Press the Space Bar");
  //
  //Quit Button: Logical Rectangle, see println in draw()
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  //
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    
  } else {}
} //End mousePressed
//
//End main program
//
