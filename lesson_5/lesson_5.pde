/* Lesson 5 for Bang! Bang! Education */

color bgColor = color(0, 0, 0),
      primaryColor = color(255, 255, 255);
      
int fRate = 30;

void setup() {
  size(400, 400, P3D);
  frameRate(fRate);
  background(bgColor);
}

void draw() {
  //stroke(primaryColor);
  //strokeWeight(1);
  noStroke();
  //line(pmouseX, pmouseY, mouseX, mouseY);
  ambientLight(255, 64, 255);
  directionalLight(128, 200, 64, 0, 0, -1);
  //lights();
  drawSphere();
}

void drawSphere() {
  float diameter = random(10, 30);
  float zIndex = random(-150, 150);
  color fillColor = color(random(0, 255), random(0, 255), random(0, 255));
  //ellipse(mouseX, mouseY, diameter, diameter);
  fill(fillColor);
  translate( mouseX, mouseY,  zIndex );
  sphere(10);
  translate( -1 * mouseX, -1 * mouseY, -1 * zIndex );
}

/* Assignment:
 
 1. How to avoid drawing in first frame in top left corner?
 2. With if .. else statement fill every shape in left half of screen with one color, 
 and in right part – with another. Or, instead: split top and bottom halves.
 3. Try to use different shapes and polygons instead of spheres in 3D space.
 4. Draw new shape only if coordinates change.
 5. Try to use ambientLight() and directionalLight() instead of lights();
 
*/