package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;

class Game {
	public var state:State;

	public function new() {
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);

		state = new MenuState();
        // state.create();

	}

	function update(): Void {
		state.update();
	}

	function render(framebuffer: Framebuffer): Void {
		state.render(framebuffer);	
	}

	public function switchState(state:State)
	{
		this.state.destroy();
		this.state = state;
		this.state.create();
	    
	}
}
