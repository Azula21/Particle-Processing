ArrayList<Agent> agents = new ArrayList<Agent>();
  float wind = 0.30;
  float TerminalVelocity = 100;

void setup(){
  size(800,400);
  background(255);
  frameRate(100);
  
  for (int i = 0; i< 300; i++){
    agents.add(new Agent(random(width), random(height)));
  }
  for (int i = 0; i >200; i++){
    agents.add(new Agent(random(width), random(height)));
  }
  noStroke();
  smooth();
}

void draw(){
  
  fill(255,200);
  rect(0,0,width,height);
  
  for (Agent a: agents){
    a.update();
  }
  for (Agent a: agents){
    //noStroke();
    a.draw();
  }
  
  for(Agent a: agents){
    noStroke();
    a.draw();
  }
  for(Agent a : agents){
    for(Agent b: agents){
      for(Agent c: agents){
        if (dist(a.xPos, a.yPos, b.xPos, b.yPos) < 30 && dist(a.xPos, a.yPos, c.xPos, c.yPos) < 30){
        fill(a.r, a.g, a.b, map(dist(a.xPos, a.yPos, b.xPos, b.yPos), 0, 30, 200, 0));
        triangle(a.xPos, a.yPos, b.xPos, b.yPos, c.xPos, c.yPos);
        }
      }
    }
  }
}