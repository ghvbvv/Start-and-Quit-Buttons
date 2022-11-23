//Global Varibles
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void setup() 
{
  //Display & Orientation Algorithms not consider yet 
  size(400, 300);
  //fulScreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //
  //Population
  float centerX = appWidth * 1/2;
  float centerY = appHeight * 1/2;
  quitButtonX = centerX - ( appWidth * 1/4 ) ;
  quitButtonY = centerY - ( appHeight * 1/4 );
  quitButtonWidth = appWidth * 1/2; //could be centerX, but that is a point 
  quitButtonHeight = appHeight * 1/2; //same comment as centerX, point not line 
} //End setup
//
void draw () 
{
  if ( noNowReallyStart==true ) {
    background (0); //Night Mode not considered yet
    if () {} else {} //End Quit Button Color
    fill(quitButtonColor);
    rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ); //Quit Button With Hoverover
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
} //End mousePressed
//
//End main program
//
