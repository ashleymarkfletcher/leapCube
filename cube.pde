class Cube{
  public float life;
  public float xPos;
  public float yPos;
  public float zPos;
  public float mPitch;
  public float mRoll;
  public float mYaw;
  public boolean finished;
  
  Cube(float x, float y, float z, float pitch, float roll, float yaw){
    xPos = x;
    yPos = y;
    zPos = z;
    life = 255;
    finished = false;
    mPitch = pitch;
    mRoll = roll;
    mYaw = yaw;
  }
  
  void update(){
    life = life-5;
    if(life == 0) finished = true;
  }
  
  void display(){
    pushMatrix();
    translate(xPos, yPos, zPos);
    rotateX(mPitch);
    rotateZ(mRoll);
    rotateY(mYaw);
    
    //float c = map(xPos, 0, width, 0, 255);
    //float s = map(yPos, 0, height, 0, 255);
        float c = map(life, 0, 255, 255, 0);
    //float s = map(yPos, 0, height, 0, 255);
    //float d = map(zPos, -20, 200, 0, 255);

    fill(c, life, life, life);
    //fill(c, life, life);

    noStroke();
    box(random(50,70));  
    popMatrix(); 
  }
  
}