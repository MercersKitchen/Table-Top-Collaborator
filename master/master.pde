//place any global varyables here
  boolean charTab = true;
  boolean diceTab = false;
  boolean storyTab = false;
  
  PFont font;

void setup() {
  size (480,986);
  background(210);
  rectMode(CORNERS);
  font = createFont("Times New Roman", 20);
  textFont(font);
  textAlign(CENTER, CENTER);
}
void draw(){
  tabs();//reserves the top 3/40 of the phone screen for swapping tabs so dont try to use that part of the screen
  if (charTab) {drawCharSheet();}
  if (diceTab) {drawDice();}
  if (storyTab) {drawStory();}
}
void mouseClicked(){
  tabClick();
  if (diceTab){diceClick();}
}
