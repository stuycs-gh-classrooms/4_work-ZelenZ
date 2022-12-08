class Alien{
  int type,ax,ay,speed;
  Alien(int x,int y,int ship){
    ax=x;
    ay=y;
    type=ship;
  }
  void display(){
    if(type==0){
      rect(ax,ay,5,5);
    }
  }
  void move(){
    if(ax+d*speed>width|ax+d*speed<0){
      ay+=speed;
      speed*=-1;
    }
    else{
      ax+=d*speed;
    }
  void 
}
