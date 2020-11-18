// The Flock (a list of Boid objects)
class Flock {
  ArrayList<Boid> boids;

  Flock() {
    boids = new ArrayList<Boid>();
  }
  
  Flock(int size){
    this();
    for (int i = 0; i < size; i++ ){
      addBoid(new Boid(width/2, height/2));
    }
  }

  void run() {
    for (Boid b : boids) {
      b.run(boids);
    }
  }

  void addBoid(Boid b) {
    boids.add(b);
  }
}
