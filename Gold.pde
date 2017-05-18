class Gold
{
  int x,y,point;
  PImage goldImages[];
  
  Gold(int x, int y, int point)
  {
    this.x = x;
    this.y = Math.abs(y - height/3);
    this.point = point;
    goldImages = new PImage [26];
    
    int num = 0;
    for(int i = 0; i < goldImages.length; i++)
    {
      num = i + 1;
      (goldImages[i] = loadImage("" + num +".png")).resize(0,40);      
    }
    
  }
  
  void draw()
  {
    image(goldImages[(2*frameCount/3)%26],x,y);
  }
}