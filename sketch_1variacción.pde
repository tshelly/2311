color fondo = color(29, 22, 37); //<>//
color cian = color(89, 187, 211);
int [] lineas = {55, 145, 185};
String [] textos = {"a Pelican Original   6", "Tradition and Dream", "Walter Allen"};
PFont normal, light;


int num = 50;
int[] x = new int[num];
int[] y = new int[num];
void setup() {
  size(400, 650);
  background(fondo);
  fill(255);
  normal = loadFont("HelveticaNeue-Bold-48.vlw");
  light=loadFont("HelveticaCondensedBoldItalic-48.vlw");
}



void draw() {
  fill(fondo);
  noStroke();
  rect(0, 0, width, lineas[2]);
  stroke(cian);
  fill(cian);
  for (int x = 0; x < lineas.length; x++) {
    line(0, lineas[x], width, lineas[x]);
  
  textFont(light);
  textSize(20);
  text(textos[0], 170, 20, 220, 30);
  textFont(normal);
  textSize(40);
  textLeading(38);
  text(textos[1], 170, 65, 220, 100);
  textSize(20);
  text(textos[2], 170, 160, 220, 30);

  // Shift the values to the right
  }
  // Call the variableEllipse() method and send it the
  // parameters for the current mouse position
  // and the previous mouse position
  variableEllipse(mouseX, mouseY, pmouseX, pmouseY);
}


// The simple method variableEllipse() was created specifically 
// for this program. It calculates the speed of the mouse
// and draws a small ellipse if the mouse is moving slowly
// and draws a large ellipse if the mouse is moving quickly 

void variableEllipse(int x, int y, int px, int py) {
  float speed = abs(x-px) + abs(y-py);
  stroke(speed);
  ellipse(x, y, speed, speed);
}
  
  
  
  
void keyPressed() {
  if (key == 'p') {
    saveFrame("propuesta-#####.png");
  }
}
