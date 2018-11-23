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
  }
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
  for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  // Add the new values to the beginning of the array
  x[0] = mouseX;
  y[0] = mouseY;
  // Draw the circles
  for (int i = 0; i < num; i++) {
    ellipse(x[i], y[i], i/5.0, i/5.0);
  }
}
void keyPressed() {
  if (key == 'p') {
    saveFrame("propuesta-#####.png");
  }
}
