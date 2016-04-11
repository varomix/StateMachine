package;

import kha.Framebuffer;
import kha.Color;


class PlayState extends State{
	
	public function new()
	{
		super();
	}

	override public function create()
	{
	    super.create();
	    trace("Creating Play State");
	}
	
	override public function destroy()
	{
	    super.destroy();
	}

	override public function update()
	{
	    super.update();
	}

	override public function render(framebuffer:Framebuffer)
	{
	    super.render(framebuffer);
	    trace("Rendering Play State");

	    var g = framebuffer.g2;
	    g.begin();
	    g.color = Color.Orange;
	    g.fillRect(100,100, 300, 300);
	    g.end();
	}
}