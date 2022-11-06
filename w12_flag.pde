

void genFlag(){
  noStroke();
  for(int i = 0; i < 6; i++){
    for(int u = 0; u < 10; u++){
    int rgbScale = (i+u+frameCount)%60;
    float rValue = 255;
    float gValue = lerp(0,255,max(0.0,1-abs(-30-float(rgbScale))/60,1-abs(30-float(rgbScale))/60));
    float bValue = lerp(0,255,max(0.0,1-abs(-10-float(rgbScale))/60,1-abs(50-float(rgbScale))/60));
    fill(rValue,gValue,bValue);
        println(gValue);

    rect(u*width/10,i*height/6,width/10,height/6);
      
    }
  }
}

void setup(){
 frameRate(30);
 size(500,300); 
}

void draw(){
 
  background(255);
  genFlag();
  fill(255,50,50);
  textAlign(CENTER);
  textSize(30);
  text("i hate it here",width/2,height/2);
}
