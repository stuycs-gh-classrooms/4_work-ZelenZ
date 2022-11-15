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
