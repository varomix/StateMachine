package;

import kha.Framebuffer;
import kha.input.Mouse;
import kha.Assets;

class MenuState extends State {
	static public var game : Game;

	public function new()
	{
		super();
		Assets.loadEverything(create);
	}

	override public function create()
	{
	    super.create();
	    trace("Creating Menu State");

		if (Mouse.get() != null) Mouse.get().notify(onMouseDown, null, null, null);

	}

	public function onMouseDown(button:Int, x:Int, y:Int):Void {
		if (button == 0){
			game.switchState(new PlayState());  /// THIS doesn't work, why?
		}
	}
	   

	
	override public function destroy()
	{
	    super.destroy();
	    trace("Destroying Menu State");
	}

	override public function update()
	{
	    super.update();
	}

	override public function render(framebuffer: Framebuffer)
	{
	    super.render(framebuffer);

	    var g = framebuffer.g2;
	    g.begin();

	    g.fillRect(50,50, 300, 300);
	    g.end();
	}
}