import java.util.*;
/**
 * This creates the maze object and its methods
 * @author Kevin Kong
 * @version Project3 2/21/2017
 */

public class Maze
{
   // named constants
   public static final int ACTIVE = 0;
   public static final int EXPLORER_WIN = 1;
   public static final int MONSTER_WIN = 2;
    
    // instance variables
   private Square[][] squares;
   private ArrayList<RandomOccupant> randOccupants;
   private Explorer explorer;
   private int rows;
   private int cols;
   
   /**
    * Constructor for objects of class Maze
    */
   public Maze(Square[][] squares, int rows, int cols)
   {
      this.rows = rows; this.cols = cols; this.squares = squares;
      randOccupants = new ArrayList<RandomOccupant>();
   }
	
   // QUERIES
   public int rows() { return rows;}
   public int cols() { return cols;}
   public Square getSquare(int row, int col) { return squares[row][col];}


   public String explorerName() {return explorer.name();}
   public Explorer getExplorer() {return explorer;}
   
      public void addRandomOccupant(RandomOccupant ro) {
    this.randOccupants.add(ro);
  }
    
   // CHANGE - Implement the following two methods.  I have them stubbed to return dummy values just so it will compile.
   //          Your getRandomOccupant should return the occupant from the ArrayList at the specified index.
   public RandomOccupant getRandomOccupant(int index) {
	   RandomOccupant atIndex = this.randOccupants.get(index);
	   return atIndex;
   }
   public int getNumRandOccupants() {
    return this.randOccupants.size();
  }
	
   // COMMANDS
   // CHANGE - implement the following method

	
   public void setExplorer(Explorer e) {explorer = e;}
	
   public void explorerMove(int key)
   {
      explorer.move(key);
   }
	
   public void randMove()
   {
      for (RandomOccupant what: this.randOccupants){ 
        what.move();
      }
   }
	
   /**
    * Returns the status of the game.
    *
    * If all treasures have been found, return EXPLORER_WIN.
    * If not, check each maze occupant, if it is a Monster and
    *    it is in the same location as the Explorer, return
    *    MONSTER_WIN.  Note that you can use == to check locations, do you know why?
    * Otherwise, return ACTIVE.
    */
   public int gameStatus()
   {
      int status = ACTIVE;
      if (this.foundAllTreasures()){status = EXPLORER_WIN;}
      else{
    	  for (RandomOccupant what: randOccupants){
    		  if (what instanceof Monster){
    			  Monster m = (Monster)what;
    			  if (m.location() == explorer.location()){status = MONSTER_WIN;}
    		  }
    	  }
      }
      return status;
   }
	
   private boolean foundAllTreasures()
   {
      boolean foundAll = false;
	    int treasureCount = 0;
      for (RandomOccupant what: randOccupants){
    	  if (what instanceof Treasure){
    		  Treasure t = (Treasure)what;
    		  if (!t.found()){treasureCount++;}
    	  }
      }    
      if (treasureCount == 0){ foundAll = true;}
      return foundAll;
   }
    
   public void lookAround(Square s)
   {
      int row = s.row();
      int col = s.col();
      
      // Clear what was previously in view
      this.resetInView();
      
      // Set the current square so that we are viewing it (obviously)
      s.setInView(true);
      //   - Check the adjacent squares.  If there isn't a wall in the way, set their inview to true.
      
      if (!s.wall(Square.UP)){
    	  getSquare(row-1,col).setInView(true);
    	  Square temp = getSquare(row-1,col);
    	  if (!temp.wall(Square.RIGHT)){
    		  getSquare(row-1,col+1).setInView(true);
    	  }
    	  if (!temp.wall(Square.LEFT)){
    		  getSquare(row-1,col-1).setInView(true);
    	  }
      }
      if (!s.wall(Square.DOWN)){
    	  getSquare(row+1, col).setInView(true);
    	  Square temp2 = getSquare(row+1,col);
    	  if (!temp2.wall(Square.RIGHT)){
    		  getSquare(row+1, col+1).setInView(true);
    	  }
    	  if (!temp2.wall(Square.LEFT)){
    		  getSquare(row+1,col-1).setInView(true);
    	  }
      }
      if (!s.wall(Square.LEFT)){
    	  getSquare(row, col-1).setInView(true);
    	  Square temp3 = getSquare(row,col-1);
    	  if(!temp3.wall(Square.UP)){
    		  getSquare(row-1,col-1).setInView(true);
    	  }
    	  if(!temp3.wall(Square.DOWN)){
    		  getSquare(row+1,col-1).setInView(true);
    	  }
      }
      if (!s.wall(Square.RIGHT)){
    	  getSquare(row,col+1).setInView(true);
    	  Square temp4 = getSquare(row,col+1);
    	  if(!temp4.wall(Square.UP)){
    		  getSquare(row-1,col+1).setInView(true);
    	  }
    	  if(!temp4.wall(Square.DOWN)){
    		  getSquare(row+1,col+1).setInView(true);
    	  }
      } 
   }
    
   private void resetInView()
   {
      for (int i = 0; i<rows; i++) {
         for (int j = 0; j<cols; j++) { 
            squares[i][j].setInView(false);
         }
      }
   }
}