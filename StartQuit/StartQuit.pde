//Global Varibles
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColor, yellow=#FFFF00 , purple=#FF00FF ;
//
void setup() 
{
  //Display & Orientation Algorithms not consider yet 
  size(1000, 800);
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
    //
    //Hover Over Feature
    println("X-value", quitButtonX, mouseX ,quitButtonX+quitButtonWidth );
    println("Y-value", quitButtonY, mouseY ,quitButtonY+quitButtonHeight);
    //
    //Quit Button Hover Over Feature
    if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    quitButtonColor = yellow; //Remember night Mode
  } else {
    quitButtonColor = purple; //Remember Day Mode
  } //End Quit Button Color
  //
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
  //Quit Button: Logical Rectangle, see println in draw()
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  //
} //End mousePressed
//
//End main program
//
