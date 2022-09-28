void drawLightning(int x, float y, int numParts){
  int nextx;
  float nexty;
  stroke(#ffbf1f);
  strokeWeight(5);
  while (y < height){
    nextx=int(x+random(-5,5));
    nexty=int(y+(height/numParts));
    line(x,y,nextx,nexty);
    x=nextx;
    y=nexty;  
  }
}
void setup(){
  size(500,500);
  background(#000000);
  drawLightning(int(random(500)),0.0,50);
  drawLightning(int(random(500)),0.0,50);
  drawLightning(int(random(500)),0.0,50);
  drawLightning(int(random(500)),0.0,50);
  drawLightning(int(random(500)),0.0,50);
}
