void drawDice() {
  rect (width,height,0,height*3/40);
  rect (width*78/80,height*39/80,width*2/80,height*7/80);//menu
  rect (width*78/80,height*40/80,width*2/80,height*78/80);//results
  rect (width*30/80,height*10/80,width*50/80,height*17/80);//main display
  rect (width*2/80,height*7/80,width*15/80,height*13/80); //advantage toggle
  rect (width*78/80,height*7/80,width*65/80,height*13/80);//disadvantage toggle
}
