class Alien{
  int type,ax,ay,aspeed,d;
  Alien(int x,int y,int ship,int speed,int position){
    ax=x;
    ay=y;
    type=ship;
    aspeed=speed;
    d=position;
  }
  void display(){
    square(ax,ay,10);
  }
  void move(){
    if(ax+d*aspeed>width|ax+d*aspeed<0){
      ay+=aspeed;
      aspeed*=-1;
    }
    else{
      ax+=aspeed;
    }
  }
}
