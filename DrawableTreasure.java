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

	}

}