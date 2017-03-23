/**
 * This creates the object drawable maze and its methods, including proper extension and implementation.
 * @author Kevin Kong
 * @version Project3 2/21/2017
 */

public class DrawableMaze extends Maze implements Drawable {

	public DrawableMaze(DrawableSquare[][] maze, int rows, int cols) {
		super((Square[][])maze, rows, cols);
	}

	public void draw() {
	}

}
