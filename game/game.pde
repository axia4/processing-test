//game Example
String s = "";
Boolean collides = false;
 
Game game = new Game();
Player player = new Player();
videoMode window  = new videoMode();
int cell_size = 32;


void settings(){
  window.mode1x();
  size( window.width, window.height );
}

void setup() {    
  game.title();
}



void draw() {  
  game.update();
  background( 0 );
  
  fill( #FFFFFF );
  textSize( 12 );
  if(game.play){
    grid();
    level1();
    
    if (player.isFire){
      rect(player.x, player.y , 64, 64);
      
    }
    
    
    player.move();   
    
    player.draw();
    
  }else{
    text( s, width/2, (height/2) );
  }  
  
  
}


void level1(){  
  int[] obj = new int[10];
  
  obj[0] = 1;
  obj[1] = 2;
  obj[2] = 3;
  obj[3] = 20;
  obj[4] = 22;
  obj[5] = 21;
  
  
  
  for(int i = 0; i < 6; i++){
      
    int col = 0;
    int row = 0;
    row = obj[i];
    while(row > (width/cell_size)){
      col++;    
      row-= width/cell_size;
    }
    
      fill( #FFFFFF );
      rect((row*cell_size- 32), col*cell_size, cell_size, cell_size);
    
  }
  
}



void grid(){
  stroke(255);
  for(int i =0; (i*cell_size) < height; i++ ){   
   
   line(0, i*cell_size, width, i*cell_size);   
   for(int j =0; (j*cell_size) < width; j++ ){    
    line(j*cell_size, 0, j*cell_size, height);
   }  
  }
}


void gameTitle(){
  player.lives = 3;   
  s = "Press ENTER to start";  
}


void gamePlay(){  
  if ( player.lives > 0 ){
  }else{
   game.over();          
  }
}


void gameOver(){
  s = "GAME OVER";
}

void gamePause(){
   s = "GAME paused"; 
}


void keyReleased() {
  player.setMove(keyCode, false);
}
 

void keyPressed() {
  player.setMove(keyCode, true);  
  game.checkKey(keyCode);
}
