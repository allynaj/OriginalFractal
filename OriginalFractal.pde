public void settings() {
    size(500, 500);
  }

  public void setup(){
    
  }
  public void draw(){
    background(0);
    myFractal(250,250,500);
  }
  public void myFractal(int x, int y, int siz) {
    noStroke();
    fill((int)(Math.random()*256)); 
    ellipse(x,y,siz/5,siz*3);
    if(siz > 10) {
      myFractal(x+siz/2,y/siz,siz/2);
      myFractal(x-siz/2,y,siz/2);
      myFractal(x+siz/2,y,siz/2);
      myFractal(x-siz/2,y,siz/2);
    }

  }
