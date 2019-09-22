// Initialize variables
PImage[] imgs = new PImage[12];

int AVSweek = 43;
int GPROweek = 43;
int PBLweek = 43;
int Asweek = 43;

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
    buildCourseBox(i, AVSweek);

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
  loadAVS(AVSweek);
  loadGPRO(GPROweek);
  loadPBL(PBLweek);
  loadAssignments(Asweek);

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

  //GPRO schedule
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("GPRO", 35, 335);

  //PBL schedule
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("PBL", 35, 545);


  //Assignments schedule
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("ASSINGMENTS", 35, 755);
}

void draw() {
  checkMouseHover();
}


public void mouseClicked() {
  //AVS
  if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 170 && mouseY < 170+dateBoxHeight && AVSweek <= 44 && AVSweek >= 43)
  {
    clearBox(0);
    if (AVSweek == 43) {
      text("Tirsdag d. 22/10,", 335, 155);
    } else {
      text("Andet,", 335, 155);
    }
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 170+dateBoxHeight+5 && mouseY < 170+dateBoxHeight+30 && AVSweek <= 44 && AVSweek >= 43)
  {
    clearBox(0);
    text("homework", 335, 155);
  } 
  //GPRO
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+courseBoxHeight+45 && mouseY < 165+courseBoxHeight+45+dateBoxHeight && GPROweek <= 44 && GPROweek >= 43)
  {
    clearBox(1);
    text("homework", 335, 365);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+courseBoxHeight+50+dateBoxHeight && mouseY < 165+courseBoxHeight+45+dateBoxHeight+30 && GPROweek <= 44 && GPROweek >= 43)
  {
    clearBox(1);
    text("homework again", 335, 365);
  }
  //PBL
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+2*courseBoxHeight+85 && mouseY < 165+2*courseBoxHeight+85+dateBoxHeight && PBLweek <= 44 && PBLweek >= 43)
  {
    clearBox(2);
    text("homework", 335, 575);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+2*courseBoxHeight+90+dateBoxHeight && mouseY < 165+2*courseBoxHeight+85+dateBoxHeight+30 && PBLweek <= 44 && PBLweek >= 43)
  {
    clearBox(2);
    text("homework pt 2", 335, 575);
  } 
  //Assignments
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 160+3*courseBoxHeight+130 && mouseY < 165+3*courseBoxHeight+125+dateBoxHeight && Asweek <= 44 && Asweek >= 43)
  {
    clearBox(3);
    text("homework", 335, 785);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 160+3*courseBoxHeight+135+dateBoxHeight && mouseY < 165+3*courseBoxHeight+125+dateBoxHeight+30 && Asweek <= 44 && Asweek >= 43)
  {
    clearBox(3);
    text("homework pt 2", 335, 785);
  }
  //Next week (AVS)
  else if (mouseX > 210 && mouseX < 210+35 && mouseY > 135 && mouseY < 135+25)
  {
    AVSweek++;  
    loadAVS(AVSweek);
  }
  //Prev week (AVS)
  else if (mouseX > 50 && mouseX < 55+35 && mouseY > 135 && mouseY < 135+25)
  {
    AVSweek--;
    loadAVS(AVSweek);
  }
  //Next week (GPRO)
  else if (mouseX > 210 && mouseX < 210+35 && mouseY > 155+courseBoxHeight && mouseY < 155+courseBoxHeight+40)
  {
    GPROweek++;  
    loadGPRO(GPROweek);
  }
  //Prev week (GPRO)
  else if (mouseX > 50 && mouseX < 55+35 && mouseY > 155+courseBoxHeight && mouseY < 155+courseBoxHeight+40)
  {
    GPROweek--;
    loadGPRO(GPROweek);
  }
  //Next week (PBL)
  else if (mouseX > 210 && mouseX < 210+35 && mouseY > 155+2*courseBoxHeight+60 && mouseY < 155+2*courseBoxHeight+80)
  {
    PBLweek++;  
    loadPBL(PBLweek);
  }
  //Prev week (PBL)
  else if (mouseX > 50 && mouseX < 55+35 && mouseY > 155+2*courseBoxHeight+60 && mouseY < 155+2*courseBoxHeight+80)
  {
    PBLweek--;
    loadPBL(PBLweek);
  }
  //Next week (Assignments)
  else if (mouseX > 210 && mouseX < 210+35 && mouseY > 155+3*courseBoxHeight+100 && mouseY < 155+3*courseBoxHeight+125)
  {
    Asweek++;  
    loadAssignments(Asweek);
  }
  //Prev week (Assignments)
  else if (mouseX > 50 && mouseX < 55+35 && mouseY > 155+3*courseBoxHeight+100 && mouseY < 155+3*courseBoxHeight+125)
  {
    Asweek--;
    loadAssignments(Asweek);
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
    buildCourseBox(0, AVSweek);
    fill(204);
    stroke(0);
    rect(30, 170, dateBoxWidth, dateBoxHeight);
    rect(30, 170+30, dateBoxWidth, dateBoxHeight);
    fill(0);
    textSize(15);
    textAlign(LEFT);
    text("Mandag d. 23/9, 08:15-12:00", 37, 188);
    text("Tirsdag d. 24/9, 12:00-16:00", 37, 188+30);
    break;
  case 44:
    buildCourseBox(0, AVSweek);
    fill(204);
    stroke(0);
    rect(30, 170, dateBoxWidth, dateBoxHeight);
    rect(30, 170+30, dateBoxWidth, dateBoxHeight);
    fill(0);
    textSize(15);
    textAlign(LEFT);
    text("week 44 stuff", 37, 188);
    text("Tirsdag d. 24/9, 12:00-16:00", 37, 188+30);
    break;
  default:
    buildCourseBox(0, AVSweek);
  }
}

