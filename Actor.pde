static class Globals {
  //public static ArrayList<Actor> drawBuffer = new ArrayList<Actor>();
  public static HashMap<Integer, Actor> entityBuffer = new HashMap<Integer, Actor>(); 
  
  public static void drawLoop() {    
    for (HashMap.Entry<Integer, Actor> entry : entityBuffer.entrySet()) {
      entry.getValue().draw();
    }
  }
}

// ==== Actors ==== 
abstract class Actor {
  public Integer ID;
  public PVector position;
  public PVector rotation;
  
  public abstract void draw();
  
  public Actor(){
    this.ID = Globals.entityBuffer.size();
    Globals.entityBuffer.put(ID, this);
  }
  public Actor(PVector position) {
    this();
    this.position = position;
  }
  public void move(PVector v){
    position.x += v.x;
    position.y += v.y;
  }
}

class Dot extends Actor{
  int size;
  
  public Dot(int size) {
    this.size = size;
  }
  
  public Dot(PVector position, int size) {
    super(position);
    this.size = size;
  }
  
  public void draw(){
    ellipse(position.x, position.y, size, size);
  }
}
