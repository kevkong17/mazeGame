/**
 * This creates the object drawable square and its methods, including proper extension and implementation.
 * @author Kevin Kong
 * @version Project3 2/21/2017
 */

public class DrawableSquare extends Square implements Drawable {

	public DrawableSquare(boolean up, boolean right, boolean down, boolean left, int row, int col) {
		super(up, right, down, left, row, col);
	}

	public void draw(){

     if (super.inView()){
        fill(108,17,108);
        rect(super.x(),super.y(),50,50);
       if (super.wall(Square.UP)){ 
        fill(0); 
        rect(super.x(),super.y(),50,4);}
       if (super.wall(Square.DOWN)){ 
        fill(0); 
        rect(super.x(),super.y()+46, 50,4);}
       if (super.wall(Square.RIGHT)){ 
        fill(0); 
        rect(super.x()+46,super.y(),4,50);}
       if (super.wall(Square.LEFT)){ 
        fill(0); 
        rect(super.x(),super.y(),4,50);}
     }
      else if (super.seen()){ 
        fill(200,67,158);
        rect(super.x(),super.y(),50,50);
       if (super.wall(Square.UP)){ 
        fill(0); 
        rect(super.x(),super.y(),50,4);}
       if (super.wall(Square.DOWN)){ 
        fill(0); 
        rect(super.x(),super.y()+46, 50,4);}
       if (super.wall(Square.RIGHT)){ 
        fill(0); 
        rect(super.x()+46,super.y(),4,50);}
       if (super.wall(Square.LEFT)){ 
        fill(0); 
        rect(super.x(),super.y(),4,50);}
  }

	}
}