public void loadGPRO(int week) {
  switch(week) {
  case 43:
    buildCourseBox(1, GPROweek);
    fill(204);
    stroke(0);
    rect(30, 170+courseBoxHeight+40, dateBoxWidth, dateBoxHeight);
    rect(30, 170+courseBoxHeight+40+30, dateBoxWidth, dateBoxHeight);
    fill(0);
    textSize(15);
    textAlign(LEFT);
    text("Mandag d. 23/9, 12:00-16:00", 37, 183+courseBoxHeight+45);
    text("Fredag d. 27/9, 12:00-16:00", 37, 183+courseBoxHeight+30+45);
    break;
  case 44:
    buildCourseBox(1, GPROweek);
    fill(204);
    stroke(0);
    rect(30, 170+courseBoxHeight+40, dateBoxWidth, dateBoxHeight);
    rect(30, 170+courseBoxHeight+40+30, dateBoxWidth, dateBoxHeight);
    fill(0);
    textSize(15);
    textAlign(LEFT);
    text("week 44 stuff", 37, 183+courseBoxHeight+45);
    text("Fredag d. 4/10, 12:00-16:00", 37, 183+courseBoxHeight+45+30);
    break;
  default:
    buildCourseBox(1, GPROweek);
  }
}

public void loadPBL(int week) {
  switch(week) {
  case 43:
    buildCourseBox(2, PBLweek);
    fill(204);
    stroke(0);
    rect(30, 170+2*courseBoxHeight+2*40, dateBoxWidth, dateBoxHeight);
    rect(30, 170+2*courseBoxHeight+2*40+30, dateBoxWidth, dateBoxHeight);
    fill(0);
    textSize(15);
    textAlign(LEFT);
    text("Tirsdag d. 24/09, 08:15-12:00", 37, 183+2*courseBoxHeight+85);
    text("Torsdag d.26/09, 08:15-12:00", 37, 183+2*courseBoxHeight+75+40);
    break;
  case 44:
    buildCourseBox(2, PBLweek);
    fill(204);
    stroke(0);
    rect(30, 170+2*courseBoxHeight+2*40, dateBoxWidth, dateBoxHeight);
    rect(30, 170+2*courseBoxHeight+2*40+30, dateBoxWidth, dateBoxHeight);
    fill(0);
    textSize(15);
    textAlign(LEFT);
    text("Tirsdag d. 24/09, 08:15-12:00", 37, 183+2*courseBoxHeight+85);
    text("Torsdag d.26/09, 08:15", 37, 183+2*courseBoxHeight+75+40);
    break;
  default:
    buildCourseBox(2, PBLweek);
  }
}

