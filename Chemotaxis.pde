 //declare bacteria variables here
 Fish school[] =new Fish[2];
 void setup()   
 { 
   frameRate(15);
   size(400,400);   
   //initialize bacteria variables here 
     for(int i = 0; i<school.length-1;i++){
    school[i] = new Fish();
  }
 }   
 void draw()   
 { 
   background(0);
   //move and show the bacteria
   for(int i = 0; i<school.length-1;i++)
   {
     school[i].move();
     school[i].show();
   }
 }  
class Fish
{
  float fishMX;
  float fishMY;
  float fishX;
  float fishY;
  Fish()
  {
    fishMX=(float)(Math.random()*0.01)-0.005;
    fishMY=(float)(Math.random()*0.01)-0.005;
  }
  void move()
  {

    fishX=(int)(Math.random()*400);
    fishY=(int)(Math.random()*400);
    fishX=fishX+fishMX;
    fishY=200;
  }
  
    void show()
    {
            if(fishMX>0){
                  int[][] pix = 
                  {
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,3,3,3,4,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,5,5,5,5,5,4,4,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,6,6,6,6,5,5,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,7,6,5,5,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,7,5,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,7,5,0,0,0,0,0,0,4,4,4,4,0},
                          {0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,7,5,0,0,0,2,5,4,4,4,4,0},
                          {0,0,0,0,0,0,2,15,15,15,2,2,2,2,2,2,2,2,2,2,2,2,2,7,8,2,2,2,5,5,4,4,4,0,0},
                          {0,0,0,0,0,2,15,1,16,14,14,14,14,2,2,2,2,2,2,2,2,2,7,7,9,10,8,8,8,4,4,4,4,0,0},
                          {0,0,0,0,0,2,15,1,1,14,14,14,2,2,2,2,2,2,2,2,2,2,2,7,7,7,7,7,8,5,4,4,4,0,0},
                          {0,0,0,0,0,2,15,14,14,14,14,14,7,8,8,8,5,5,5,5,11,11,7,7,7,11,11,12,5,5,5,4,0,0,0},
                          {0,0,0,0,2,2,14,14,14,2,2,7,7,7,5,5,5,5,5,11,11,11,11,7,7,11,11,12,0,5,5,4,0,0,0},
                          {0,0,0,2,2,15,14,14,2,2,2,17,7,5,5,5,13,11,11,11,11,11,11,11,11,11,11,12,0,0,5,5,0,0,0},
                          {0,0,2,2,2,15,15,12,14,14,14,7,5,13,13,13,13,13,11,11,11,11,11,7,7,11,12,0,0,0,0,5,0,0,0},
                          {0,0,0,15,15,15,15,12,12,12,14,14,5,13,13,13,13,11,11,11,11,11,7,7,7,12,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,12,12,12,12,12,12,12,13,13,13,13,11,11,11,8,7,7,7,12,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,12,12,12,12,12,12,13,13,13,7,7,8,8,8,8,12,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,12,12,12,11,11,11,11,11,11,0,0,0,0,12,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  };
                  color color1 = color(0, 0, 0);
                  color color2 = color(253, 240, 3);
                  color color3 = color(218, 236, 0);
                  color color4 = color(117, 186, 17);
                  color color5 = color(192, 201, 0);
                  color color6 = color(173, 128, 1);
                  color color7 = color(197, 118, 17);
                  color color8 = color(231, 154, 26);
                  color color9 = color(218, 88, 2);
                  color color10 = color(234, 224, 214);
                  color color11 = color(172, 158, 7);
                  color color12 = color(102, 95, 0);
                  color color13 = color(121, 129, 0);
                  color color14 =color(167, 187, 2);
                  color color15 =color(198, 156, 18);
                  color color16 =color(255, 255, 255);
                  color color17 =color(218, 176, 160);
                  int w=1;
                  int h=w;
                  int a=0;
                  for(int p = 0; p < pix.length; p += 1)
                  {
                      for (int i = 0; i < pix[p].length ; i += 1)
                      { 
                          if(pix[p][i] == 1)
                          {
                              fill(color1);
                              stroke(color1);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 2)
                          {
                              fill(color2);
                              stroke(color2);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 3)
                          {
                              fill(color3);
                              stroke(color3);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 4)
                          {
                              fill(color4);
                              stroke(color4);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 5)
                          {
                              fill(color5);
                              stroke(color5);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 6)
                          {
                              fill(color6);
                              stroke(color6);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 7)
                          {
                              fill(color7);
                              stroke(color7);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 8)
                          {
                              fill(color8);
                              stroke(color8);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 9)
                          {
                              fill(color9);
                              stroke(color9);
                              rect(i + fishX+a, fishY, w, h);
                          }           
                          if(pix[p][i] == 10)
                          {
                              fill(color10);
                              stroke(color10);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 11)
                          {
                              fill(color11);
                              stroke(color11);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 12)
                          {
                              fill(color12);
                              stroke(color12);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 13)
                          {
                              fill(color13);
                              stroke(color13);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 14)
                          {
                              fill(color14);
                              stroke(color14);
                              rect(i + fishX+a, fishY, w, h);
                          }
                           if(pix[p][i] == 15)
                          {
                              fill(color15);
                              stroke(color15);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 16)
                          {
                              fill(color16);
                              stroke(color16);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 17)
                          {
                              fill(color17);
                              stroke(color17);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          a += w;//makes pix equally distant
                      }
                      fishY += h+1;//makes //makes pix equally distant
                      a =0;//makes it so that every row is not always ongoing based on "a" value from "a += w"
                  }
    }if(fishMX<0)
    {                  int[][] pix = 
                  {
                           {0,0,0,0,0,0,0,0,0,0,0,0,4,3,3,3,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,4,4,5,5,5,5,5,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,5,5,6,6,6,6,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,5,5,6,7,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,5,7,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0},
                {0,4,4,4,4,0,0,0,0,0,0,5,7,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0},
                {0,4,4,4,4,5,2,0,0,0,5,7,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0},
                {0,0,4,4,4,5,5,2,2,2,8,7,2,2,2,2,2,2,2,2,2,2,2,2,2,15,15,15,2,0,0,0,0,0,0},
                {0,0,4,4,4,4,8,8,8,10,9,7,7,2,2,2,2,2,2,2,2,2,14,14,14,14,16,1,15,2,0,0,0,0,0},
                {0,0,4,4,4,5,8,7,7,7,7,7,2,2,2,2,2,2,2,2,2,2,2,14,14,14,1,1,15,2,0,0,0,0,0},
                {0,0,0,4,5,5,5,12,11,11,7,7,7,11,11,5,5,5,5,8,8,8,7,14,14,14,14,14,15,2,0,0,0,0,0},
                {0,0,0,4,5,5,0,12,11,11,7,7,11,11,11,11,5,5,5,5,5,7,7,7,2,2,14,14,14,2,2,0,0,0,0},
                {0,0,0,5,5,0,0,12,11,11,11,11,11,11,11,11,11,11,13,5,5,5,7,17,2,2,2,14,14,15,2,2,0,0,0},
                {0,0,0,5,0,0,0,0,12,11,7,7,11,11,11,11,11,13,13,13,13,13,5,7,14,14,14,12,15,15,2,2,2,0,0},
                {0,0,0,0,0,0,0,0,0,12,7,7,7,11,11,11,11,11,13,13,13,13,5,14,14,12,12,12,15,15,15,15,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,12,8,8,8,8,7,7,13,13,13,12,12,12,12,12,12,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,12,0,0,0,0,11,11,11,11,11,11,12,12,12,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
                  };
                  color color1 = color(0, 0, 0);
                  color color2 = color(253, 240, 3);
                  color color3 = color(218, 236, 0);
                  color color4 = color(117, 186, 17);
                  color color5 = color(192, 201, 0);
                  color color6 = color(173, 128, 1);
                  color color7 = color(197, 118, 17);
                  color color8 = color(231, 154, 26);
                  color color9 = color(218, 88, 2);
                  color color10 = color(234, 224, 214);
                  color color11 = color(172, 158, 7);
                  color color12 = color(102, 95, 0);
                  color color13 = color(121, 129, 0);
                  color color14 =color(167, 187, 2);
                  color color15 =color(198, 156, 18);
                  color color16 =color(255, 255, 255);
                  color color17 =color(218, 176, 160);
                  int w=1;
                  int h=w;
                  int a=0;
                  for(int p = 0; p < pix.length; p += 1)
                  {
                      for (int i = 0; i < pix[p].length ; i += 1)
                      { 
                          if(pix[p][i] == 1)
                          {
                              fill(color1);
                              stroke(color1);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 2)
                          {
                              fill(color2);
                              stroke(color2);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 3)
                          {
                              fill(color3);
                              stroke(color3);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 4)
                          {
                              fill(color4);
                              stroke(color4);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 5)
                          {
                              fill(color5);
                              stroke(color5);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 6)
                          {
                              fill(color6);
                              stroke(color6);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 7)
                          {
                              fill(color7);
                              stroke(color7);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 8)
                          {
                              fill(color8);
                              stroke(color8);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 9)
                          {
                              fill(color9);
                              stroke(color9);
                              rect(i + fishX+a, fishY, w, h);
                          }           
                          if(pix[p][i] == 10)
                          {
                              fill(color10);
                              stroke(color10);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 11)
                          {
                              fill(color11);
                              stroke(color11);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 12)
                          {
                              fill(color12);
                              stroke(color12);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 13)
                          {
                              fill(color13);
                              stroke(color13);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 14)
                          {
                              fill(color14);
                              stroke(color14);
                              rect(i + fishX+a, fishY, w, h);
                          }
                           if(pix[p][i] == 15)
                          {
                              fill(color15);
                              stroke(color15);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 16)
                          {
                              fill(color16);
                              stroke(color16);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          if(pix[p][i] == 17)
                          {
                              fill(color17);
                              stroke(color17);
                              rect(i + fishX+a, fishY, w, h);
                          }
                          a += w;//makes pix equally distant
                      }
                      fishY += h+1;//makes //makes pix equally distant
                      a =0;//makes it so that every row is not always ongoing based on "a" value from "a += w"
                  }
    
    
    
    }
    }}
