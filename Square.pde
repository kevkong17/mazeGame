/**
 * This creates the object square, implements it, and provides its methods.
 * 
 * @author Kevin Kong
 * @version Project 3 2/21/2017
 */
public class Square {
	public static final int SQUARE_SIZE = 50;
	public static final int UP = 0;
	public static final int RIGHT = 1;
	public static final int DOWN = 2;
	public static final int LEFT = 3;


	private boolean[] hasWall = new boolean[4];
	private boolean seen;
	private boolean inView;
	private int row;
	private int col;
	private Treasure treasure;

	public Square(boolean up, boolean right, boolean down, boolean left, int row, int col) {
		this.row = row; 
		this.col = col;
		this.hasWall[0] = up; 
		this.hasWall[1] = right;
		this.hasWall[2] = down; 
		this.hasWall[3] = left;
	}	
	
	public boolean wall(int direction) {
		return(hasWall[direction]);
	}

	public boolean seen() {
		return seen;
	}
	
	public boolean inView() {
		return inView;
	}

	public int row() {
		return row;
	}

	public int col() {
		return col;
	}

	public Treasure treasure() {
		return treasure;
	}
	
	public int x() {
		int x = SQUARE_SIZE * col;
		return x;
	}
	public int y() {
		int y = SQUARE_SIZE * row;
		return y;
	}
	
	public void setInView(boolean inView) {
		this.inView = inView;
		if (inView){
			this.seen = true;
		}
	}
	public void setTreasure(Treasure t) {									
		this.treasure = t;
	}
	
	public void enter() {
		this.seen = true;
		if (!(this.treasure == null)) {
			this.treasure.setFound();
		}
	}
	
}
