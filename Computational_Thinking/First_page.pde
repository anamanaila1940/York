class FirstPage {
  PFont text;
  PImage img;
  int positionX, positionY, photoW, photoH;
  String name_Credit;
  FirstPage(PImage newimg, int newpositionX, int newpositionY, int newphotoW, int newphotoH, String newname_Credit) {
    img=newimg;
    positionX=newpositionX;
    positionY=newpositionY;
    photoW=newphotoW;
    photoH=newphotoH;
    name_Credit=newname_Credit;
  }
  void draw() {
    background(backgroundCol);
    image(img, positionX, positionY, photoW, photoH);
    textSize(10);
    text=loadFont("ArialNarrow-Italic-15.vlw");
    textFont(text);
    text(name_Credit, width-1900, height-90);    
  }
}
