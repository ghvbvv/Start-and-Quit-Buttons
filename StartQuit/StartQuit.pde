//Global Varibles
Boolean start=false, noNowReallyStart=false;
//
void setup() {} //End setup
//
void draw () 
{
  if ( noNowReallyStart==true ) {
    background (0); //Night Mode not considered yet
    
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
