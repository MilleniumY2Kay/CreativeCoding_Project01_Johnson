// unwinnable whack-a-mole-game

float hammer_x = mouseX;
float hammer_y = mouseY;

void setup(){
  size(1800, 1200);
  
}

void draw(){
  background(205,133,63);
  strokeWeight(4);
  line(600,0,600,1200);
  line(1200,0,1200,1200);
  line(0,600,1800,600);
  
  
  ellipseMode(CENTER);
  formation_0();
  if(mouseX <= 600){
    if(mouseY <= 600){
      formation_1();
    }
  }
  if(mouseX <= 600){
    if(mouseY >= 600){
      formation_2();
    }
  }
  if (mouseX >= 600){
    if (mouseX <=1200){
      if(mouseY <=600){
        formation_3();
      }
    }
  }
  if (mouseX >= 600){
    if (mouseX <=1200){
      if(mouseY >=600){
        formation_4();
      }
    }
  }
  if(mouseX >= 1200){
    if(mouseY <= 600){
      formation_5();
    }
  }
  if(mouseX >= 1200){
    if(mouseY >= 600){
      formation_6();
    }
  }
  
}

void reset(){ // redraws background a grid
  background(205,133,63);
  strokeWeight(4);
  line(600,0,600,1200);
  line(1200,0,1200,1200);
  line(0,600,1800,600);
}
void mole(int x, int y){
  arc(x, y, 300, 500, -PI, 0, CHORD);  // upper half of circle
  fill(139,69,19);
}

void formation_0(){// All six moles
  mole(300,300);
  mole(300,900);
  mole(900,300);
  mole(900,900);
  mole(1500,300);
  mole(1500,900);
}
void formation_1(){// top left mole is gone
  reset();
  mole(300,900);
  mole(900,300);
  mole(900,900);
  mole(1500,300);
  mole(1500,900);
}

void formation_2(){// bottom left mole is gone
  reset();
  mole(300,300);
  mole(900,300);
  mole(900,900);
  mole(1500,300);
  mole(1500,900);
}

void formation_3(){
  reset();
  mole(300,300);
  mole(300,900);
  mole(900,900);
  mole(1500,300);
  mole(1500,900);
}

void formation_4(){
  reset();
  mole(300,300);
  mole(300,900);
  mole(900,300);
  mole(1500,300);
  mole(1500,900);
}

void formation_5(){
  reset();
  mole(300,300);
  mole(300,900);
  mole(900,300);
  mole(900,900);
  mole(1500,900);
}

void formation_6(){
  reset();
  mole(300,300);
  mole(300,900);
  mole(900,300);
  mole(900,900);
  mole(1500,300);
}
