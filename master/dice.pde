boolean adv = false;
boolean disadv = false;
int mod = 0;
int dice = 1;
int sides = 20;
String diceDisplay = "1D20";

void drawDice() {
  rect (width,height,0,height*3/40);
  rect (width*78/80,height*39/80,width*2/80,height*7/80);//menu
  rect (width*78/80,height*40/80,width*2/80,height*78/80);//results
  rect (width*30/80,height*10/80,width*50/80,height*17/80);//main display
  if (adv){strokeWeight(3); fill(180);}
  rect (width*2/80,height*7/80,width*15/80,height*13/80); //advantage toggle
  strokeWeight(1);
  fill(210);
  if (disadv){strokeWeight(3); fill(180);}
  rect (width*78/80,height*7/80,width*65/80,height*13/80);//disadvantage toggle
  strokeWeight(1);
  fill(210);
  rect (width*2/80,height*19/80,width*15/80,height*13/80);//add mod
  rect (width*78/80,height*19/80,width*65/80,height*13/80);//subtract mod
  rect (width*2/80,height*7/80,width*15/80,height*13/80);//add dice
  rect (width*78/80,height*7/80,width*65/80,height*13/80);//subtract dice
  for(int i=1; i < 77 ;i +=11){rect(width*(i+1)/80,height*34/80,width*(i+11)/80,height*29/80);}
  textFont(font);
  textAlign(CENTER, CENTER);
  text (diceDisplay,width*30/80,height*10/80,width*50/80,height*17/80);
}
void diceClick() {
  //toggle advantage
  if(mouseY > height*7/80 && mouseY < height*13/80 && mouseX > width*2/80 && mouseX < width*15/80){if(adv){adv=false;}else{adv=true;disadv=false;}}
  //toggle disadvantage
  if(mouseY > height*7/80 && mouseY < height*13/80 && mouseX > width*65/80 && mouseX < width*78/80){if(adv){disadv=false;}else{disadv=true;adv=false;}}
  //modifier increment
  if(mouseY > height*19/80 && mouseY < height*13/80 && mouseX > width*2/80 && mouseX < width*15/80){mod++;diceDisplayAssemble(mod,dice,sides);}
  //modifier decrement
  if(mouseY > height*19/80 && mouseY < height*13/80 && mouseX > width*65/80 && mouseX < width*78/80){mod--;diceDisplayAssemble(mod,dice,sides);}
  //dice increment
  if(mouseY > height*7/80 && mouseY < height*13/80 && mouseX > width*2/80 && mouseX < width*15/80){dice++;diceDisplayAssemble(mod,dice,sides);}
  //dice decrement
  if(mouseY > height*7/80 && mouseY < height*13/80 && mouseX > width*65/80 && mouseX < width*78/80){dice--;diceDisplayAssemble(mod,dice,sides);}


  if(mouseY > height*29/80 && mouseY < height*34/80 && mouseX > width*1.5/80 && mouseX < width*12.5/80){sides=2;diceDisplayAssemble(mod,dice,sides);}
  if(mouseY > height*29/80 && mouseY < height*34/80 && mouseX > width*12.5/80 && mouseX < width*23.5/80){sides=4;diceDisplayAssemble(mod,dice,sides);}
  if(mouseY > height*29/80 && mouseY < height*34/80 && mouseX > width*23.5/80 && mouseX < width*34.5/80){sides=6;diceDisplayAssemble(mod,dice,sides);}
  if(mouseY > height*29/80 && mouseY < height*34/80 && mouseX > width*34.5/80 && mouseX < width*45.5/80){sides=10;diceDisplayAssemble(mod,dice,sides);}
  if(mouseY > height*29/80 && mouseY < height*34/80 && mouseX > width*45.5/80 && mouseX < width*56.5/80){sides=12;diceDisplayAssemble(mod,dice,sides);}
  if(mouseY > height*29/80 && mouseY < height*34/80 && mouseX > width*56.5/80 && mouseX < width*67.5/80){sides=20;diceDisplayAssemble(mod,dice,sides);}
  if(mouseY > height*29/80 && mouseY < height*34/80 && mouseX > width*67.5/80 && mouseX < width*78.5/80){sides=100;diceDisplayAssemble(mod,dice,sides);}
}
void diceDisplayAssemble (int m, int d, int s){
  if (m != 0){diceDisplay = str(d)+"D"+str(s)+"+"+str(m);}
  else{diceDisplay = str(d)+"D"+str(s);}
}
