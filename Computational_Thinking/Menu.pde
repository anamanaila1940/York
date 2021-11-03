class Menu {
  PFont titlefont;
  PFont titleoption;
  PFont timeline;
  PImage img;
  int posX,posY;
  String title;
  
  void draw() {
    background(255);
    titlefont=loadFont("OldEnglishTextMT-48.vlw");
    titleoption=loadFont("ArialMT-15.vlw");
    timeline=loadFont("ArialMT-20.vlw");
    body();
    header();
    
  }
  void header() {

    fill(0);
    noStroke();
    rect(0, 0, width, 100);
    fill(255);
    textFont(titlefont);
    text("MENU", width/2, 60);
    if (mouseX>width-90 && mouseX<width-30 && mouseY>15 && mouseY<75) {
      image(main2, width-90, 15);
    } else {
      image(main1, width-90, 15);
    }
  }
  void body() {
     strokeWeight(2);
    stroke(#C1C1C1);
    fill(#E8E8E8);
    rect(width-400,120,380,height-180);
    image(map, width/2-700, height/2-300);
  }
  void options(PImage img, int posX, int posY,String title) {
    if(mouseX>posX&&mouseX<posX+100 &&mouseY>posY&&mouseY<posY+60){
      strokeWeight(4);
    }else{
      strokeWeight(2);
    }
    stroke(#C1C1C1);
    fill(225);
    triangle(posX+40,posY+60,posX+50,posY+80,posX+60,posY+60);
    rect(posX-2,posY-30,104,91);
    textFont(titleoption);
    fill(0);
    text(title,posX+50,posY-10);
    image(img,posX,posY,100,60);
  }
  void explanation(String year,String name,int posX,int posY){    
    fill(0);
    textFont(titlefont);
    text("Times",width-210,170);
    textFont(timeline);
    fill(0);
    text(year,posX,posY);
    text(name,posX+160,posY);
  }
  void credits(String credits){
    fill(#E8E8E8);
    rect(10,height-450,300,400);
    textFont(titlefont);
    fill(0);
    textSize(30);
    text("Credits:",70,height-420);
    textFont(titleoption);
    text(credits,110,height-380);
  }
}
