void logo(int logox, int logoy, int logoSize)
{
  stroke(#ffcc4d);
  fill(#ffcc4d);
  circle(logox,logoy,logoSize);
  stroke(#664500);
  fill(#664500);
  ellipse(logox-(logoSize*0.15),logoy-(logoSize*0.025),logoSize*0.0875,logoSize*0.10);
  ellipse(logox+(logoSize*0.15),logoy-(logoSize*0.025),logoSize*0.0875,logoSize*0.125);
  noFill();
  strokeWeight(logoSize*0.0375);
  arc(logox-(logoSize*0.325),logoy+(logoSize*0.375),logoSize*1.125,logoSize*1.125,3*PI/2,5*PI/3);
  strokeWeight(logoSize*0.05);
  arc(logox+(logoSize*0.15),logoy-(logoSize*0.025),logoSize*0.375,logoSize*0.5,4*PI/3,11*PI/6);
  strokeWeight(logoSize*0.025);
  line(logox-(logoSize*0.175),logoy+(logoSize*0.1875),logox+(logoSize*0.175),logoy+(logoSize*0.1875));
}
void setup()
{
  size(400,400);
  background(#000000);
  logo(100,100,100);
  logo(100,300,75);
  logo(300,100,50);
  logo(300,300,25);
}
