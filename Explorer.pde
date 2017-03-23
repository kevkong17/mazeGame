/**
 * This creates the object explorer and its methods.
 * @author Kevin Kong
 * @version Project3 2/21/2017
 */

import java.awt.event.KeyEvent;

public class Explorer extends Occupant {
	
	private String name;
	
	public Explorer(Square location, Maze maze, String name) {
		super(maze, location);
		this.name = name;
		maze().lookAround(location);
	}
	
	public String name() {
		return this.name;
	}
	
	public void move(int key) {
		Square current = super.location();
		int row = current.row();
		int col = current.col();
		
		if(key == KeyEvent.VK_KP_UP || key == KeyEvent.VK_UP && current.wall(Square.UP) == false) {
			this.moveTo(maze().getSquare(row-1,col));
		} else if (key == KeyEvent.VK_KP_RIGHT || key == KeyEvent.VK_RIGHT && current.wall(Square.RIGHT) == false) {
			this.moveTo(maze().getSquare(row, col+1));
		} else if (key == KeyEvent.VK_KP_DOWN || key == KeyEvent.VK_DOWN && current.wall(Square.DOWN) == false) {
			this.moveTo(maze().getSquare(row+1, col));
		} else if (key == KeyEvent.VK_KP_LEFT || key == KeyEvent.VK_LEFT && current.wall(Square.LEFT) == false) {
			this.moveTo(maze().getSquare(row, col-1));
		}
	}
	
	public void moveTo(Square s) {
		super.moveTo(s);
		this.maze().lookAround(s);
		this.location().enter();
	}
}