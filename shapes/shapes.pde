PShape path;

void setup() {
  size(640, 360, P2D);
  smooth();
  // Create the shape
  path = createShape();
  path.beginShape();
  // Set fill and stroke
  path.noFill();
  path.stroke(255);
  path.strokeWeight(1);
  
  float x = 0;
  float distrub = 1.38;
  float numCircle = 8;
  // Calculate the path as a sine wave
  for (float a = 0; a < numCircle*TWO_PI; a+=0.1) {
    float dx = cos(a)*100;
    float dy = sin(a)*100;
    dx = dx * cos(distrub*a);
    dy = dy * cos(distrub*a);
    path.vertex(dx,dy);
    x+= 5;
  }
  // The path is complete
  path.endShape();  

}

void draw() {
  background(51);
  // Draw the path at the mouse location
  translate(mouseX, mouseY);
  shape(path);
}

