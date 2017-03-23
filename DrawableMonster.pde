/**
 * This creates the object drawable monster and its methods, including proper extension and implementation.
 * @author Kevin Kong
 * @version Project3 2/21/2017
 */

public class DrawableMonster extends Monster implements Drawable {

	public DrawableMonster(Maze maze) {
		super(maze);
	}

	public DrawableMonster(Maze maze, int seed) {
		super(maze, seed);
	}

	public DrawableMonster(Maze maze, Square location) {
		super(maze, location);
	}

	public void draw() {

      Occupant taken = (Occupant)this;
      Square here = this.location();
      if (here.inView()){
        fill(0);
        rect(here.x()+4,here.y()+4,46,46);
        fill(255,0,0);
        ellipse(here.x()+25,here.y()+15,15,15);
        fill(0,255,0);
        ellipse(here.x()+25,here.y()+35,15,15);
      } 

	}

}