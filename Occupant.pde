/**
 * This creates the abstract file Occupant and its methods.
 * @author Kevin Kong
 * @version Project3 2/21/2017
 */ 

public abstract class Occupant {
	
	private Square location;
	private Maze maze;

	public Occupant(Maze maze) {
		this.maze = maze;
	}
	
	public Occupant(Maze maze, Square start) {
		this.maze = maze;
		location = start;
	}
	
	public Square location() {
		return location;
	}
	
	public Maze maze() {
		return maze;
	}
	
	public void moveTo(Square newLoc) {
		location = newLoc;
	}
}
