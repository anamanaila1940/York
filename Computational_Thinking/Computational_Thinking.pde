import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer serviceMinster;
Boolean pressedPlay=false;
PFont text;
PImage mouse;
PShape next;
PImage map;
int pos=800;
PImage textbubble;
PImage play;
PImage pause;
//pictures for the main page of the options
PImage multiangulartower;
//images for fullscreen
PImage fullscreen1;
PImage fullscreen2;
//back to the menu for the third page
PImage main1, main2;
//menu from the second page
PImage menu1, menu2;
//images displayed in the first page
PImage york1;
PImage york2;
PImage york3;
PImage york4;
//image for the page inside the history of vikings
PImage jorvik;
//image for the page inside the history of romans
PImage romans;
//image for the page inside the history of medieval
PImage medieval;
//class
FirstPage first;
SecondPage second;
History vikings;
History roman;
History medievalh;
Menu menu;
OptionsPage romanWalls;
OptionsPage extendWalls;
OptionsPage yorkminsterpage;
OptionsPage extendMinster;
OptionsPage anglicanTower;
OptionsPage cliffordTower;
OptionsPage railwayStation;
OptionsPage coldwarBunker;
OptionsPage kingsManor;
OptionsPage kingsManorSlide;
OptionsPage redTower;
//images for the options for the menupictures
PImage yorkwall;
PImage yorkminster;
PImage anglicantower;
PImage clifford;
PImage railway;
PImage kingsmanor;
PImage coldwar;
PImage redtower;
//images for the pages with the options
PImage yorkMinster;
PImage anglicanTOwer;
PImage cliffordPicture;
PImage railwayYork;
PImage coldwarbunker;
PImage kingsManorImage1;
PImage kingsManorImage2;
PImage redTowerPicture;
//images for slideshow
PImage kingsmanor1;
PImage kingsmanor2;
PImage kingsmanor3;
int strokeW=1;
int posXhelpbutton=50, posYhelpbutton=height-90;
ArrayList<PImage> pictureslideshow;
ArrayList<PImage> picturesfortheoptions;
ArrayList<PImage> menupictures;
ArrayList<PImage> images; 
ArrayList<PImage> vikingphoto;
ArrayList<PImage> romanphoto;
ArrayList<PImage> medievalphoto;
int i=0;
int count=0;
int input=0;
int backgroundCol=0;
boolean pressed=false;
String txt;
String historyvikings;
String historyromans;
String historymedieval;
String historywalls;
String multiangular;
String yorkminstertext;
String anglicanTowerText;
String cliffordText;
String railwayText;
String coldwarText;
String kingManorText;
String redTowerText;
String creditsmenu;
String secondPagePictureCredits;
String secondPageTextCredits;
//credits
String vikingsTextCredits;
String medievalTextCredits;
String romanTextCredits;
String vikingsPhotoCredits;
String medievalPhotoCredits;
String romanPhotoCredits;
//for the slideshow inside kings manor
int slide=1;
int timedout=2000;
boolean pressedoption=false;
//buttons for next and previous for the pages that represent the options from the menu
PImage next1;
PImage next2;
PImage previous1;
PImage previous2;

