
void setup() {
  //Set the size of the screen
  fullScreen();
  
  //Set the color mode
  colorMode(HSB, 255);
  
  //Load all of the dice images
  loadDiceImages();
  
  createButtons();
  createOptButtons();
}

void draw() {
  //Draw the background to reset the image shown
  background(0, 0, 100);
  
  gamestateDraw();
}

void mousePressed() {
  gamestateMouse();
}