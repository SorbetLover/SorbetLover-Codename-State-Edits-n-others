
import funkin.backend.utils.NativeAPI;
import funkin.editors.charter.Charter;
function create() {
	menuItems.insert(2, 'Charter');
	menuItems.insert(3, 'Open Console');
}

function update() {
    if (controls.ACCEPT) {
        if (menuItems[curSelected] == "Charter") {
		    FlxG.switchState(new Charter(PlayState.instance.SONG.meta.name, PlayState.instance.difficulty, false));
        }
        if (menuItems[curSelected] == "Skip Song") {
    		NativeAPI.allocConsole();

		}
    }
}
// function postUpdate(){
//     if(FlxG.keys.justPressed.SIX){
// 		NativeAPI.allocConsole();
// 	}
// 	if(FlxG.keys.justPressed.SEVEN){
// 		FlxG.switchState(new Charter(PlayState.instance.SONG.meta.name, PlayState.instance.difficulty, false));
// 	}

// }
// /