
PImage spritesheet;
Enemy e1; 
int fps = 60;
float dt = 1.0/fps;

void setup()
{
  smooth(0);
  noSmooth();
  frameRate(fps);
  size(800, 600);
  background(0, 0, 0, 1);
  spritesheet = loadImage("/development/galaga/data/galaga_sprite.png");
  e1 = new Enemy(spritesheet, 0, 126, 16, 16, 6);
}

int i = 0;
float f = 0;

void draw()
{
  f += dt * 5;
  
  if (f >= 6)
    f = 0;
    
  i = int(f);
  e1.draw(i);
  
    
  i = i % 6;
}
