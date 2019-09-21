// Initialize variables
PImage[] imgs = new PImage[12];

int courseBoxWidth = 250;
int courseBoxHeight = 170;
int dateBoxWidth=240;
int dateBoxHeight=23;
int courseText = 25;
int weekText=19;
int courseColorRed = 33;
int courseColorGreen = 26;
int courseColorBlue = 82;

public void setup() {
  //Main window
  size(600, 950);
  imgs[0] = loadImage("backgroundIMG.png");
  background(imgs[0]);

  //Boxes for courses
  for (int i = 0; i!=4; i++) {
    fill(255);
    noStroke();
    rect(25, 130+210*i, courseBoxWidth, courseBoxHeight);
    fill(courseColorRed, courseColorGreen, courseColorBlue);
    textAlign(CENTER);
    textSize(weekText);
    text("Week 43", 150, 130+210*i+25);
  }

  //Boxes for information
  for (int i = 0; i!=4; i++) {
    fill(255);
    noStroke();
    rect(330, 130+210*i, courseBoxWidth, courseBoxHeight);
  }

  textAlign(CENTER);
  textSize(35);
  fill(255);
  text("Headline", width/2, 50); 
  textSize(16);
  fill(120);
  text("B372", width/2, 940);

  //AVS schedule
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("AVS", 35, 125);

  //AVS dates
  fill(204);
  stroke(0);
  rect(30, 170, dateBoxWidth, dateBoxHeight);
  rect(30, 170+30, dateBoxWidth, dateBoxHeight);
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text("Tirsdag d. 22/10", 37, 188);
  text("homework", 37, 188+30);

  //GPRO schedule
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("GPRO", 35, 335);

  //GPRO dates
  fill(204);
  stroke(0);
  rect(30, 165+courseBoxHeight+45, dateBoxWidth, dateBoxHeight);
  rect(30, 165+courseBoxHeight+45+30, dateBoxWidth, dateBoxHeight);
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text("GPROO", 37, 183+courseBoxHeight+45);
  text("homework", 37, 183+courseBoxHeight+30+45);

  //PBL schedule
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("PBL", 35, 545);

  //PBL dates
  fill(204);
  stroke(0);
  rect(30, 165+2*courseBoxHeight+85, dateBoxWidth, dateBoxHeight);
  rect(30, 165+2*courseBoxHeight+85+30, dateBoxWidth, dateBoxHeight);
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text("Tirsdag d. 22/10, xx:xx-xx:xx", 37, 183+2*courseBoxHeight+85);
  text("homework", 37, 183+2*courseBoxHeight+75+40);

  //Assignments schedule
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("ASSINGMENTS", 35, 755);

  //Assignment dates
  fill(204);
  stroke(0);
  rect(30, 165+3*courseBoxHeight+125, dateBoxWidth, dateBoxHeight);
  rect(30, 165+3*courseBoxHeight+125+30, dateBoxWidth, dateBoxHeight);
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text("Tirsdag d. 22/10, xx:xx-xx:xx", 37, 183+3*courseBoxHeight+125);
  text("homework", 37, 183+3*courseBoxHeight+125+dateBoxHeight+7);
}

public void draw() {


}

public void mouseClicked() {
  //AVS
  if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 170 && mouseY < 170+dateBoxHeight)
  {
    clearBox(0);
    text("Tirsdag d. 22/10,", 335, 155);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 170+dateBoxHeight+5 && mouseY < 170+dateBoxHeight+30)
  {
    clearBox(0);
    text("homework", 335, 155);
  } 
  //GPRO
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+courseBoxHeight+45 && mouseY < 165+courseBoxHeight+45+dateBoxHeight)
  {
    clearBox(1);
    text("homework", 335, 365);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+courseBoxHeight+50+dateBoxHeight && mouseY < 165+courseBoxHeight+45+dateBoxHeight+30)
  {
    clearBox(1);
    text("homework again", 335, 365);
  }
  //PBL
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+2*courseBoxHeight+85 && mouseY < 165+2*courseBoxHeight+85+dateBoxHeight)
  {
    clearBox(2);
    text("homework", 335, 575);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+2*courseBoxHeight+90+dateBoxHeight && mouseY < 165+2*courseBoxHeight+85+dateBoxHeight+30)
  {
    clearBox(2);
    text("homework pt 2", 335, 575);
  } 
  //Assignments
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 160+3*courseBoxHeight+130 && mouseY < 165+3*courseBoxHeight+125+dateBoxHeight)
  {
    clearBox(3);
    text("homework", 335, 785);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 160+3*courseBoxHeight+135+dateBoxHeight && mouseY < 165+3*courseBoxHeight+125+dateBoxHeight+30)
  {
    clearBox(3);
    text("homework pt 2", 335, 785);
  }
}

public void clearBox(int boxNum) {
  fill(255);
  noStroke();
  rect(330, 130+210*boxNum, courseBoxWidth, courseBoxHeight);
  fill(0);
  textSize(16);
}
