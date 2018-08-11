
class Player{  
  public int w = 32;
  public int h = 32;  
  public int x = 32;
  public int y = 0;
  private int marginX = 0;
  private int marginY = 0;
  
  public int velocityX = 4;
  public int velocityY = 4;
  
  public int bulletX, bulletY; 
  boolean isLeft, isRight, isUp, isDown, isFire;
  public int lives = 3;
  
  void moveUP(){
    if(this.y > (0 + this.marginY)*2){
      this.y -= this.velocityY;
    }    
  }
  
  void moveDown(){
    if( (this.y+ this.h) < (window.height - this.marginY) ){
      this.y += this.velocityY;  
    }
  }
  
  void moveLeft(){
    if(this.x > (0 - this.marginX) ){
      this.x -= this.velocityX;
    }    
  }
  
  void moveRight(){
    if( (this.x+ this.w) < (window.width + this.marginX ) ){
      this.x += this.velocityX;    
    }
  }
  
 
  
  void draw(){
      rect(this.x,this.y, this.w, this.h);
      text( "Player: "+ this.lives, (20), (10) );
  }
  
  void move(){
    
    if (this.isLeft)player.moveLeft();
    if (this.isRight)player.moveRight();
    if (this.isDown)player.moveDown();
    if (this.isUp)player.moveUP();  
  }
  
  boolean setMove(int k, boolean b) {
    switch (k) {
    case UP:
      return isUp = b;
   
    case DOWN:
      return isDown = b;
   
    case LEFT:
      return isLeft = b;
   
    case RIGHT:
      return isRight = b;
    case TAB:
      return isFire = b;
   
    default:
      return b;
    }
}

}




class Game{  
  final int TITLE = 0;  
  final int PLAY = 1;
  final int PAUSE = 2;
  final int HIGHSCORE = 3; 
  final int OVER = 4;
  
  public boolean title, play, pause, highScore, over = false;
  public int state = 0;  
   
  void title(){    
    this.state = TITLE;
  }  
  
  void play(){   
    this.state = PLAY;
  }
  
  void pause(){   
    this.state = PAUSE;
  }
  
  void highScore(){   
    this.state = PLAY;
  }
    
  void over(){
    this.state = OVER;
  }
  
  void checkKey(int keyCode){
    if ( keyCode == ENTER && this.title ){
      this.play();  
      return;
     }
        
    if ( keyCode == ENTER && this.play){
        //this.lives -= 1;
        //menu
        return;
    }  
  
  if ( keyCode == ENTER && this.over){
      this.title();  
      return;
  }
  
  if(keyCode == 'p' || keyCode == 'P'){
    if(this.play)
    { 
      this.pause();
    }else if(this.pause){
      this.play();    
    }
  } 
  }
  
  void update(){
     this.title = false; 
     this.play = false; 
     this.pause = false; 
     this.highScore = false; 
     this.over = false;
   switch(this.state){
    case TITLE : 
        this.title= true;
        gameTitle(); 
        break;
        
    case PLAY : 
        this.play = true;
        gamePlay(); 
        break;
        
    case PAUSE :
        this.pause = true;
        gamePause(); 
        break;
        
    case OVER : 
        this.over = true;
        gameOver(); 
        break;
    }
  }
}









class videoMode{
  public int width;
  public int height;
  public int playingAreaWidht = 480;
  
  void window(){
    this.width = 640;
    this.height = 480;
  }
  
  void arduboyX1(){
    this.width = 128;
    this.height = 64;
  }
  
  void arduboyX2(){
    this.width = 256;
    this.height = 128;
  }
  
  void mode1x(){
    this.width = 256;
    this.height = 256;
  }
  
   void mode2x(){
    this.width = 640;
    this.height = 480;
  }
  
   void cho_ren_sha68k(){
    this.width = 256;
    this.height = 256;
  }
  
  void cho_ren_shaWin(){
    this.width = 640;
    this.height = 480;
    this.playingAreaWidht = 480;// center
    
    
    
  }
  
  
  
}
