/**
 * This creates the object monster.
 * @author Kevin Kong
 * @version Project3 2/21/2017
 */

public class Monster extends RandomOccupant {

  public Monster(Maze maze) {
    super(maze);
  }

  public Monster(Maze maze, int seed) {
    super(maze, seed);
  }

  public Monster(Maze maze, Square location) {
    super(maze, location);
  }

}