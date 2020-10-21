//adjective: illusive
// unwinnable whack-a-mole-game

float hammer_x = mouseX;
float hammer_y = mouseY;

void setup(){
  size(1800, 1200);
  background(205,133,63);
  
  
}

void draw(){
  strokeWeight(4);
  line(600,0,600,1200);
  line(1200,0,1200,1200);
  line(0,600,1800,600);
  
  
  ellipseMode(CENTER);
  formation_0();
  if(mouseX <= 300){
    if(mouseY <= 300){
      formation_1();
    }
  }
}

void mole(int x, int y){
  translate(0,0);
  arc(x, y, 300, 500, -PI, 0, CHORD);  // upper half of circle
  fill(139,69,19);
}

void formation_0(){
  mole(300,300);
  mole(300,900);
  mole(900,300);
  mole(900,900);
  mole(1500,300);
  mole(1500,900);
}
void formation_1(){
  pushMatrix();
  mole(300,900);
  mole(900,300);
  mole(900,900);
  mole(1500,300);
  mole(1500,900);
  popMatrix();
}

void formation_2(){
  pushMatrix();
  mole(300,300);
  mole(900,300);
  mole(900,900);
  mole(1500,300);
  mole(1500,900);
  popMatrix();
}

void formation_3(){
  pushMatrix();
  mole(300,300);
  mole(300,900);
  mole(900,900);
  mole(1500,300);
  mole(1500,900);
  popMatrix();
}

void formation_4(){
  pushMatrix();
  mole(300,300);
  mole(300,900);
  mole(900,300);
  mole(1500,300);
  mole(1500,900);
  popMatrix();
}

void formation_5(){
  pushMatrix();
  mole(300,300);
  mole(300,900);
  mole(900,300);
  mole(900,900);
  mole(1500,900);
  popMatrix();
}

void formation_6(){
  pushMatrix();
  mole(300,300);
  mole(300,900);
  mole(900,300);
  mole(900,900);
  mole(1500,300);
  popMatrix();
}
