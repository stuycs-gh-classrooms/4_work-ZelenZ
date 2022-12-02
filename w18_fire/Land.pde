class Land{
  int state,nextState,landSize,lx,ly;
  color landColor;
  Land(int x,int y,int size,int type){
    lx=x;
    ly=y;
    landSize=size;
    state=type;
    if(state==0){
      landColor=DIRT_COLOR;
    }
    if(state==1){
      landColor=FIRE_COLOR;
    }
    if(state==3){
      landColor=GRASS_COLOR;
    }
  }
  void display(){
    fill(landColor);
    square(lx,ly,landSize);
  }
  void updateNextState(int left){
    nextState=state;
    if(left==1){
      nextState=1;
    }
    if(state==1){
      nextState=2;
    }
  }
  void changeState(){
    state=nextState;
    if(state==1){
      landColor=FIRE_COLOR;
    }
    if(state==2){
      landColor=BURNT_COLOR;
    }
  }
}
