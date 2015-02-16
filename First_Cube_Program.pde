//This program has multiple capabilities, some of which are changing colors
//from black to red, blue, or other colors using the sine function.

//location just got x,y,z properties from the below parameters
PVector mouse = new PVector();
PVector center;
float angle = 0.0;

void setup(){
  size (600,600,P3D);
  background(250,250,250);
  center = new PVector(width/2,height/2,0);
}

//variable.dist = distance of something

void draw(){
 // background(255,255,255);
  angle += .07;
  mouse.set(mouseX,mouseY,0);
  float distance = mouse.dist(center);
  translate(mouseX,mouseY,0);
  rotateY(frameCount/100.0);
  rotateZ(frameCount/100.0);
  rotateX(frameCount/90.0);
  //framecount has to do with how many frames have gone through.
  box(distance);
  box(30,30,30);
  float rd = map(sin(angle),-1,1,0,255);
  fill(rd,0,0);
  stroke(1,1,1);
  
}

void mousePressed(){
    background(250,250,250);
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
    //The #### lets you have multiple frame shots saved from the same program
    //Because it saves it based on the framecount.
  }
}
