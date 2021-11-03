class OptionsPage {
  PFont backfont;
  PFont titlefont;
  PFont textfont;
  int strokeW=1;
  int extendWidth=0;
  int extendHeight=0;
  int colorbutton=#5F5F5F;
  int color1=255;
  int color2=255;
  int color3=255;
  String credit;
  void draw() {
    background(255);
    titlefont=loadFont("OldEnglishTextMT-48.vlw");
    backfont=loadFont("OldEnglishTextMT-20.vlw");
    textfont=loadFont("ArialMT-20.vlw");
    if (mousePressed) {
      if (mouseX>70&&mouseX<120 &&mouseY>120 &&mouseY<170) {
        extendWidth=100;
        extendHeight=200;
      } else {
        extendWidth=0;
        extendHeight=0;
      }
    }
   
  }
  void header(String titleName) {
    fill(0);
    noStroke();
    rect(0, 0, width, 100);
    fill(255);
    textFont(titlefont);
    text(titleName, width/2, 60);
    icons();
  }
  void icons() {
    if (mouseX>width-90 && mouseX<width-30 && mouseY>15 && mouseY<75) {
      image(main2, width-90, 15);
    } else {
      image(main1, width-90, 15);
    }
    if (mouseX>20 && mouseX<110 && mouseY>5 && mouseY<95) {
      image(menu2, 20, 5);
    } else {
      image(menu1, 20, 5);
    }
  }
  void body(PImage option, String eraName,String text) {  
    if (mouseX>70&&mouseX<120 &&mouseY>120 &&mouseY<170) {
      image(fullscreen2, 70, 120);
    } else {
      image(fullscreen1, 70, 120);
    }
    image(option, 120, height-910, 800+extendWidth, 500+extendHeight);
    strokeWeight(2);
    stroke(#C1C1C1);
    fill(#E8E8E8);
    rect(width-900, 120, 810, height-240);
    noStroke();
    fill(0);
    rect(width-900, 120, 810, height-1000);
    textAlign(CORNER);
    textFont(textfont);
    text(text, width-850, 270);
    textAlign(CENTER);
    textFont(titlefont);
    fill(255);
    text(eraName, width-425, 175);
  }
  void getBack() {
    strokeWeight(2);
    fill(colorbutton);
    stroke(#BFBDBD);
    rect(20, height-100, 100, 50);
    fill(255);
    textFont(backfont);
    textSize(25);
    text("BACK", 70, height-65);
  }
  void helpbutton1() {  
    fill(colorbutton);
    stroke(#BFBDBD);
    circle(100, height-100, 50);
    fill(255);
    text("?", 100, height-80);
  }
  void helpbutton2() {
    fill(colorbutton);
    circle(120, height-125, 30);
    circle(100, height-100, 20);
    fill(#D8D8D8);
    stroke(colorbutton);
    ellipse(200, height-230, 300, 200);
    textFont(textfont);
    fill(255);
    text("Click on the picture \n for more information", 200, height-250);
  }
  void sound(String text, String credSound) {
    textFont(textfont);
    textSize(15);
    fill(0);
    text(text, 340, height-370);
    fill(#D8D8D8);
    rect(120, height-350, 400, 50);
    fill(#EAEAEA);
    rect(180, height-330, 325, 10);
    if (pressedPlay==false) {
      image(play, 130, height-345, 40, 40);
    } else if (pressedPlay==true) {
      image(pause, 130, height-345, 40, 40);
    }
    fill(0);
    text("Sound Credits: ",width-790,height-160);
    text(credSound,width-610,height-160);
  }
  void slideshow(ArrayList<PImage> name, int slidenumber,String creditPicture1,String creditPicture2,String creditPicture3) {
    
    image(name.get(slidenumber), width/2-500, height-910, 1000, 700);
    stroke(colorbutton);
    if (slidenumber==0) {
      color1=#D8D8D8;
      color2=255;
      color3=255;
      credit=creditPicture1;
    }
    if (slidenumber==1) {
      color2=#D8D8D8;
      color1=255;
      color3=255;
      credit=creditPicture2;
    }
    if (slidenumber==2) {
      color3=#D8D8D8;
      color2=255;
      color1=255;
      credit=creditPicture3;
    }
    textFont(textfont);
    fill(0);
    textSize(15);
    text("Credits: ",  width/2-470,height-950);
    text(credit,width/2-350,height-950);
    fill(color1);
    circle(width/2-100, height-170, 10);
    fill(color2);
    circle(width/2, height-170, 10);
    fill(color3);
    circle(width/2+100, height-170, 10);
  }
  
  void credits(String creditText,String creditPicture){
    textFont(textfont);
    fill(0);
    textSize(15);
    text("Text Credits: ",width-790,height-200);
    text(creditText,width-650,height-200);
    text("Photo Credits: ",width-790,height-180);
    text(creditPicture,width-610,height-180);
    
  }
  void nextButton() {
    if (mouseX>width/2+70 && mouseX<width/2+170 && mouseY>height-100 && mouseY<height-70) {
      image(next2, width/2+70, height-100, 100, 30);
    } else {
      image(next1, width/2+70, height-100, 100, 30);
    }
  }
  void previousButton() {
    if (mouseX>width/2-70 && mouseX<width/2+30 && mouseY>height-100 && mouseY<height-70) {
      image(previous2, width/2-70, height-100, 100, 30);
    } else {
      image(previous1, width/2-70, height-100, 100, 30);
    }
  }
}
