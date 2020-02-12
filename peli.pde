class Pelaaja{
    Pelaaja(){
      location = new PVector(300,1);
  velocity = new PVector(0,0.02);
  gravity = new PVector(0,1);
  radius=50;
    g=100;
  h=500;
  j=100;
  k=30;
    }
    void liike(){
      fill(0);
      textSize(k);
  text("Points: " + score1 , g, h-10);
  tarkistatormays();
  text("Points: " + score1 , g, h-10);

text("Highscore: " + score2 , j, h+25);
text("Highscore: " + score2 , j, h+25);
              if(score1>score2){
                   score2=score1;
             }
         
  
  location.add(velocity);
  
  velocity.add(gravity);
  
 

  if (location.y < 35){
    location.y=35;
  }


 location.x=400;
    if (location.y > height+25){
    lost=true;
    gameOver();
   }
 if ((location.y > a+100-radius/2) && (location.x < x+80+radius/2)&& (location.x > x-radius/2)){
      
      gameOver();
  }
   if ((location.y > f+100-radius/2) && (location.x < y+80+radius/2)&& (location.x > y-radius/2)){
     
      gameOver();
  }
   if ((location.y > d+100-radius/2) && (location.x < w+80+radius/2)&& (location.x > w-radius/2)){
     
      gameOver();
  }
   if ((location.y > s+100-radius/2) && (location.x < z+80+radius/2)&& (location.x > z-radius/2)){
     
      gameOver();
  }
   if ((location.y < a-100+radius/2) && (location.x < x+80+radius/2)&& (location.x > x-radius/2)){
     
      gameOver();
  }
     if ((location.y < f-100+radius/2) && (location.x < y+80+radius/2)&& (location.x > y-radius/2)){
     
      gameOver();
  }
     if ((location.y < d-100+radius/2) && (location.x < w+80+radius/2)&& (location.x > w-radius/2)){
     
      gameOver();
  }
     if ((location.y < s-100+radius/2) && (location.x < z+80+radius/2)&& (location.x > z-radius/2)){
     
      gameOver();
  }
               
  stroke(0);
  strokeWeight(2);
  
}
 void show(){
    fill(255, 255, 0);
    ellipse(location.x, location.y, radius, radius);
     fill(255);
    ellipse(location.x-9, location.y-2, 14, 14);
    ellipse(location.x+9, location.y-2, 14, 14);
    fill(0);
    ellipse(location.x-9, location.y-2, 8, 8);
    ellipse(location.x+9, location.y-2, 8, 8);
    fill(#F56F6F);
    triangle(location.x-8, location.y+6, location.x, location.y-2, location.x+8, location.y+6);
    fill(#644646);
    ellipse(location.x, location.y+8, 18, 5);


 }
void tarkistatormays(){
  if ((location.x > x+75)&& (location.x < x+80)&&(location.y<a+100)&&(location.y>a-100)){
                  
                  score1++;
              }
                if ((location.x > y+75)&& (location.x < y+80)&&(location.y<f+100)&&(location.y>f-100)){
                  
                  score1++;
              }
              if ((location.x > w+75)&& (location.x < w+80)&&(location.y<d+100)&&(location.y>d-100)){
                  
                  score1++;
              }
              if ((location.x > z+75)&& (location.x < z+80)&&(location.y<s+100)&&(location.y>s-100)){
                  
                  score1++;
              }
              
  
}
  void gameOver(){
  lost=true;
  fill(150);
  rect(535, height/2-30, 300, 200 );
 fill(255, 255, 0);
    ellipse(535, height/2-30, radius, radius);
     fill(255);
    ellipse(535-9, height/2-30-2, 14, 14);
    ellipse(535+9, height/2-30-2, 14, 14);
    fill(0);
    ellipse(535-9, height/2-30-2, 8, 8);
    ellipse(535+9, height/2-30-2, 8, 8);
    fill(#F56F6F);
    triangle(535-8, height/2-30+6, 535, height/2-30-2, 535+8, height/2-30+6);
    fill(#644646);
    ellipse(535,height/2-30+8, 18, 5);
       fill(255, 255, 0);
      ellipse(535+300, height/2-30, radius, radius);
       fill(255);
      ellipse(535+300-9, height/2-30-2, 14, 14);
      ellipse(535+300+9, height/2-30-2, 14, 14);
      fill(0);
      ellipse(535+300-9, height/2-30-2, 8, 8);
      ellipse(535+300+9, height/2-30-2, 8, 8);
      fill(#F56F6F);
      triangle(535+300-8, height/2-30+6, 535+300, height/2-30-2, 535+300+8, height/2-30+6);
      fill(#644646);
      ellipse(535+300,height/2-30+8, 18, 5);
         fill(255, 255, 0);
        ellipse(535+300, height/2-30+200, radius, radius);
         fill(255);
        ellipse(535+300-9, height/2-30-2+200, 14, 14);
        ellipse(535+300+9, height/2-30-2+200, 14, 14);
        fill(0);
        ellipse(535+300-9, height/2-30-2+200, 8, 8);
        ellipse(535+300+9, height/2-30-2+200, 8, 8);
        fill(#F56F6F);
        triangle(535+300-8, height/2-30+6+200, 535+300, height/2-30-2+200, 535+300+8, height/2-30+6+200);
        fill(#644646);
        ellipse(535+300,height/2-30+8+200, 18, 5);
          fill(255, 255, 0);
          ellipse(535, height/2-30+200, radius, radius);
           fill(255);
          ellipse(535-9, height/2-30-2+200, 14, 14);
          ellipse(535+9, height/2-30-2+200, 14, 14);
          fill(0);
          ellipse(535-9, height/2-30-2+200, 8, 8);
          ellipse(535+9, height/2-30-2+200, 8, 8);
          fill(#F56F6F);
          triangle(535-8, height/2-30+6+200, 535, height/2-30-2+200, 535+8, height/2-30+6+200);
          fill(#644646);
          ellipse(535,height/2-30+8+200, 18, 5);
   location.x=-0;
    location.y=height+30;
    m=0;
    g=width/2-80;
    j=width/2-105;
    k=40;
  nopeus=0;
    speed=0;
    h=420;
    fill(0);
            textSize(k);
  text("Points: " + score1 , g+15, h-10);
text("Highscore: " + score2 , j, h+25);
     fill(0);
     textSize(100);
     text("Game Over", 430, 150);
     strokeWeight(2);
     fill(#1BE334);
     rect(605, height/2, 160, 50);
     fill(255);
     rect(610, height/2+5, 150, 40);      
     fill(0);
   strokeWeight(30);
           textSize(30);
     text("Play Again",612, height/2+36);
   strokeWeight(2);
       textSize(40);
     if ((605< mouseX && mouseX < 765) && (height/2-25 < mouseY && mouseY < height/2+50) && mousePressed && lost) { 
    reset();
    textSize(40);
  }
  
 if(keyPressed&&(lost==true)){
   reset();
 }
 if((keyCode==48)&&(lost==true)){
            pause=true;
        velocity = new PVector(0,0);
  gravity = new PVector(0,0);
speed=0; 
  nopeus=0;
    speed=0;
m=0;
reset();
 }
 if (keyPressed&&(pause==true)&&keyCode!=48) { 
takaisin();
 }
 }

   
  }
