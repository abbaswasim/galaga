
PImage spritsheet = loadImage("/development/galaga/data/dgalga_sprite.png");

void setup()
{
  size(800, 600);
}


void draw()
{
  image(spritsheet, 0, 0);
}
