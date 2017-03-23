/**
 * This creates the object treasure.
 * @author Kevin Kong
 * @version Project3 2/21/2017
 */

public class Treasure extends RandomOccupant {
	
	private boolean viewed = false;
	
	public Treasure(Maze maze) {
		super(maze);
		Square location = super.location();
		location.setTreasure(this);
	}

	public Treasure(Maze maze, long seed) {
		super(maze, seed);
		Square location = super.location();
		location.setTreasure(this);
	}

	public Treasure(Maze maze, Square location) {
		super(maze, location);
		location.setTreasure(this);
	}
	
	
	public boolean found(){
		return this.viewed;
	}
	
	public void setFound(){
		this.viewed = true;
	}
	
	//Overrides so move does nothing
	public void move(){
  }
}