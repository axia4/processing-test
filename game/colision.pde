public boolean collideRectRect( int x1, int y1, int w1, int h1, int x2, int y2, int w2, int h2 ) {    
  if ( x1+w1 <= x2  || x1 >= x2+w2   || y1+h1 <= y2 || y1 >= y2+h2 ) {      
    return false;     
  }      
  return true;
}
