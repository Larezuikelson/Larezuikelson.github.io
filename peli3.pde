float moveX; 
float moveY;
float buttonX; 
float buttonY; 
float buttonSizeX; 
float buttonSizeY;
float seed=0; 
boolean lost;
boolean pause;
PFont font;
float x;
float y;
float z;
float w;
float a;
float s;
float d;
float f;
float m;
float g;
float h;
float j;
float k;
PVector jep;
PVector location;
PVector velocity;  
PVector gravity; 
int score1;
int score2;
float speed;
float radius;  
                        color e;
Pelaaja pelaaja;
Palikka1 palikka1;
void setup() {
  size(1200,500);
  pelaaja=new Pelaaja();
  palikka1=new Palikka1();
font= loadFont("SNAP8.vlw");
  textFont(font);
    score1 = 0;
    score2=0;
    pause=false;
    e=0;
}
class Palikka1{
  Palikka1(){
    x=width;
    speed=-4;
    y=width+350;
    z=width+700;
    w=width+1050;
    a=300;
    
    d=490;
    
    s=300;
   
    f=490;
   
  }
      void move(){
             
      x=x+speed;
      if(x<-25){
       x=width;
       a=300+random(-150,150);
     }
     y=y+speed;
     if(y<-25){
       y=width;
       f=490+random(-150,150);
     }
     z=z+speed;
     if(z<-25){
       z=width;
       s=300+random(-150,150);
     }
     w=w+speed;
     if(w<-25){
       w=width;
       d=300+random(-150,150);
     }
  stroke(0);
  strokeWeight(2);

 fill(#0C9803);
  rect(x, a+100,80,700);
  rect(y,f+100,80,700);
  rect(w,d+100,80,700);
  rect(z,s+100,80,700);
  rect(x+80,a-100,-80,-700);
  rect(y+80,f-100,-80,-700);
  rect(w+80,d-100,-80,-700);
  rect(z+80,s-100,-80,-700 );
        rect(x-10, a+90,100,10);
        rect(y-10,f+90,100,10);
        rect(w-10,d+90,100,10);
        rect(z-10,s+90,100,10);
        rect(x-10,a-110,100,10);
        rect(y-10,f-110,100,10);
        rect(w-10,d-110,100,10);
        rect(z-10,s-110,100,10 );
        
        
  fill(#2C48CE);

}

}
  class Pelaaja{
    Pelaaja(){
      location = new PVector(300,1);
  velocity = new PVector(0,0.02);
  gravity = new PVector(0,1);
  radius=50;
  g=100;
  h=600;
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
   location.x=-0;
    location.y=height+30;
    m=0;
    speed=0;
    g=width/2-100;
    j=width/2-125;
    k=40;
     fill(0);
     textSize(100);
     text("Game Over", 370, 150);
     strokeWeight(2);
     fill(#1BE334);
     rect(605, height/2, 160, 50);
     fill(255);
     rect(610, height/2+5, 150, 40);      
     fill(0);
           textSize(23);
     text("Play Again",615, height/2+35);
       textSize(40);
     if ((605< mouseX && mouseX < 765) && (height/2-25 < mouseY && mouseY < height/2+50) && mousePressed && lost) { 
    reset();
    textSize(40);
  }
  fill(255,0,0);
  rect(605, height/2+100, 160, 50);
        fill(255);
        rect(610, height/2+105, 150, 40);   
        fill(0);
        textSize(27);
        text("Guit",648, height/2+135);
        textSize(40);
       if ((605< mouseX && mouseX < 765) && (height/2+100-25 < mouseY && mouseY < height/2+100+50) && mousePressed && lost) { 
    System.exit(1);
  }
 if(keyPressed){
   reset();
 }
 }

   
  }
void draw() {
   background(#2C48CE);       

  


   
    noStroke();
  fill(#3FBCE8,40);
   tausta(0,0); 
   tausta(700,0);
   fill(255,255,255);
   pilvi(200, 300);
   pilvi(400, 500);
   pilvi(450, 250);
   pilvi(100, 100);
   pilvi(120, 600);
   pilvi(520, 100);
         pilvi(800, 300);
         pilvi(1000, 500);
         pilvi(1050, 250);
         pilvi(700, 450);
         pilvi(900, 100);
         pilvi(720, 600);
         pilvi(1120, 100);
  stroke(2);
  noStroke();
  fill(#27DE1B);
  ruoho(0,height-70);
  ruoho(200,height-70);
  ruoho(400,height-70);
  ruoho(600,height-70);
  ruoho(800,height-70);
  ruoho(1000,height-70);
  ruoho(1200,height-70);
  ruoho(1400,height-70);
  ruoho(1600,height-70);
  ruoho(1800,height-70);
  ruoho(2000,height-70);
  
  stroke(0);

  noStroke();
  fill(#27DE1B);
  ruoho(0,height-70);
  ruoho(200,height-70);
  ruoho(400,height-70);
  ruoho(600,height-70);
  ruoho(800,height-70);
  ruoho(1000,height-70);
  ruoho(1200,height-70);
  ruoho(1400,height-70);
  ruoho(1600,height-70);
  ruoho(1800,height-70);
  ruoho(2000,height-70);
  rect(0, height-70, width, 10);
  fill(#743A16);
  rect(0, height-60, width, 60);
  fill(#C65108);
  maa(0);
  maa(80);
  maa(160);
  maa(240);
  maa(320);
  maa(400);
  maa(480);
  maa(560);
  maa(640);
  maa(720);
  maa(800);
  maa(880);
  maa(960);
  maa(1040);
  maa(1120);
  maa(1200);
  maa(1280);
  
  stroke(0);
palikka1.move();
pelaaja.liike();
pelaaja.show();
fill(0);
   stroke(0,0,0,e);
                             fill(150,0,0,e);
                            rect(535, height/2-30, 300, 200 );
                           fill(255, 255, 0,e);
                              ellipse(535, height/2-30, radius, radius);
                               fill(255,255,255,e);
                              ellipse(535-9, height/2-30-2, 14, 14);
                              ellipse(535+9, height/2-30-2, 14, 14);
                              fill(0,0,0,e);
                              ellipse(535-9, height/2-30-2, 8, 8);
                              ellipse(535+9, height/2-30-2, 8, 8);
                              fill(#F56F6F,e);
                              triangle(535-8, height/2-30+6, 535, height/2-30-2, 535+8, height/2-30+6);
                              fill(#644646,e);
                              ellipse(535,height/2-30+8, 18, 5);
                                 fill(255, 255, 0,e);
                                ellipse(535+300, height/2-30, radius, radius);
                                 fill(255,255,255,e);
                                ellipse(535+300-9, height/2-30-2, 14, 14);
                                ellipse(535+300+9, height/2-30-2, 14, 14);
                                fill(0,0,0,e);
                                ellipse(535+300-9, height/2-30-2, 8, 8);
                                ellipse(535+300+9, height/2-30-2, 8, 8);
                                fill(#F56F6F,e);
                                triangle(535+300-8, height/2-30+6, 535+300, height/2-30-2, 535+300+8, height/2-30+6);
                                fill(#644646,e);
                                ellipse(535+300,height/2-30+8, 18, 5);
                                   fill(255, 255, 0,e);
                                  ellipse(535+300, height/2-30+200, radius, radius);
                                   fill(255,255,255,e);
                                  ellipse(535+300-9, height/2-30-2+200, 14, 14);
                                  ellipse(535+300+9, height/2-30-2+200, 14, 14);
                                  fill(0,0,0,e);
                                  ellipse(535+300-9, height/2-30-2+200, 8, 8);
                                  ellipse(535+300+9, height/2-30-2+200, 8, 8);
                                  fill(#F56F6F,e);
                                  triangle(535+300-8, height/2-30+6+200, 535+300, height/2-30-2+200, 535+300+8, height/2-30+6+200);
                                  fill(#644646,e);
                                  ellipse(535+300,height/2-30+8+200, 18, 5);
                                    fill(255, 255, 0,e);
                                    ellipse(535, height/2-30+200, radius, radius);
                                     fill(255,255,255,e);
                                    ellipse(535-9, height/2-30-2+200, 14, 14);
                                    ellipse(535+9, height/2-30-2+200, 14, 14);
                                    fill(0,0,0,e);
                                    ellipse(535-9, height/2-30-2+200, 8, 8);
                                    ellipse(535+9, height/2-30-2+200, 8, 8);
                                    fill(#F56F6F,e);
                                    triangle(535-8, height/2-30+6+200, 535, height/2-30-2+200, 535+8, height/2-30+6+200);
                                    fill(#644646,e);
                                    ellipse(535,height/2-30+8+200, 18, 5);
                                    fill(0,0,0,e);
                                    text("Press any key", 580, height/2+45);
                                    text("to", 670, height/2+75);
                                    textSize(45);
                                    text("CONTINUE", 570, height/2+115);
}

void keyPressed(){
   if (keyCode==48) { 
         pause=true;
        velocity = new PVector(0,0);
  gravity = new PVector(0,0);
speed=0; 
m=0;
strokeWeight(2);
e=255;
  

   }
      if (keyPressed&&(pause==true)&&keyCode!=48) { 
takaisin();
   }

   
 if (keyCode == 32){
   velocity.y =m; 
    m=-12;
     

  }
  if (keyCode == UP){
   velocity.y =m; 
    m=-12;
     

  }
  if (keyCode == 87){
   velocity.y =m; 
    m=-12;
  }   

}
 void reset() {
   location = new PVector(300,1);
  velocity = new PVector(0,0.02);
  gravity = new PVector(0,1);
 x=width;
    speed=-4;
    y=width+350;
    z=width+700;
    w=width+1050;
  m=-12;
score1=0;
g=100;
h=600;
j=100;
k=30;
  lost = false;

}
void metodi(float x, float y){
    rect(x,y, 75, 75);
  rect(x+75,y, 75, 75);
  rect(x,y+75, 75, 75);
  rect(x+75,y+75, 75, 75);
 
}
void ruoho(float x, float y){
  triangle(x,y, x+9, y-20, x+10,y);
  triangle(x+10,y, x+19, y-20, x+20,y);
  triangle(x+20,y, x+29, y-20, x+30,y);
  triangle(x+30,y, x+39, y-20, x+40,y);
  triangle(x+40,y, x+49, y-20, x+50,y);
  triangle(x+50,y, x+59, y-20, x+60,y);
  triangle(x+60,y, x+69, y-20, x+70,y);
  triangle(x+70,y, x+79, y-20, x+80,y);
  triangle(x+80,y, x+89, y-20, x+90,y);
  triangle(x+90,y, x+99, y-20, x+100,y);
  triangle(x+100,y, x+109, y-20, x+110,y);
  triangle(x+110,y, x+119, y-20, x+120,y);
  triangle(x+120,y, x+129, y-20, x+130,y);
  triangle(x+130,y, x+139, y-20, x+140,y);
  triangle(x+140,y, x+149, y-20, x+150,y);
  triangle(x+150,y, x+159, y-20, x+160,y);
  triangle(x+160,y, x+169, y-20, x+170,y);
  triangle(x+170,y, x+179, y-20, x+180,y);
  triangle(x+180,y, x+189, y-20, x+190,y);
  triangle(x+190,y, x+199, y-20, x+200,y);
}
void maa(float x){
  rect(x+20, height-50, 10, 10);
  rect(x+20, height-35, 10, 10);
  rect(x+40, height-50, 30, 40);
  rect(x+10, height-35, 20, 30);
}
void tausta(float x, float y){
  rect(x+600,600,80,600);
    rect(x+595, y+590, 90,10);
    rect(x+450,y+400,80,600);
    rect(x+445, y+390, 90,10);
    rect(x+300,y+450,80,600);
    rect(x+295, y+440, 90,10);
    rect(x+150,y+200,80,600);
    rect(x+145, y+190, 90,10);
    rect(x+0,y+450,80,600);
    rect(x-5, y+440, 90,10);
              rect(x+600,y+0,80,height-300);
              rect(x+595, y+height-300, 90,10);
              rect(x+450,y+0,80,height-500);
              rect(x+445, y+height-500, 90,10);
              rect(x+300,y+0,80,height-450);
              rect(x+295, y+height-450, 90,10);
              rect(x+150,y+0,80,height-700);
              rect(x+145,y+height-700, 90,10);
              rect(x+0,y+0,80,height-450);
              rect(x-5, y+height-450, 90,10);
}
void pilvi (float x,float y){
  noStroke();
  ellipse(x, y, 50, 50);
  ellipse(x+35, y-15, 50,50);
  ellipse(x+70, y-15, 50, 50);
  ellipse(x+105, y, 50, 50);
  ellipse(x+35, y+10,50,50);
  ellipse(x+70, y+10,50,50);
} 
void takaisin(){
  e=0;
    velocity = new PVector(0,0.02);
  gravity = new PVector(0,1);
speed=-4; 
m=-12;
pause=false;
}

  