void setup() {
  size(1920, 1080);
  minim=new Minim(this);
  serviceMinster=minim.loadFile("York Minster Advent and Christmas 2018.mp3");
  //loading and resizing the icons
  menu1=loadImage("mapmenu1.png");
  menu1.resize(90, 90);
  menu2=loadImage("mapmenu2.png");
  menu2.resize(90, 90);
  main1=loadImage("main1.png");
  main1.resize(60, 60);
  main2=loadImage("main2.png");
  main2.resize(60, 60);
  play=loadImage("play.png");
  pause=loadImage("pause.png");
  kingsmanor1=loadImage("kingsmanor1.jpg");
  kingsmanor2=loadImage("kingsmanor2.jpg");
  kingsmanor3=loadImage("kingsmanor3.jpg");
  next1=loadImage("next1.png");
  next2=loadImage("next2.png");
  previous1=loadImage("prev1.png");
  previous2=loadImage("previous2.png");
  String[] vikingTextC=loadStrings("vikingTextCredits.txt");
  vikingsTextCredits=join(vikingTextC, "\n");
  String[] romanTextC=loadStrings("romanTextCredits.txt");
  romanTextCredits=join(romanTextC, "\n");
  String[] medievalTextC=loadStrings("medievalTextCredits.txt");
  medievalTextCredits=join(medievalTextC, "\n");
  String[] vikingPhotoC=loadStrings("vikingPhotoCredits.txt");
  vikingsPhotoCredits=join(vikingPhotoC, "\n");
  String[] romanPhotoC=loadStrings("romanPhotoCredits.txt");
  romanPhotoCredits=join(romanPhotoC, "\n");
  String[] medievalPhotoC=loadStrings("medievalPhotoCredits.txt");
  medievalPhotoCredits=join(medievalPhotoC, "\n");
  String[] secondPagePicture=loadStrings("secondPageCreditsPicture.txt");
  secondPagePictureCredits=join(secondPagePicture, "\n");
  String[] secondPageText=loadStrings("secondPageCreditsText.txt");
  secondPageTextCredits=join(secondPageText, "\n");
  String[] menucreditsText=loadStrings("creditsmenu.txt");
  creditsmenu=join(menucreditsText, "\n");
  String[] redtowerT=loadStrings("redtowerText.txt");
  redTowerText=join(redtowerT, "\n");
  String[] kingManorT=loadStrings("kingsmanor.txt");
  kingManorText=join(kingManorT, "\n");
  String[] railwayT=loadStrings("railwayText.txt");
  railwayText=join(railwayT, "\n");
  String[] anglicanText=loadStrings("anglicantower.txt");
  anglicanTowerText=join(anglicanText, "\n");
  String[] yorkminsterText=loadStrings("yorkminstertext.txt");
  yorkminstertext=join(yorkminsterText, "\n");
  String[] towerm=loadStrings("MultiangularTower.txt");
  multiangular=join(towerm, "\n");
  String[] lines=loadStrings("historyOfYork.txt");
  txt=join(lines, "\n");
  String[] history=loadStrings("historyofvikings.txt");
  historyvikings=join(history, "\n");
  String[] historyroman=loadStrings("romanhistory.txt");
  historyromans=join(historyroman, "\n");
  String[] medievaltext=loadStrings("medievalhistory.txt");
  historymedieval=join(medievaltext, "\n");
  String[] historyofwalls=loadStrings("romanwalls.txt");
  historywalls=join(historyofwalls, "\n");
  String[] cliffordT=loadStrings("cliffordText.txt");
  cliffordText=join(cliffordT, "\n");
  String[] coldwarT=loadStrings("coldwarbunkerText.txt");
  coldwarText=join(coldwarT, "\n");
  text=loadFont("OldEnglishTextMT-150.vlw");
  picturesfortheoptions=new ArrayList<PImage>();
  images=new ArrayList<PImage>();
  vikingphoto=new ArrayList<PImage>();
  romanphoto=new ArrayList<PImage>();
  medievalphoto=new ArrayList<PImage>();
  menupictures=new ArrayList<PImage>();
  pictureslideshow=new ArrayList<PImage>();
  redTowerPicture=loadImage("redtowerOption.jpg");
  kingsManorImage1=loadImage("Kings-Manor-York-5690.jpg");
  coldwarbunker=loadImage("Cold-War-Bunker.jpg");
  cliffordPicture=loadImage("clifford.jpg");
  anglicanTOwer=loadImage("AnglicanT.jpg");
  yorkMinster=loadImage("YorkCathedral.jpg");
  textbubble=loadImage("textbubble.png");
  railwayYork=loadImage("railwayyork.jpg");
  multiangulartower=loadImage("towermultiangular.jpg");
  yorkwall=loadImage("romanwall.jpg");
  yorkminster=loadImage("yorkminstercathedral.jpg");
  anglicantower=loadImage("anglicantower.jpg");
  clifford=loadImage("cliffords-tower.jpg");
  kingsmanor=loadImage("kingsmanor.jpg");
  coldwar=loadImage("coldwar.jpg");
  railway=loadImage("train.JPG");
  redtower=loadImage("redtower.jpg");
  york1=loadImage("york1.jpg");
  york2=loadImage("york2.jpg");
  york3=loadImage("york3.jpg");
  york4=loadImage("york4.jpg");
  romans=loadImage("romans.jpg");
  romans.resize(1000, 550);
  jorvik=loadImage("vikings_jorvik.jpg");
  jorvik.resize(1000, 550);
  medieval=loadImage("medievalphoto.jpg");
  medieval.resize(1000, 550);
  map=loadImage("map.png");
  fullscreen1=loadImage("fullscreen1.png");
  fullscreen1.resize(50, 50);
  fullscreen2=loadImage("fullscreen2.png");
  //inserting the images inside the ArrayLists
  images.add(york1);
  images.add(york2);
  images.add(york3);
  images.add(york4); 
  romanphoto.add(romans);
  vikingphoto.add(jorvik);
  medievalphoto.add(medieval);
  mouse=loadImage("york.png");
  menupictures.add(yorkwall);
  menupictures.add(yorkminster);
  menupictures.add(anglicantower);
  menupictures.add(clifford);
  menupictures.add(railway);
  menupictures.add(kingsmanor);
  menupictures.add(coldwar);
  menupictures.add(redtower);
  picturesfortheoptions.add(yorkwall);
  picturesfortheoptions.add(multiangulartower);
  picturesfortheoptions.add(yorkMinster);
  picturesfortheoptions.add(anglicanTOwer);
  picturesfortheoptions.add(cliffordPicture);
  picturesfortheoptions.add(railwayYork);
  picturesfortheoptions.add(coldwarbunker);
  picturesfortheoptions.add(kingsManorImage1);
  picturesfortheoptions.add(redTowerPicture);
  pictureslideshow.add(kingsmanor1);
  pictureslideshow.add(kingsmanor2);
  pictureslideshow.add(kingsmanor3);
}
void draw() {
  cursor(mouse, 30, 20);
  switch(input) {
  case 0:
    first=new FirstPage(images.get(0), 20, 20, 1880, 950, "Credits:Wikipedia-York"); //first slide
    first.draw();
    elementsFirst();
    break;
  case 1:
    first=new FirstPage(images.get(1), 20, 20, 1880, 950, "Credits:visitbritain");//second slide
    first.draw();
    elementsFirst();
    break;
  case 2:
    first=new FirstPage(images.get(2), 20, 20, 1880, 950, "Credits:docbrown");//third slide
    first.draw();
    elementsFirst();
    break;
  case 3:
    first=new FirstPage(images.get(3), 20, 20, 1880, 950, "Credits:BBC");//4th slide
    first.draw();
    elementsFirst();
    break;
  case 4:
    second=new SecondPage(secondPagePictureCredits, secondPageTextCredits);//home page
    second.draw();
    break;
  case 5:
    vikings=new History(vikingphoto.get(0), "THE VISTORY OF VIKINGS", historyvikings, vikingsTextCredits, vikingsPhotoCredits);//viking's page
    vikings.draw();
    break;
  case 6:
    roman=new History(romanphoto.get(0), "THE VISTORY OF ROMANS", historyromans, romanTextCredits, romanPhotoCredits);//roman's page
    roman.draw();
    break;
  case 7:
    medievalh=new History(medievalphoto.get(0), "THE VISTORY OF MEDIEVALS", historymedieval, medievalTextCredits, medievalPhotoCredits);//medieval page
    medievalh.draw();
    break;
  case 8:
    //building the menu
    menu=new Menu();
    menu.draw();
    menu.options(menupictures.get(0), 1030, 510, "Roman walls");
    menu.options(menupictures.get(1), 730, 500, "York Minster");
    menu.options(menupictures.get(2), 660, 570, "Anglian Tower");
    menu.options(menupictures.get(3), 860, 550, "Clifford's Tower");
    menu.options(menupictures.get(4), 310, 530, "Railway Station");
    menu.options(menupictures.get(5), 670, 290, "King's Manor");
    menu.options(menupictures.get(6), 560, 740, "Cold War Bunker");
    menu.options(menupictures.get(7), 500, 250, "Red Tower");
    menu.explanation("1270", "King's Manor", 1570, 220);
    menu.explanation("71 AD", "Roman Walls", 1570, 290);
    menu.explanation("637 AD", "York Minster", 1570, 360);
    menu.explanation("1839", "Anglian Tower", 1570, 430);
    menu.explanation("1068", "Clifford's Tower", 1570, 500);
    menu.explanation("1877", "Railway Station", 1570, 570);
    menu.explanation("1961", "Cold War Bunker", 1570, 640);
    menu.explanation("1490", "Red Tower", 1570, 710);
    menu.credits(creditsmenu);
    break;
  case 9:
    romanWalls=new OptionsPage();
    romanWalls.draw();
    romanWalls.header("Roman Walls");
    romanWalls.body(picturesfortheoptions.get(0), "Roman Times", historywalls);
    romanWalls.helpbutton1();
    romanWalls.credits("Wikipedia", "Wikipedia");
    romanWalls.nextButton();
    romanWalls.previousButton();
    break;

  case 10:
    extendWalls=new OptionsPage();
    extendWalls.draw();
    extendWalls.header("Multiangular Tower");
    extendWalls.body(picturesfortheoptions.get(1), "Roman Times", multiangular);
    extendWalls.getBack();
    extendWalls.credits("Wikipedia", "Yorkshire Guide");
    break;
  case 11:
    romanWalls=new OptionsPage();
    romanWalls.draw();
    romanWalls.header("Roman Walls");
    romanWalls.body(picturesfortheoptions.get(0), "Roman Times", historywalls);
    romanWalls.helpbutton2();
    romanWalls.credits("Wikipedia", "Wikipedia");
    romanWalls.nextButton();
    romanWalls.previousButton();
    break;

  case 12:
    yorkminsterpage=new OptionsPage();
    yorkminsterpage.draw();
    yorkminsterpage.header("York Minster");
    yorkminsterpage.body(picturesfortheoptions.get(2), "Roman Times", yorkminstertext); 
    yorkminsterpage.credits("Wikipedia", "Great British Bucket List");
    yorkminsterpage.sound("Listen to a small part of the Christmas service inside the York Minster", "Youtube: York Minster Official");
    stroke(0);

    float position = map( serviceMinster.position(), 0, serviceMinster.length(), 180, 180+330 );
    fill(0);
    rect(180, height-330, position-180, 10);
    if (pressedPlay==true ) {
      serviceMinster.play();
    } else {
      serviceMinster.pause();
    }
    yorkminsterpage.nextButton();
    yorkminsterpage.previousButton();
    break;
  case 13:
    anglicanTower=new OptionsPage();
    anglicanTower.draw();
    anglicanTower.header("Anglian Tower");
    anglicanTower.body(picturesfortheoptions.get(3), "Early Anglo-Saxon Times", anglicanTowerText);
    anglicanTower.credits("Britain Express", "Bollington");
    anglicanTower.nextButton();
    anglicanTower.previousButton();
    break;
  case 14:
    cliffordTower=new OptionsPage();
    cliffordTower.draw();
    cliffordTower.header("Clifford Tower");
    cliffordTower.body(picturesfortheoptions.get(4), "Medieval Times", cliffordText);
    cliffordTower.credits("Wikipedia", "GPSMYCITY");
    cliffordTower.nextButton();
    cliffordTower.previousButton();
    break;
  case 15:
    railwayStation=new OptionsPage();
    railwayStation.draw();
    railwayStation.header("York Railway Station");
    railwayStation.body(picturesfortheoptions.get(5), "Victorian Times", railwayText);
    railwayStation.credits("Institution of Civil Engineers", "Gazette Live");
    railwayStation.nextButton();
    railwayStation.previousButton();
    break;
  case 16:
    coldwarBunker=new OptionsPage();
    coldwarBunker.draw();
    coldwarBunker.header("Cold War Bunker");
    coldwarBunker.body(picturesfortheoptions.get(6), "Post-World War II", coldwarText);
    coldwarBunker.credits("Wikipedia", "History Hit");
    coldwarBunker.nextButton();
    coldwarBunker.previousButton();
    break;
  case 17:
    kingsManor=new OptionsPage();
    kingsManor.draw();
    kingsManor.header("King's Manor");
    kingsManor.body(picturesfortheoptions.get(7), "Medieval Times", kingManorText);
    kingsManor.helpbutton1();
    kingsManor.credits("King's Manor-Wikipedia", "Britain Express");
    kingsManor.nextButton();
    kingsManor.previousButton();
    break;
  case 18:
    kingsManor=new OptionsPage();
    kingsManor.draw();
    kingsManor.header("King's Manor");
    kingsManor.body(picturesfortheoptions.get(7), "Medieval Times", kingManorText);
    kingsManor.helpbutton2();
    kingsManor.credits("King's Manor-Wikipedia", "Britain Express");
    kingsManor.nextButton();
    kingsManor.previousButton();
    break;
  case 19:
    kingsManorSlide=new OptionsPage();
    kingsManorSlide.draw();
    kingsManorSlide.header("King's Manor");
    kingsManorSlide.slideshow(pictureslideshow, slide, "University of York", "Wikipedia", "GPSMYCITY");
    //the image shown on the screen is dependent on the position of mouseX
    if (mouseX>0 && mouseX<1920/3) {
      slide=0;
    } else if (mouseX>width/3 && mouseX<(width/3)*2) {
      slide=1;
    } else if (mouseX>(width/3)*2 && mouseX<width) {
      slide=2;
    }
    kingsManorSlide.getBack();
    break;
  case 20:
    redTower=new OptionsPage();
    redTower.draw();
    redTower.header("Red Tower");
    redTower.body(picturesfortheoptions.get(8), "Middle Ages", redTowerText);
    redTower.credits("Red Tower York", "Red Tower York");
    redTower.nextButton();
    redTower.previousButton();
    break;
  }
 // if the user is on one of the pages that can be accessed from the menu, the timer will start and be restrated everytime they press on the mouse while being inside the screen
  if (input>8) {
    timedout--;
  }
  if (timedout==0) {
    input=8;
  }
  println(timedout);
  //this lines of code make sure that there are still images that can be showcased while the user hasn't pressed the next button and everytime frameCount %30=0 the vlaue of the input will change in order to be equal to count
  if (frameCount %30==0 && count<images.size() && !pressed) {
    input=count;
    count++;
  }
}
void elementsFirst() {
  fill(255, 200);
  textSize(150);
  textFont(text);
  text("YORK", width/3+50, height/3);
  fill(#5F5F5F);
  strokeWeight(strokeW);
  stroke(#BFBDBD);
  rect(width-120, height-90, width-1820, height-1050);
  fill(255);
  textSize(25);
  text("NEXT", width-110, height-65);
  if (mouseX>width-120 && mouseX<width-20 && mouseY>height-90 && mouseY<height-60) {
    strokeW=3;
  } else {
    strokeW=1;
  }
}
void mousePressed() {
  //it redirects thw user to the home page andit also changes the value of pressed in true
  if ((input==0 || input==1 || input==2 || input==3) && mouseX>width-120 && mouseX<width-20 && mouseY>height-90 && mouseY<height-60) {
    input=4;
    pressed=true;
  }
  if (input==4 && mouseX>width/6 && mouseX<width/6+300 && mouseY>height-440 && mouseY<height-40) {
    input=5;
  }
  if ((input!=0 || input!=1 || input!=2 || input!=3)&&(mouseX>width-90 && mouseX<width-30 && mouseY>height-1065 && mouseY<height-1005)||(mouseX>width-90 && mouseX<width-30 && mouseY>height-1065 && mouseY<height-1005)) {
    input=4;
  }
  if (input==8 && mouseX>width-90 && mouseX<width-30 && mouseY>height-1065 && mouseY<height-1005) {
    input=4;
  }
  if (input==4 && mouseX>width/6+500 && mouseX<width/6+800 && mouseY>height-440 && mouseY<height-40) {
    input=6;
  }
  if (input==4 && mouseX>width/6+1000 && mouseX<width/6+1300 && mouseY>height-440 && mouseY<height-40) {
    input=7;
  }
  //it transfers the user to the menu
  if ((input==4 || input==9 || input==10 || input==11 || input==12 || input==13 || input==14 || input==15 || input==16 || input==17 || input==18 || input==19 || input==20) && mouseX>20 && mouseX<110 && mouseY>5 && mouseY<95) {
    input=8;
  }
  if (input==8 && mouseX>width/2+70 && mouseX<width/2+170 && mouseY>height/2-30 && mouseY<height/2+30) {
    input=9;
  }
  if ((input==9 || input==11) && mouseX>width-1800 && mouseX<width-1000 && mouseY>height-970 && mouseY<height-470) {
    input=10;
  }
  if (input==10 && mouseX>width-1900 && mouseX<width-1800 && mouseY>height-100 && mouseY<height-50) {
    input=9;
  }
  if (input==9 && mouseX>width-1820 && mouseX<width-1770 && mouseY>height-100 && mouseY<height-50) {
    input=11;
  }
  if (input==11 && mouseX>width-1770 && mouseX<200 && mouseY>height-100 && mouseY<height-50) {
    input=9;
  }
  //transfer from the menu to the option page (York Minster)
  if (input==8 && mouseX>width/2-230 && mouseX<width/2-230+100 && mouseY>height/2-40 && mouseY<height/2-40+60) {
    input=12;
  }
  if (input==12 && mouseX>width-1790 && mouseX<width-1750 && mouseY>height-345 && mouseY<height-305) {
    pressedPlay=!pressedPlay;
  }
  if (input==8 && mouseX>width/2-300 && mouseX<width/2-200 && mouseY>height/2+30 && mouseY<height/2+90) {
    input=13;
  }
  if (input==8 && mouseX>width/2-100 && mouseX<width && mouseY>height/2+10 && mouseY<height/2+70) {
    input=14;
  }
  if (input==8 && mouseX>width/2-650 && mouseX<width/2-550 && mouseY>height/2-10 && mouseY<height/2+50) {
    input=15;
  }
  if (input==8 && mouseX>width/2-400 && mouseX<width/2-300 && mouseY>height/2+200 && mouseY<height/2+260) {
    input=16;
  }
  if (input==8 && mouseX>width/2-290 && mouseX<width/2-190 && mouseY>height/2-250 && mouseY<height/2-190) {
    input=18;
  }
  if (input==18 && mouseX>width-100 && mouseX<width-1770 && mouseY>height-100 && mouseY<height-50) {
    input=17;
  }
  if (input==17 && mouseX>width-1800 && mouseX<width-1000 && mouseY>height-970 && mouseY<height-470) {
    input=19;
  }
  if (input==18 && mouseX>width-1770 && mouseX<width-1720 && mouseY>height-100 && mouseY<height-50) {
    input=17;
  }
  if (input==19 && mouseX>width-1900 && mouseX<width-1800 && mouseY>height-100 && mouseY<height-50) {
    input=17;
  }
  if (input==8 && mouseX> width/2-460 && mouseX<width/2-360 && mouseY>height/2-290 && mouseY<height/2-230) {
    input=20;
  }
  if (input>8 && mouseX>0 && mouseX<width && mouseY>0 && mouseY<height) {
    timedout=2000;
  }
  //next buttons for the page with the options
  if ((input==17 || input==18) && mouseX>width/2+70 && mouseX<width/2+170 && mouseY>height-100 && mouseY<height-70) {
    input=9;
  } else if (input==9 && mouseX>width/2+70 && mouseX<width/2+170 && mouseY>height-100 && mouseY<height-70) {
    input=12;
  } else if (input==12 && mouseX>width/2+70 && mouseX<width/2+170 && mouseY>height-100 && mouseY<height-70) {
    input=13;
  } else if (input==13 && mouseX>width/2+70 && mouseX<width/2+170 && mouseY>height-100 && mouseY<height-70) {
    input=14;
  } else if (input==14 && mouseX>width/2+70 && mouseX<width/2+170 && mouseY>height-100 && mouseY<height-70) {
    input=15;
  } else if (input==15 && mouseX>width/2+70 && mouseX<width/2+170 && mouseY>height-100 && mouseY<height-70) {
    input=16;
  } else if (input==16 && mouseX>width/2+70 && mouseX<width/2+170 && mouseY>height-100 && mouseY<height-70) {
    input=20;
  } else if (input==20 && mouseX>width/2+70 && mouseX<width/2+170 && mouseY>height-100 && mouseY<height-70) {
    input=17;
  }
  //previous buttons for the page with the options
  if ((input==17 || input==18) && mouseX>width/2-70 && mouseX<width/2+30 && mouseY>height-100 && mouseY<height-70) {
    input=20;
  } else if (input==20 && mouseX>width/2-70 && mouseX<width/2+30 && mouseY>height-100 && mouseY<height-70) {
    input=16;
  } else if (input==16 && mouseX>width/2-70 && mouseX<width/2+30 && mouseY>height-100 && mouseY<height-70) {
    input=15;
  } else if (input==15 && mouseX>width/2-70 && mouseX<width/2+30 && mouseY>height-100 && mouseY<height-70) {
    input=14;
  } else if (input==14 && mouseX>width/2-70 && mouseX<width/2+30 && mouseY>height-100 && mouseY<height-70) {
    input=13;
  } else if (input==13 && mouseX>width/2-70 && mouseX<width/2+30 && mouseY>height-100 && mouseY<height-70) {
    input=12;
  } else if (input==12 && mouseX>width/2-70 && mouseX<width/2+30 && mouseY>height-100 && mouseY<height-70) {
    input=9;
  } else if (input==9 && mouseX>width/2-70 && mouseX<width/2+30 && mouseY>height-100 && mouseY<height-70) {
    input=17;
  }
  //it lets the user skip to any part of the song inside the page for York Minster
  if (mouseX>180 && mouseX<180+330 && mouseY>height-350 && mouseY<height-300) {
    int position=int(map(mouseX, 180, 330+180, 0, serviceMinster.length()));
    serviceMinster.cue(position);
  }
}
