int lys=1;
color lysfarver= #F50B0B;
int redLight = #FF0000;
int yellowLight = #DEFF04;
int greenLight = #1BE122;
int turnedOffLight = #B9BFBB;

void setup() {
  // Set the size of the window & framerate
  size(400, 800);
  frameRate(1);
  background(255);

  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
}
void draw() {
  stroke(0);

  // Hvid baggrund
  fill(255);
  rect(200, 200, 100, 280);

  // Sort baggrund
  fill(0);
  rect(200, 200, 80, 260);

  //Stålpe
  rect(200, 600, 20, 520);


  // Grå farver, fra rød, gul og grøn
  fill(turnedOffLight);
  ellipse(200, 115, 80, 80);

  fill(turnedOffLight);
  ellipse(200, 200, 80, 80);

  fill(turnedOffLight);
  ellipse(200, 285, 80, 80);


  // Farver
  // Rød cirkel
  if (lys ==1) {

    fill(turnedOffLight);
    ellipse(200, 200, 80, 80);
    fill(turnedOffLight);
    ellipse(200, 115, 80, 80);
    fill(redLight);
    ellipse(200, 115, 80, 80);
  }

  // Gul cirkel
  else if (lys ==2) {
    fill(turnedOffLight);
    ellipse(200, 200, 80, 80);
    fill(yellowLight);
    ellipse(200, 200, 80, 80);

    fill(turnedOffLight);
    ellipse(200, 115, 80, 80);
  }

  // Grøn cirkel
  else {
    fill(greenLight);
    ellipse(200, 285, 80, 80);
    fill(turnedOffLight);
    ellipse(200, 200, 80, 80);


    lys=0;
  }

  lys++;
  delay(2000);
}
