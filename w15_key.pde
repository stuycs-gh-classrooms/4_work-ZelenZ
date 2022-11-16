int numPoints = 0;
int[] xvals = new int[100];
int[] yvals = new int[100];
void setup(){
  size(600, 400);
  background(0);
  stroke(255);
  //makeLines(xvals, yvals, 10);
}
void draw(){
  background(0);
  drawLines(xvals,yvals);
}
void makeLines(int[] xvals,int[] yvals,int points){
  for(int i=0;i<points;i++){
    if(i<xvals.length){
      if(i<yvals.length){
        xvals[i]=int(random(width));
        yvals[i]=int(random(height));
        numPoints++;
      }
    }
  }
}
void drawLines(int[] xvals,int[] yvals){
  for(int i=1;i<numPoints;i++){
    line(xvals[i-1],yvals[i-1],xvals[i],yvals[i]);
  }
}
void mousePressed(){
  if(numPoints<xvals.length){
    if(numPoints<yvals.length){
      xvals[numPoints]=mouseX;
      yvals[numPoints]=mouseY;
      numPoints++;
    }
  }
}
void moveLines(int[] xs,int[] ys,int xMod,int yMod){
  for(int i=0;i<numPoints;i++){
    xs[i]+=xMod;
    ys[i]+=yMod;
  }
}
void keyPressed(){
  if(key=='c'||key=='C'){
    xvals=new int[100];
    yvals=new int[100];
    numPoints=0;
  }
  if(keyCode==UP){
    moveLines(xvals,yvals,0,-1);
  }
  if(keyCode==LEFT){
    moveLines(xvals,yvals,-1,0);
  }
  if(keyCode==DOWN){
    moveLines(xvals,yvals,0,1);
  }
  if(keyCode==RIGHT){
    moveLines(xvals,yvals,1,0);
  }
}
