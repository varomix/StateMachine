package;

import kha.System;

class Main {
	public static var game:Game;

	public static function main() {
		System.init({title: "Game", width: 1024, height: 768}, function () {
			new Game();

		});
	}
}