public void loadAssignments(int week) {
  switch(week) {
  case 43:
    buildCourseBox(3, Asweek);
    fill(204);
    stroke(0);
    rect(30, 170+3*courseBoxHeight+3*40, dateBoxWidth, dateBoxHeight);
    rect(30, 170+3*courseBoxHeight+3*40+30, dateBoxWidth, dateBoxHeight);
    fill(0);
    textSize(15);
    textAlign(LEFT);
    text("Tirsdag d. 24/09, 08:15-12:00", 37, 183+3*courseBoxHeight+125);
    text("Torsdag d.26/09, 08:15-12:00", 37, 183+3*courseBoxHeight+125+dateBoxHeight+7);
    break;
  case 44:
    buildCourseBox(3, Asweek);
    fill(204);
    stroke(0);
    rect(30, 170+3*courseBoxHeight+3*40, dateBoxWidth, dateBoxHeight);
    rect(30, 170+3*courseBoxHeight+3*40+30, dateBoxWidth, dateBoxHeight);
    fill(0);
    textSize(15);
    textAlign(LEFT);
    text("Tirsdag d. 24/09, 08:15-12:00", 37, 183+3*courseBoxHeight+125);
    text("Torsdag d.26/09, 08:15", 37, 183+3*courseBoxHeight+125+dateBoxHeight+7);
    break;
  default:
    buildCourseBox(3, Asweek);
  }
}

public void buildCourseBox(int boxNum, int week) {
  int i = boxNum;
  fill(255);
  noStroke();
  rect(25, 130+210*i, courseBoxWidth, courseBoxHeight);
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(CENTER);
  textSize(weekText);

  text("Week "+str(week), 150, 130+210*i+25);

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

public void checkMouseHover() {
  if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 170 && mouseY < 170+dateBoxHeight && AVSweek <= 44 && AVSweek >= 43)
  {
    cursor(HAND);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 170+dateBoxHeight+5 && mouseY < 170+dateBoxHeight+30 && AVSweek <= 44 && AVSweek >= 43)
  {
    cursor(HAND);
  } 
  //GPRO
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+courseBoxHeight+45 && mouseY < 165+courseBoxHeight+45+dateBoxHeight && GPROweek <= 44 && GPROweek >= 43)
  {
    cursor(HAND);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+courseBoxHeight+50+dateBoxHeight && mouseY < 165+courseBoxHeight+45+dateBoxHeight+30 && GPROweek <= 44 && GPROweek >= 43)
  {
    cursor(HAND);
  }
  //PBL
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+2*courseBoxHeight+85 && mouseY < 165+2*courseBoxHeight+85+dateBoxHeight && PBLweek <= 44 && PBLweek >= 43)
  {
    cursor(HAND);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+2*courseBoxHeight+90+dateBoxHeight && mouseY < 165+2*courseBoxHeight+85+dateBoxHeight+30 && PBLweek <= 44 && PBLweek >= 43)
  {
    cursor(HAND);
  } 
  //Assignments
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 160+3*courseBoxHeight+130 && mouseY < 165+3*courseBoxHeight+125+dateBoxHeight && Asweek <= 44 && Asweek >= 43)
  {
    cursor(HAND);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 160+3*courseBoxHeight+135+dateBoxHeight && mouseY < 165+3*courseBoxHeight+125+dateBoxHeight+30 && Asweek <= 44 && Asweek >= 43)
  {
    cursor(HAND);
  }
  //Next week (AVS)
  else if (mouseX > 210 && mouseX < 210+35 && mouseY > 135 && mouseY < 135+25)
  {
    cursor(HAND);
  }
  //Prev week (AVS)
  else if (mouseX > 50 && mouseX < 55+35 && mouseY > 135 && mouseY < 135+25)
  {
    cursor(HAND);
  }
  //Next week (GPRO)
  else if (mouseX > 210 && mouseX < 210+35 && mouseY > 155+courseBoxHeight+15 && mouseY < 155+courseBoxHeight+40)
  {
    cursor(HAND);
  }
  //Prev week (GPRO)
  else if (mouseX > 50 && mouseX < 55+35 && mouseY > 155+courseBoxHeight+15 && mouseY < 155+courseBoxHeight+40)
  {
    cursor(HAND);
  }
  //Next week (PBL)
  else if (mouseX > 210 && mouseX < 210+35 && mouseY > 155+2*courseBoxHeight+60 && mouseY < 155+2*courseBoxHeight+80)
  {
    cursor(HAND);
  }
  //Prev week (PBL)
  else if (mouseX > 50 && mouseX < 55+35 && mouseY > 155+2*courseBoxHeight+60 && mouseY < 155+2*courseBoxHeight+80)
  {
    cursor(HAND);
  } 
  //Next week (Assignments)
  else if (mouseX > 210 && mouseX < 210+35 && mouseY > 155+3*courseBoxHeight+100 && mouseY < 155+3*courseBoxHeight+125)
  {
    cursor(HAND);
  }
  //Prev week (Assignments)
  else if (mouseX > 50 && mouseX < 55+35 && mouseY > 155+3*courseBoxHeight+100 && mouseY < 155+3*courseBoxHeight+125)
  {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
