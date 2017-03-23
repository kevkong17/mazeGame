/**
 * This creates the object drawable explorer and its methods, including proper extension and implementation.
 * @author Kevin Kong
 * @version Project3 2/21/2017
 */
public class DrawableExplorer extends Explorer implements Drawable {

	public DrawableExplorer(Square location, Maze maze, String name) {
		super(location, maze, name);
	}

	public void draw() {

       Occupant taken = (Occupant)this;
       Square here = taken.location();
       fill(255);
       rect(here.x()+10,here.y()+25,30,8,3);
       fill(255);
       ellipse(here.x()+18,here.y()+33,5,5);
       ellipse(here.x()+32,here.y()+33,5,5);      
	}

}