int movingX,movingY,radius;

void setup()
{
  size(500,500);
  movingX=25;
  movingY=75;
  radius=25;
}
void circleRow(int startX,int endX,int y,int d)
{
  fill(#013424);
  while(startX<endX){
    circle(startX+(d*0.5),y,d);
    startX=startX+d;
  }
}
void draw()
{
  background(255);
  circleRow(0,500,25,50);
  fill(#985634);
  circle(movingX,movingY,(radius*2));
  if((movingX+radius)>width)
    {
    movingX=25;
    movingY=movingY+(2*radius);
    }
  if((movingY+radius)>height)
    {
    movingY=75;
    }
  movingX++;
}
