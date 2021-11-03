class History {
  PFont titleFont;
  PFont body;
  PImage img1;
  int backgroundCol=#C4C4C4;
  String title;
  String text;
  int count=0;
  Boolean pressed1=true;
  String creditsText;
  String creditsPicture;
  History(PImage newimg1, String newTitle, String newText, String creditText, String creditPicture) {
    img1=newimg1;
    title=newTitle;
    text=newText;
    creditsText=creditText;
    creditsPicture=creditPicture;
  }
  void draw() {
    background(backgroundCol);
    titleFont=loadFont("OldEnglishTextMT-48.vlw");
    body=loadFont("ArialMT-20.vlw");
    header();
    body();
  }
  void header() {
    fill(0);
    noStroke();
    rect(0, 0, width, 100);
    fill(255);
    textFont(titleFont);
    textAlign(CENTER);
    text(title, width/2, 60);
    if (mouseX>width-90 && mouseX<width-30 && mouseY>15 && mouseY<75) {
      image(main2, width-90, 15);
    } else {
      image(main1, width-90, 15);
    }
  }
  void body() {
    image(img1, width/2-500, height/7);
    textFont(body);
    textAlign(CORNER);
    text(text, 0, height-300);
    textSize(15);
    text("Text Credit:",20,height-120);
    text(creditsText,140,height-120);
    text("Picture Credit:",20,height-100);
    text(creditsPicture,140,height-100);
  }
}
