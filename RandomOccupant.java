/**
 * This creates the abstract file RandomOccupant and its methods.
 * @author Kevin Kong
 * @version Project3 2/21/2017
 */

import java.util.Random;

public abstract class RandomOccupant extends Occupant {
	
	private Random rand;

	public RandomOccupant(Maze maze) {
		super(maze);
		rand = new Random();
		Square square = maze().getSquare(rand.nextInt(maze().rows()), rand.nextInt(maze().cols()));
		super.moveTo(square);
	}

	public RandomOccupant(Maze maze, long seed){
		super(maze);
		this.rand = new Random(seed);
		Square square = maze().getSquare(rand.nextInt(maze().rows()), rand.nextInt(maze().cols()));
		super.moveTo(square);
	}
	
	public RandomOccupant(Maze maze, Square location){
		super(maze, location);
		rand = new Random();
	}
	
	public void move(){
		Square location = super.location();
		int x = location.x(); int y = location.y();
		boolean valid = false;
		int move = 0;
		while (!valid){
			int randMove = rand.nextInt(4);
			if (!location.wall(randMove)){
				move = randMove;
				valid = true;
			}
		}
		if (move == Square.UP || move == Square.DOWN){
			y += 50*(move-1);
		}else if (move == Square.RIGHT || move == Square.LEFT){
			x += -50*(move-2);
		}
		Square soon = maze().getSquare(y/Square.SQUARE_SIZE, x/Square.SQUARE_SIZE);
		super.moveTo(soon);
	}
}	