void quitButtonHoverOverFeature() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    quitButtonColor = yellow; //Remember night Mode
  } else {
    quitButtonColor = purple; //Remember Day Mode
  } //End Quit Button Color
}//quitButtonHoverOverFeature
