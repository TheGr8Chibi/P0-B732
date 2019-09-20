// Initialize variables

PImage[] imgs = new PImage[12];
int i = 0;
boolean pic1 = true;
boolean pic2 = true;
boolean pic3 = true;
boolean pic4 = true;
boolean pic5 = true;
boolean pic6 = true;
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

  //AVS homework information   
  fill(255);
  noStroke();
  rect(325, 125, courseBoxWidth, courseBoxHeight);
}

// All that should run continuously goes in draw:

public void draw() {

  textAlign(CENTER);
  textSize(35);
  fill(255);
  text("Headline", width/2, 50); 
  textSize(16);
  fill(120);
  text("B372", width/2, 940);

  //If pic[x] variable is true show image, if false show text (for each image)

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
  text("Week 43", 150, 160);
  fill(204);
  stroke(0);
  rect(30, 165, dateBoxWidth, dateBoxHeight);
  fill(0);
  textSize(15);
  textAlign(LEFT);
  text("Tirsdag d. 22/10, xx:xx-xx:xx", 37, 183);


  //for(int i = 0; i<5;i++){
  //  rect(30,165+i*25,dateBoxWidth,dateBoxHeight);
  //    }



  //GPRO schedule
  fill(255);
  noStroke();
  rect(25, 340, courseBoxWidth, courseBoxHeight);
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("GPRO", 35, 335);

  //GPRO homework information
  fill(255);
  noStroke();
  rect(325, 340, courseBoxWidth, courseBoxHeight);
  fill(0);
  textAlign(LEFT);
  text("text box 4...", 420, 370);

  //PBL schedule
  fill(255);
  noStroke();
  rect(25, 550, courseBoxWidth, courseBoxHeight);
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("PBL", 35, 545);

  //PBL homework information
  fill(255);
  noStroke();
  rect(325, 550, courseBoxWidth, courseBoxHeight);
  fill(0);
  textAlign(LEFT);
  text("text box 6...", 420, 620);

  //Assignments schedule
  fill(255);
  noStroke();
  rect(25, 760, courseBoxWidth, courseBoxHeight);
  fill(courseColorRed, courseColorGreen, courseColorBlue);
  textAlign(LEFT);
  textSize(courseText);
  text("ASSINGMENTS", 35, 755);

  //Assignments information
  //if(pic6 == true){
  //image(imgs[5],325,600);
  // }
  // else {
  fill(255);
  noStroke();
  rect(325, 760, courseBoxWidth, courseBoxHeight);
  fill(0);
  textAlign(LEFT);
  text("text box 6...", 420, 620);
  //}
}

// Check if mouse is clicked on one of the images, then change that variable from true to false or opposite

public void mouseClicked() {
  if (mouseX > 30 && mouseX < 30+dateBoxWidth && mouseY > 165 && mouseY < 165+dateBoxHeight)
  {
    fill(255);
    noStroke();
    rect(325, 125, courseBoxWidth, courseBoxHeight);
    fill(0);
    textSize(16);
    text("Tirsdag d. 22/10, xx:xx-xx:xx", 330, 150);
    
  } else if (mouseX > 400 && mouseX < 400+courseBoxWidth && mouseY > 100 && mouseY < 100+courseBoxHeight)
  {
    if (pic2 == true) pic2 = false;
    else pic2 = true;
  } else if (mouseX > 50 && mouseX < 50+courseBoxWidth && mouseY > 350 && mouseY < 350+courseBoxHeight)
  {
    if (pic3 == true) pic3 = false;
    else pic3 = true;
  } else if (mouseX > 400 && mouseX < 400+courseBoxWidth && mouseY > 350 && mouseY < 350+courseBoxHeight)
  {
    if (pic4 == true) pic4 = false;
    else pic4 = true;
  } else if (mouseX > 50 && mouseX < 50+courseBoxWidth && mouseY > 600 && mouseY < 600+courseBoxHeight)
  {
    if (pic5 == true) pic5 = false;
    else pic5 = true;
  } else if (mouseX > 400 && mouseX < 400+courseBoxWidth && mouseY > 600 && mouseY < 600+courseBoxHeight)
  {
    if (pic6 == true) pic6 = false;
    else pic6 = true;
  }
}
