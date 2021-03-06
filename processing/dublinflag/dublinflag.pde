void setup()
{
  // at the start
  size(500, 500);
  background(0);
  noStroke();
}

void draw()
{
  boolean dark = true;
  int rows = 20, cols = 20;
  float cellW, cellH;
  cellW = width / cols;
  cellH = height / rows;
  
  for (int y = 0 ; y < height ; y += cellH)
  {
    for(int x = 0 ; x < width ; x += cellW)
    {
      if (dark)
      {
        fill(0, 0, 255);
      }
      else
      {
        fill(0, 0, 128);
      }
      rect(x, y, cellW, cellH);
      dark = ! dark;
    }  
    dark = ! dark;
  }
}