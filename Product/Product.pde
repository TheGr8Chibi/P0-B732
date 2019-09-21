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

// Set size of window and load images (setup() only run once when you start the program):

public void setup() {
  size(600, 950);
  imgs[0] = loadImage("backgroundIMG.png"); // Change to your own images
  background(imgs[0]);


  textAlign(CENTER);
  textSize(35);
  fill(255);
  text("Headline", width/2, 50); 
  textSize(16);
  fill(120);
  text("B372", width/2, 940);

  //AVS schedule
  fill(255);
  noStroke();
  rect(25, 125, courseBoxWidth, courseBoxHeight);
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("AVS", 35, 120);

  //AVS dates
  textAlign(CENTER);
  textSize(weekText);
  text("Week 43", 150, 150);
  fill(204);
  stroke(0);
  rect(30, 165, dateBoxWidth, dateBoxHeight);
  rect(30, 165+30, dateBoxWidth, dateBoxHeight);
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text("Tirsdag d. 22/10", 37, 183);
  text("homework", 37, 183+30);
  
  //AVS homework information   
  fill(255);
  noStroke();
  rect(325, 125, courseBoxWidth, courseBoxHeight);
  
  //GPRO schedule
  fill(255);
  noStroke();
  rect(25, 340, courseBoxWidth, courseBoxHeight);
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("GPRO", 35, 335);
  
  //GPRO dates
  textAlign(CENTER);
  textSize(weekText);
  text("Week 43", 150, 160+courseBoxHeight+35);
  fill(204);
  stroke(0);
  rect(30, 165+courseBoxHeight+45, dateBoxWidth, dateBoxHeight);
  rect(30, 165+courseBoxHeight+45+30, dateBoxWidth, dateBoxHeight);
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text("GPROO", 37, 183+courseBoxHeight+45);
  text("homework", 37, 183+courseBoxHeight+30+45);
  
  //GPRO homework information
  fill(255);
  noStroke();
  rect(325, 340, courseBoxWidth, courseBoxHeight);
  
  //PBL schedule
  fill(255);
  noStroke();
  rect(25, 550, courseBoxWidth, courseBoxHeight);
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("PBL", 35, 545);
  
  //PBL dates
  textAlign(CENTER);
  textSize(weekText);
  text("Week 43", 150, 160+2*courseBoxHeight+75);
  fill(204);
  stroke(0);
  rect(30, 165+2*courseBoxHeight+85, dateBoxWidth, dateBoxHeight);
  rect(30, 165+2*courseBoxHeight+85+30, dateBoxWidth, dateBoxHeight);
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text("Tirsdag d. 22/10, xx:xx-xx:xx", 37, 183+2*courseBoxHeight+85);
  text("homework", 37, 183+2*courseBoxHeight+75+40);
  
  //PBL homework information
  fill(255);
  noStroke();
  rect(325, 550, courseBoxWidth, courseBoxHeight);
  
  //Assignments schedule
  fill(255);
  noStroke();
  rect(25, 760, courseBoxWidth, courseBoxHeight);
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("ASSINGMENTS", 35, 755);
  
  //Assignment dates
  textAlign(CENTER);
  textSize(weekText);
  text("Week 43", 150, 160+3*courseBoxHeight+115);
  fill(204);
  stroke(0);
  rect(30, 165+3*courseBoxHeight+125, dateBoxWidth, dateBoxHeight);
  rect(30, 165+3*courseBoxHeight+125+30, dateBoxWidth, dateBoxHeight);
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text("Tirsdag d. 22/10, xx:xx-xx:xx", 37, 183+3*courseBoxHeight+125);
  text("homework", 37, 183+3*courseBoxHeight+125+dateBoxHeight+7);
  
  //Assignment information
  fill(255);
  noStroke();
  rect(325, 760, courseBoxWidth, courseBoxHeight);
  
}

// All that should run continuously goes in draw:

public void draw() {

  

  //If pic[x] variable is true show image, if false show text (for each image)



  //for(int i = 0; i<5;i++){
  //  rect(30,165+i*25,dateBoxWidth,dateBoxHeight);
  //    }


  //Assignments information
  //if(pic6 == true){
  //image(imgs[5],325,600);
  // }
  // else {
  
  //}
}

// Check if mouse is clicked on one of the images, then change that variable from true to false or opposite

public void mouseClicked() {
  //AVS
  if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165 && mouseY < 165+dateBoxHeight)
  {
    fill(255);
    noStroke();
    rect(325, 125, courseBoxWidth, courseBoxHeight);
    fill(0);
    textSize(16);
    text("Tirsdag d. 22/10,", 330, 150);
    
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+dateBoxHeight && mouseY < 165+dateBoxHeight+30)
  {
    fill(255);
    noStroke();
    rect(325, 125, courseBoxWidth, courseBoxHeight);
    fill(0);
    textSize(16);
    text("homework", 330, 150);
  } 
  //GPRO
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+courseBoxHeight+45 && mouseY < 165+courseBoxHeight+45+dateBoxHeight)
  {
    fill(255);
    noStroke();
    rect(325, 340, courseBoxWidth, courseBoxHeight);
    fill(0);
    textSize(16);
    text("homework", 330, 365);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+courseBoxHeight+45+dateBoxHeight && mouseY < 165+courseBoxHeight+45+dateBoxHeight+30)
  {
    fill(255);
    noStroke();
    rect(325, 340, courseBoxWidth, courseBoxHeight);
    fill(0);
    textSize(16);
    text("homework again", 330, 365);
  }
  //PBL
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+2*courseBoxHeight+85 && mouseY < 165+2*courseBoxHeight+85+dateBoxHeight)
  {
    fill(255);
    noStroke();
    rect(325, 550, courseBoxWidth, courseBoxHeight); 
    fill(0);
    textSize(16);
    text("homework", 330, 575);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165+2*courseBoxHeight+85+dateBoxHeight && mouseY < 165+2*courseBoxHeight+85+dateBoxHeight+30)
  {
    fill(255);
    noStroke();
    rect(325, 550, courseBoxWidth, courseBoxHeight); 
    fill(0);
    textSize(16);
    text("homework pt 2", 330, 575);
  } 
  //Assignments
  else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 160+3*courseBoxHeight+125 && mouseY < 165+3*courseBoxHeight+125+dateBoxHeight)
  {
    fill(255);
    noStroke();
    rect(325, 760, courseBoxWidth, courseBoxHeight);
    fill(0);
    textSize(16);
    text("homework", 330, 785);
  } else if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 160+3*courseBoxHeight+125+dateBoxHeight && mouseY < 165+3*courseBoxHeight+125+dateBoxHeight+30)
  {
    fill(255);
    noStroke();
    rect(325, 760, courseBoxWidth, courseBoxHeight);
    fill(0);
    textSize(16);
    text("homework pt 2", 330, 785);
  }
}
