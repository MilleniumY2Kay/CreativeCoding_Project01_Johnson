// unwinnable whack-a-mole-game

void setup(){
  size(1800, 1200);
  
}

void draw(){
  reset();  
  ellipseMode(CENTER);
  
  formation_0(); //sets initial board
  
  if(mouseX <= 600){
    if(mouseY <= 600){
      // if mouse is inside box 1, make mole 1 dissappear
      formation_1();
    }
  }
  if(mouseX <= 600){
    if(mouseY >= 600){
      // if mouse is inside box 2, make mole 2 dissappear
      formation_2();
    }
  }
  if (mouseX >= 600){
    if (mouseX <=1200){
      if(mouseY <=600){
        // if mouse is inside box 3, make mole 3 dissappear
        formation_3();
      }
    }
  }
  if (mouseX >= 600){
    if (mouseX <=1200){
      if(mouseY >=600){
        // if mouse is inside box 4, make mole 4 dissappear
        formation_4();
      }
    }
  }
  if(mouseX >= 1200){
    if(mouseY <= 600){
      // if mouse is inside box 5, make mole 5 dissappear
      formation_5();
    }
  }
  if(mouseX >= 1200){
    if(mouseY >= 600){
      //if mouse is inside box 6, make mole 6 dissappear
      formation_6();
    }
  }
  hammer(mouseX,mouseY);
  
}

void reset(){
  // redraws background a grid
  background(205,133,63);  
  //creates 3x2 grid
  strokeWeight(4);
  stroke(160,82,45);
  line(600,0,600,1200);
  line(1200,0,1200,1200);
  line(0,600,1800,600);
}
void mole(int x, int y){
  //draws mole
  
  //body
  strokeWeight(4);
  stroke(0);
  fill(139,69,19);
  arc(x, y, 300, 500, -PI, 0, CHORD);
  //nose
  fill(255,182,193);
  ellipse(x,y-100,100,50);
  //nosehighlight
  strokeWeight(1);
  stroke(255);
  fill(255);
  ellipse(x+20, y-100, 30, 10);
  //eyes
  strokeWeight(4);
  stroke(0);
  fill(0);
  ellipse(x-50,y-150,40,40);
  ellipse(x+50,y-150,40,40);
  //eye highlights
  strokeWeight(1);
  stroke(255);
  fill(255);
  ellipse(x-40,y-155,20,20);
  ellipse(x+55,y-155,20,20);
}

void hole(int x, int y){
  // draws hole in the ground
  strokeWeight(4);
  stroke(0);
  fill(0);
  ellipse(x,y,300,100);
}

void hammer(int x, int y){
  // draws hammer
  strokeWeight(5);
  stroke(0);
  fill(150);
  
  beginShape();
  vertex(x,y);
  vertex(x-10,y);
  vertex(x-10,y-100);
  vertex(x-60,y-100);
  vertex(x-60,y-175);
  vertex(x+60,y-175);
  vertex(x+60,y-100);
  vertex(x+10,y-100);
  vertex(x+10,y); 
  endShape(CLOSE);
}

void formation_0(){
  // All six moles
  mole(300,300);
  mole(300,900);
  mole(900,300);
  mole(900,900);
  mole(1500,300);
  mole(1500,900);
}
void formation_1(){
  // top left mole is gone
  reset();
  hole(300,300);
  mole(300,900);
  mole(900,300);
  mole(900,900);
  mole(1500,300);
  mole(1500,900);
}

void formation_2(){
  // bottom left mole is gone
  reset();
  hole(300,900);
  mole(300,300);
  mole(900,300);
  mole(900,900);
  mole(1500,300);
  mole(1500,900);
}

void formation_3(){
  // top middle mole is gone
  reset();
  hole(900,300);
  mole(300,300);
  mole(300,900);
  mole(900,900);
  mole(1500,300);
  mole(1500,900);
}

void formation_4(){
  // bottom middle mole is gone
  reset();
  hole(900,900);
  mole(300,300);
  mole(300,900);
  mole(900,300);
  mole(1500,300);
  mole(1500,900);
}

void formation_5(){
  // top right mole is gone
  reset();
  hole(1500,300);
  mole(300,300);
  mole(300,900);
  mole(900,300);
  mole(900,900);
  mole(1500,900);
}

void formation_6(){
  // bottom right mole is gone
  reset();
  hole(1500,900);
  mole(300,300);
  mole(300,900);
  mole(900,300);
  mole(900,900);
  mole(1500,300);
}
