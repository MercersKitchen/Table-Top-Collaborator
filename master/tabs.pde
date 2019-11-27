void tabs (){
if (charTab) {strokeWeight(3); fill(180);}//tab drawing
  rect (0,0,(width*1/3)-3,height*3/40);
  strokeWeight(1);
  fill(210);
if (diceTab) {strokeWeight(3); fill(180);}
  rect (width*1/3,0,(width*2/3)-3,height*3/40);
  strokeWeight(1);
  fill(210);
if (storyTab) {strokeWeight(3); fill(180);}
   rect (width,0,width*2/3,height*3/40);
   strokeWeight(1);
   fill(210);
}//end tab drawing
void tabClick() {//switch tab listners
  if (charTab){
    if (mouseX>width*1/3 && mouseX<width*2/3 && mouseY>0 && mouseY<height*3/40){charTab = false; diceTab = true;}
    if (mouseX>width*2/3 && mouseX<width && mouseY>0 && mouseY<height*3/40){charTab = false; storyTab = true;}
  }
  if (diceTab){
    if (mouseX>0 && mouseX<width*1/3 && mouseY>0 && mouseY<height*3/40){diceTab = false; charTab = true;}
    if (mouseX>width*2/3 && mouseX<width && mouseY>0 && mouseY<height*3/40){diceTab = false; storyTab = true;}
  }
   if (storyTab){
    if (mouseX>width*1/3 && mouseX<width*2/3 && mouseY>0 && mouseY<height*3/40){storyTab = false; diceTab = true;}
    if (mouseX>0 && mouseX<width*1/3 && mouseY>0 && mouseY<height*3/40){storyTab = false; charTab = true;}
  }
}
