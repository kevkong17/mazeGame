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
     
	}

}