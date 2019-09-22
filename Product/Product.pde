// Initialize variables
PImage[] imgs = new PImage[12];

int AVSweek = 43;

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
    buildCourseBox(i);

    fill(204);
    stroke(0);
    rect(30, 170+i*courseBoxHeight+i*40, dateBoxWidth, dateBoxHeight);
    rect(30, 170+i*courseBoxHeight+i*40+30, dateBoxWidth, dateBoxHeight);
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
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text("Tirsdag d. 22/10, 08:15-12:00", 37, 188);

  //GPRO schedule
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("GPRO", 35, 335);

  //GPRO dates
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text("Tirsdag d. 22/10, 12:30-16:15", 37, 183+courseBoxHeight+45);
  text("Onsdag d. 23/10, 12:30-16:15", 37, 183+courseBoxHeight+30+45);

  //PBL schedule
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("PBL", 35, 545);

  //PBL dates
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text("Mandag d. 21/10, 08:15-12:00", 37, 183+2*courseBoxHeight+85);

  //Assignments schedule
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("ASSINGMENTS", 35, 755);

  //Assignment dates
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text("slettes", 37, 183+3*courseBoxHeight+125);
}

void draw() {
  if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 170 && mouseY < 170+dateBoxHeight) {
    cursor(HAND);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 170+dateBoxHeight+5 && mouseY < 170+dateBoxHeight+30) {
    cursor(HAND);
  } 
  //GPRO
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+courseBoxHeight+45 && mouseY < 165+courseBoxHeight+45+dateBoxHeight) {
    cursor(HAND);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+courseBoxHeight+50+dateBoxHeight && mouseY < 165+courseBoxHeight+45+dateBoxHeight+30) {
    cursor(HAND);
  }
  //PBL
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+2*courseBoxHeight+85 && mouseY < 165+2*courseBoxHeight+85+dateBoxHeight) {
    cursor(HAND);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+2*courseBoxHeight+90+dateBoxHeight && mouseY < 165+2*courseBoxHeight+85+dateBoxHeight+30) {
    cursor(HAND);
  } 
  //Assignments
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 160+3*courseBoxHeight+130 && mouseY < 165+3*courseBoxHeight+125+dateBoxHeight) {
    cursor(HAND);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 160+3*courseBoxHeight+135+dateBoxHeight && mouseY < 165+3*courseBoxHeight+125+dateBoxHeight+30) {
    cursor(HAND);
  }
  //Next week (AVS)
  else if (mouseX > 210 && mouseX < 210+35 && mouseY > 135 && mouseY < 135+25) {
    cursor(HAND);
  }
  //Prev week (AVS)
  else if (mouseX > 50 && mouseX < 55+35 && mouseY > 135 && mouseY < 135+25) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}


public void mouseClicked() {
  //AVS
  if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 170 && mouseY < 170+dateBoxHeight) {
    clearBox(0);
    text("Tirsdag d. 22/10", 390, 155);
    textSize(13);
    text("No homework assigned", 385, 200);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 170+dateBoxHeight+5 && mouseY < 170+dateBoxHeight+30) {
    clearBox(0);
    text("slettes", 335, 155);
  } 
  //GPRO
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+courseBoxHeight+45 && mouseY < 165+courseBoxHeight+45+dateBoxHeight) {
    clearBox(1);
    text("Tirsdag d. 22/10", 390, 365);
    textSize(13);
    text("Read: Chapter 9 + section 13-12", 350, 415);
    text("Tutorials: Arrays", 400, 440);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+courseBoxHeight+50+dateBoxHeight && mouseY < 165+courseBoxHeight+45+dateBoxHeight+30) {
    clearBox(1);
    text("Onsdag d. 23/10", 390, 365);
    textSize(13);
    text("Read: Chapter 12 and 15", 380, 415);
    text("Tutorials: Transformations", 375, 440);
  }
  //PBL
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+2*courseBoxHeight+85 && mouseY < 165+2*courseBoxHeight+85+dateBoxHeight) {
    clearBox(2);
    text("Mandag d. 21/10", 390, 575);
    textSize(13);
    text("No homework assigned", 385, 620);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+2*courseBoxHeight+90+dateBoxHeight && mouseY < 165+2*courseBoxHeight+85+dateBoxHeight+30) {
    clearBox(2);
    text("slettes", 335, 575);
  } 
  
  //Assignments
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 160+3*courseBoxHeight+130 && mouseY < 165+3*courseBoxHeight+125+dateBoxHeight) {
    clearBox(3);
    text("slettes", 335, 785);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 160+3*courseBoxHeight+135+dateBoxHeight && mouseY < 165+3*courseBoxHeight+125+dateBoxHeight+30) {
    clearBox(3);
    text("slettes", 335, 785);
  }
  
  
  //Next week (AVS)
  else if (mouseX > 210 && mouseX < 210+35 && mouseY > 135 && mouseY < 135+25) {
    AVSweek++;  
    loadAVS(AVSweek);
  }
  //Prev week (AVS)
  else if (mouseX > 50 && mouseX < 55+35 && mouseY > 135 && mouseY < 135+25) {
    AVSweek--;
    loadAVS(AVSweek);
  }
}

public void clearBox(int boxNum) {
  fill(255);
  noStroke();
  rect(330, 130+210*boxNum, courseBoxWidth, courseBoxHeight);
  fill(0);
  textSize(16);
  textAlign(LEFT);
}

public void loadAVS(int week) {
  switch(week) {
  case 43:
    buildCourseBox(0);
    fill(204);
    stroke(0);
    rect(30, 170, dateBoxWidth, dateBoxHeight);
    rect(30, 170+30, dateBoxWidth, dateBoxHeight);
    fill(0);
    textSize(15);
    textAlign(LEFT);
    text("Tirsdag d. 22/10, 08:15-12:00", 37, 188);
    text("homework", 37, 188+30);
    break;
  case 44:
    buildCourseBox(0);
    fill(204);
    stroke(0);
    rect(30, 170, dateBoxWidth, dateBoxHeight);
    fill(0);
    textSize(15);
    textAlign(LEFT);
    text("week 44 stuff", 37, 188);
    break;
  default:
    buildCourseBox(0);
  }
}

public void buildCourseBox(int boxNum) {
  int i = boxNum;
  fill(255);
  noStroke();
  rect(25, 130+210*i, courseBoxWidth, courseBoxHeight);
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(CENTER);
  textSize(weekText);
  text("Week "+str(AVSweek), 150, 130+210*i+25);

  buildArrows(i);
}

public void buildArrows(int boxNum) {
  int i = boxNum;

  //Next week
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(CENTER);
  textSize(weekText);
  text("=>", 230, 155+i*courseBoxHeight+i*40);

  //Previous week
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(CENTER);
  textSize(weekText);
  text("<=", 70, 155+i*courseBoxHeight+i*40);
}
