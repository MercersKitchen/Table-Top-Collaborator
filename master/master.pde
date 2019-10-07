//place any global varyables here

void setup() {
  size (480,986);
  background(210);
}
void draw(){
  tabs();//reserves the top 3/40 of the phone screen for swapping tabs so dont try to use that part of the screen
}
void mouseClicked(){
  TabClick();
}
