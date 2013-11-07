
// variable to control line + hash color
@pink: darken(#e3a6e3,5);

#osmrails {
  // line styles 
  line-color: @pink;
  line-width: .2;
  [zoom>3] { line-width: .35; }
  [zoom>5][len>50000],
  [zoom>7][len>20000] { line-width:.5; }
  [zoom>9] { line-width:.75; } 
  
  // hash styles - filtered by length of line to prevent
  //    noise around cities + other dense areas
  [len>100000][zoom>3],
  [zoom>5][len>750000],
  [zoom>6][len>50000],
  [zoom>7][len>25000],
  [zoom>8][len>12500],
  [zoom>9][len>5000],
  [zoom>10][len>2500]{
    hash/line-color:  @pink;
    hash/line-width: 5;
    hash/line-dasharray: 1,30;
    [zoom=4] { hash/line-opacity: .5; }
  }
}

/**/
