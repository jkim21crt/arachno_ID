PImage intro;
PImage instruction;
PImage main;
PImage leg;
PImage body;
PImage sizePanel;
PImage unique;
PImage compile;
PImage id;
PImage bio;


int counter = 0;
//Number variables
int count = 0;
int phase = 0;
int legs = 0;
int bod = 0;
int sizes = 0;
int uniq = 0;

int leg1 = 0;
int leg2 = 0;
int leg3 = 0;
int body1 = 0;
int body2 = 0;
int body3 = 0;
int body4 = 0;
int body5 = 0;
int body6 = 0;
int size1 = 0;
int size2 = 0;
int size3 = 0;
int unique1 = 0;
int unique2 = 0;
int unique3 = 0;
int unique4 = 0;
int unique5 = 0;
int unique6 = 0;
int charge = 40;

void setup(){
  
  size(615,1050);
  background(0);
  noStroke();
  intro = loadImage("intro.png");
  instruction = loadImage("instruction.png");
  main = loadImage("main.png");
  leg = loadImage("leg.png");
  body = loadImage("body.png");
  sizePanel = loadImage("size.png");
  unique = loadImage("unique.png");
  compile = loadImage("compile.png");
  id = loadImage("id.png");
  bio = loadImage("bio.png");
}

void draw(){
  
  if(counter<charge){
  counter++;
  }
  if(phase == 0){
 image(intro,0,0);
 count++;
 
       if(count==1000)
       {
         count = 0;
          phase = 1; 
       }
       else if(mousePressed)
       {
        count = 0; 
        phase = 1;
       
       }
  
  }
   
  
  
  if(phase == 1){
    mainMenu();
   }
 
  if(phase ==2)
  {
   legscreen(); 
  }
  
  if(phase == 3)
  {
   bodyscreen(); 
  }
  
  if(phase == 4)
  {
   sizescreen(); 
  }
  
  if(phase == 5)
  {
   uniquescreen(); 
  }
 
 if(phase == 6)
 {
   image(bio,0,0);
   identify();
 }
 
  
}

void clean(){
  
phase = 1;
legs = 0;
bod = 0;
sizes = 0;
uniq = 0;
leg1 = 0;
leg2 = 0;
leg3 = 0;
body1 = 0;
body2 = 0;
body3 = 0;
body4 = 0;
body5 = 0;
body6 = 0;
size1 = 0;
size2 = 0;
size3 = 0;
unique1 = 0;
unique2 = 0;
unique3 = 0;
unique4 = 0;
unique5 = 0;
unique6 = 0; 
 //everyback to normal 
}

void mainMenu(){
 image(main,0,0);
 if(legs == 0 && bod == 0 && sizes==0 && uniq == 0){
   image(instruction,0,0);
 }
 else
 {
  image(compile,0,0);
 }
 
if(legs == 1 && bod == 1 && sizes == 1 && uniq == 1){
  image(id,0,0);
  
  
}
 
   if(mousePressed && counter == charge){
     counter = 0;
   
   if(mouseX> 470 && mouseX<570 && mouseY>45 && mouseY<155){
      
     clean();
   }
   
   if(mouseX> 450 && mouseX<575 && mouseY>200 && mouseY<460){
    phase = 6; 
   }
     
     
    if(mouseX> 25 && mouseX<425 && mouseY>500 && mouseY<610){
   
     phase = 2;
     legs = 1; // for the toggle ellipse
    }
    
      if(mouseX>25 && mouseX<425 && mouseY>625 && mouseY<735){
     
     phase = 3;
     bod = 1; 
    }
    
    
     if(mouseX>25 && mouseX<425 && mouseY>760 && mouseY<870){

     phase = 4;
     sizes = 1; 
    }
    
     if(mouseX>25 && mouseX<425 && mouseY>900 && mouseY<1010){

     phase = 5;
     uniq = 1; 
    }
   }
   
   if(legs==1)
   {
     fill(255,234,12);
     ellipse(536,564,25,25);
   }
   
   if(bod ==1)
   {
     fill(255,234,12);
     ellipse(537,692,25,25);
   }
   
   if(sizes ==1)
   {
     fill(255,234,12);
     ellipse(537,826,25,25);
   }
   
   if(uniq ==1)
   {
     fill(255,234,12);
     ellipse(537,954,25,25);
   }
   
}

          
void legscreen(){                                                                            ////LEGS
 image(leg,0,0);
 
 if(mousePressed && counter == charge){
  counter = 0;
  
  if(mouseX>210 && mouseX<410 && mouseY>260 && mouseY<465)
  {
    phase =1;
   leg1 = 1; 
   leg2 = 0;
   leg3 = 0;
  }
  
  if(mouseX>210 && mouseX<410 && mouseY>495 && mouseY<695)
  {
    phase =1;
   leg1 = 0;
   leg2 = 1;
   leg3 = 0; 
  }
  
  if(mouseX>210 && mouseX<410 && mouseY>720 && mouseY<920)
  {
    phase =1;
   leg1 = 0;
   leg2 = 0;
   leg3 = 1; 
  }
 }
}

