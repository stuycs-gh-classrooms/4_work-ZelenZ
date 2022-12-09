int speed=5;
Alien[][] grid;

void setup(){
  size(250,250);
  grid=new Alien[5][11];
  for(int i=0;i<grid.length;i++){
    for(int ii=0;ii<grid[i].length;ii++){
      grid[i][ii]=new Alien(10*ii,10*i,0,speed,grid.length-ii);
    }
  }
}
void draw(){
  for(int i=0;i<grid.length;i++){
    for(int ii=0;ii<grid[i].length;ii++){
      grid[i][ii].display();
      grid[i][ii].move();
    }
  }
}
