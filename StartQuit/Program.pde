void program() {
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
}//End program
