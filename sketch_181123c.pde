color fondo = color(246, 243, 210);
color black = color(31, 159, 190);
int [] lineas = {55, 145, 185};
String [] textos = {"a Pelican Original   3/6", "Sex in Society", "Alex Comfort"};
PFont normal, light;

void setup() {
  size(400, 650);
  background(fondo);
  normal = loadFont("HelveticaLTStd-BlkCond-48.vlw");
  light = loadFont("HelveticaCondensedBoldItalic-48.vlw");
  
}
 
void draw() {
  fill(fondo);
  noStroke();
  rect(0, 0, width, lineas[2]);
  stroke(black);
  fill(black);
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
//desde aquí el dibujo



}
