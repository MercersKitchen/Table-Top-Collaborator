//place any global varyables here
  boolean charTab = true;
  boolean diceTab = false;
  boolean storyTab = false;
  
void setup() {
  size (480,986);
  background(210);
}
void draw(){
  tabs();//reserves the top 3/40 of the phone screen for swapping tabs so dont try to use that part of the screen
  if (charTab) {drawCharSheet();}
  if (diceTab) {drawDice();}
  if (storyTab) {drawStory();}
}
void mouseClicked(){
  TabClick();
  print(mouseX,mouseY);
}
