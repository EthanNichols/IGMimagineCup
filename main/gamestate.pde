
int tilesToWin;
String gamestate = "mainMenu";

void gamestateLoad() {
  tilesToWin = (mapWidth * mapHeight) / 2;
}

void testWinner() {
  for (int p=0; p<player.length; p++) {
    if (player[p].tiles > tilesToWin) {
      gamestate = "endGame";
      player[p].rank = 1;
    }
  }
}

void startGame() {
  //Create the map that will be played on
  //Create the players that will be playing
  createMap(optButton[2].value);
  createPlayers(optButton[0].value + optButton[2].value);
}

void gamestateDraw() {
  if (gamestate == "mainMenu") {
    mainMenuMouse();
    drawMainMenu();
  
  } else if (gamestate == "options") {
    drawOptions();
    optionsMouse();
    
  } else if (gamestate == "game") {
    //Draw the map
    //Draw the dice on the map
    drawMap();
    drawDice();
  
    //Draw the interface
    //Draw the player information on the interface
    drawInterface();
    drawPlayers();
    
  } else if (gamestate == "endGame") {
    drawWinScreen();
  } else if (gamestate == "exit") {
    exit();
  }
}

void gamestateMouse() {
  //Execute functions when the mouse is pressed
  
  if (gamestate == "game") {
    selectTile();
    endTurn();
    
    if (mouseButton == RIGHT) {
      nextTurn();
    }
  } else if (gamestate == "mainMenu") {
    mainMouseClick();
  } else if (gamestate == "options") {
    optionsClick();
  }
}