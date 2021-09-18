class Enemy 
{ 
  int start_x, start_y, width, height;
  int count;
  PImage spritesheet;
  PImage image_array[];
  
  Enemy (PImage ss, int x, int y, int w, int h, int c) 
  {
    spritesheet = ss;
    start_x = x;
    start_y = y;
    width = w;
    height = h;
    count = c;
    
    image_array = new PImage[c];
    
    for (int i = 0; i < count; i = i+1) 
    {
      image_array[i] = spritesheet.get(start_x + (i * (width  + 2)), start_y, width, height);
      image_array[i].resize(width * 5, height * 5);
    }
  } 
  void draw(int index) 
  {
    //for (int i = 0; i < count; i = i+1) 
    {
      //image(image_array[index], 0, 0, width * 2, height * 2);
      noSmooth();
      image(image_array[index], 0, 0);
      //smooth();
    }
  } 
}