void bodyscreen(){                                                                        /// BODY
 image(body,0,0);
 
 if(mousePressed && counter == charge){
  counter = 0;
 if(mouseX>80 && mouseX<280 && mouseY>265 && mouseY<465) //1
  {
    phase = 1;
    body1 = 1; 
    body2 = 0;
    body3 = 0;
    body4 = 0; 
    body5 = 0;
    body6 = 0;
  }
  
  if(mouseX>335 && mouseX<535 && mouseY>265 && mouseY<465)  //2 (right column)
  {
    phase = 1;
    body1 = 0; 
    body2 = 1;
    body3 = 0;
    body4 = 0; 
    body5 = 0;
    body6 = 0;
  }
  
  if(mouseX>80 && mouseX<280 && mouseY>495 && mouseY<695)
  {
    phase = 1;
    body1 = 0; 
    body2 = 0;
    body3 = 1;
    body4 = 0; 
    body5 = 0;
    body6 = 0; 
  }
  
  if(mouseX>335 && mouseX<535 && mouseY>495 && mouseY<695)
  {
    phase =1;
    body1 = 0; 
    body2 = 0;
    body3 = 0;
    body4 = 1; 
    body5 = 0;
    body6 = 0;
  }
  
  if(mouseX>80 && mouseX<280 && mouseY>720 && mouseY<920)
  {
    phase =1;
    body1 = 0; 
    body2 = 0;
    body3 = 0;
    body4 = 0; 
    body5 = 1;
    body6 = 0; 
  }
  
  if(mouseX>335 && mouseX<535 && mouseY>720 && mouseY<920)
  {
    phase =1;
    body1 = 0; 
    body2 = 0;
    body3 = 0;
    body4 = 0; 
    body5 = 0;
    body6 = 1; 
  }
}
}

void sizescreen(){                                           // SIZE
 
 image(sizePanel,0,0);

if(mousePressed && counter == charge){
  counter = 0;
  
  if(mouseX>300 && mouseX<500 && mouseY>260 && mouseY<465)
  {
    phase =1;
   size1 = 1;
   size2 = 0;
   size3 = 0; 
  }
  
  if(mouseX>300 && mouseX<500 && mouseY>495 && mouseY<695)
  {
    phase =1;
    size1 = 0;
    size2 = 1;
    size3 = 0; 
  }
  
  if(mouseX>300 && mouseX<500 && mouseY>720 && mouseY<920)
  {
    phase =1;
   size1 = 0;
   size2 = 0;
   size3 = 1; 
  }
 
 
}

}


void uniquescreen(){                                                                    // UNIQUE

 image(unique,0,0);
 
 if(mousePressed && counter == charge){
  counter = 0;
 
if(mouseX>70 && mouseX<270 && mouseY>265 && mouseY<465) //1
  {
    phase = 1;
     unique1 = 1;
     unique2 = 0;
     unique3 = 0;
     unique4 = 0; 
     unique5 = 0;
     unique6 = 0;  
  }
  
  if(mouseX>330 && mouseX<530 && mouseY>265 && mouseY<465)  //2 (right column)
  {
    phase = 1;
     unique1 = 0;
     unique2 = 1;
     unique3 = 0;
     unique4 = 0; 
     unique5 = 0;
     unique6 = 0;  
  }
  
  if(mouseX>70 && mouseX<270 && mouseY>495 && mouseY<695)
  {
    phase = 1;
     unique1 = 0;
     unique2 = 0;
     unique3 = 1;
     unique4 = 0; 
     unique5 = 0;
     unique6 = 0;
  }
  
  if(mouseX>330 && mouseX<530 && mouseY>495 && mouseY<695)
  {
    phase =1;
    unique1 = 0;
     unique2 = 0;
     unique3 = 0;
     unique4 = 1; 
     unique5 = 0;
     unique6 = 0; 
  }
  
  if(mouseX>70 && mouseX<270 && mouseY>720 && mouseY<920)
  {
    phase =1;
     unique1 = 0;
     unique2 = 0;
     unique3 = 0;
     unique4 = 0; 
     unique5 = 1;
     unique6 = 0; 
  }
  
  if(mouseX>330 && mouseX<530 && mouseY>720 && mouseY<920)
  {
    phase =1;
     unique1 = 0;
     unique2 = 0;
     unique3 = 0;
     unique4 = 0; 
     unique5 = 0;
     unique6 = 1;
  }
  
 }
  
}


void identify(){
  
  if(mousePressed && counter == charge){
  counter = 0;
  if(mouseX> 470 && mouseX<570 && mouseY>45 && mouseY<155){
      
     clean();
   }
  }
  
  
 if(leg1 ==1 && body1 ==1 && size1 ==1 && unique1 ==1)
{
 //spider image
} 

if(leg1 ==1 && body1 ==1 && size1 ==1 && unique1 ==1)
{
 //spider image
} 



}
