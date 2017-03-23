/**
 * This creates the object drawable treasure and its methods, including proper extension and implementation.
 * @author Kevin Kong
 * @version Project3 2/21/2017
 */

public class DrawableTreasure extends Treasure implements Drawable {

	public DrawableTreasure(Maze maze) {
		super(maze);
	}

	public DrawableTreasure(Maze maze, int seed) {
		super(maze, seed);
	}

	public DrawableTreasure(Maze maze, Square location) {
		super(maze, location);
	}

	public void draw() {
    Occupant taken = (Occupant)this;
    Square here = taken.location();
    if (super.found()){
      fill(0);
      rect(here.x()+4,here.y()+4,46,46);
      fill(0);
      ellipse(here.x()+25,here.y()+15,15,15);
      fill(0);
      ellipse(here.x()+25,here.y()+35,15,15);}
    else if (here.inView() && !super.found()){
      fill(0);
      rect(here.x()+4,here.y()+4,46,46);
      fill(255);
      ellipse(here.x()+25,here.y()+15,15,15);
      fill(0,0,255);
      ellipse(here.x()+25,here.y()+35,15,15);}
  }
}