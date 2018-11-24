color fondo = color(31, 159, 190);
color black = color(239, 98, 19);
int [] lineas = {55, 145, 185};
String [] textos = {"a Pelican Original   5/-", "Comparative Religion", "A. C . Bouquet"};
PFont normal, light;
int[] y;

void setup() {
  size(400, 650);
  background(fondo);
  normal = loadFont("HelveticaLTStd-BlkCond-48.vlw");
  light = loadFont("HelveticaCondensedBoldItalic-48.vlw");
  {
  y = new int[width];
}
}
 
void draw() {
  fill(fondo);
  noStroke();
  rect(0, 0, width, lineas[2]);
  stroke(black);
  fill(black);
  for (int x = 0; x < lineas.length; x++) {
    line(0, lineas[x], width, lineas[x]);
    background(204); 
    // Read the array from the end to the
  // beginning to avoid overwriting the data
  for (int i = y.length-1; i > 0; i--) {
    y[i] = y[i-1];
  }
  // Add new values to the beginning
  y[0] = mouseY;
  // Display each pair of values as a line
  for (int i = 1; i < y.length; i++) {
    line(i, y[i], i-1, y[i-1]);
  }
}

textFont(light);{
  textSize(20);
  text(textos[0], 170, 20, 220, 30);
  textFont(normal);
  textSize(40);
  textLeading(38);
  text(textos[1], 170, 65, 220, 100);
  textSize(20);
  text(textos[2], 170, 160, 220, 30);}}
  
  void keyPressed() {
  if (key == 'p') {
    saveFrame("propuesta-#####.png");
  }
}
  
