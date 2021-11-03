class SecondPage {
  //footer
  PImage vikings, roman, medieval;
  //adding a custom font
  PFont titlefont;
  PFont body;
  String creditsPic;
  String creditText;
  //background
  int backgroundCol=#C4C4C4;
  SecondPage(String creditsPicture, String creditsText) {
    creditsPic=creditsPicture;
    creditText=creditsText;
  }
  void draw() {   
    background(backgroundCol);
    titlefont=loadFont("OldEnglishTextMT-48.vlw");
    body=loadFont("ArialMT-30.vlw");
    //header
    header();
    //body
    body();
    //footer
    footer();
  }
  void header() {
    fill(0);
    noStroke();
    rect(0, 0, width, 100);
    fill(255);
    textFont(titlefont);
    text("THE HISTORY OF YORK", width/2, 60);
    if (mouseX>20 && mouseX<110 && mouseY>5 && mouseY<95) {
      image(menu2, 20, 5);
    } else {
      image(menu1, 20, 5);
    }
  }
  void body() {
    fill(255);
    textFont(body);    
    textSize(20);
    text("Picture Credits:", 90, height/2);
    text(creditsPic, 350, height/2);
    text("Text Credits:", 80, height/2+50);
    text(creditText, 200, height/2+50);
    textAlign(CENTER);
    textSize(30);
    text(txt, 10, 160, width-10, height);
  }
  void footer() {
    vikings=loadImage("jorvik.jpg");
    vikings.resize(300, 400);
    roman=loadImage("roman.jpg");
    roman.resize(300, 400);
    medieval=loadImage("shambles.jpg");
    medieval.resize(300, 400);
    fill(255);
    rect(0, height-450, width, height);
    image(vikings, width/6, height-440);
    if (mouseX>width/6 && mouseX<width/6+300 && mouseY>height-440 && mouseY<height-40) {// this part acts like a hover
      fill(#DBD9D9, 200);
      rect(width/6, height-440, 300, 400);
      fill(#7E7E7E);
      text("VIKINGS HISTORY", width/6+150, height-220);
    } else {
      fill(#DBD9D9, 80);
      rect(width/6, height-100, 300, 60);
      fill(#DBD9D9);
      text("VIKINGS HISTORY", width/6+150, height-60);
    }
    image(roman, width/6+500, height-440);
    if (mouseX>width/6+500 && mouseX<width/6+800 && mouseY>height-440 && mouseY<height-40) {
      fill(#DBD9D9, 200);
      rect(width/6+500, height-440, 300, 400);
      fill(#7E7E7E);
      text("ROMAN HISTORY", width/6+650, height-220);
    } else {
      fill(#DBD9D9, 80);
      rect(width/6+500, height-100, 300, 60);
      fill(#DBD9D9);
      text("ROMAN HISTORY", width/6+650, height-60);
    }
    image(medieval, width/6+1000, height-440);
    if (mouseX>width/6+1000 && mouseX<width/6+1300 && mouseY>height-440 && mouseY<height-40) {
      fill(#DBD9D9, 200);
      rect(width/6+1000, height-440, 300, 400);
      fill(#7E7E7E);
      text("MEDIEVAL HISTORY", width/6+1150, height-220);
    } else {
      fill(#DBD9D9, 80);
      rect(width/6+1000, height-100, 300, 60);
      fill(#DBD9D9);
      text("MEDIEVAL HISTORY", width/6+1150, height-60);
    }
  }
}
