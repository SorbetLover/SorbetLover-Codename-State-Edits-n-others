import funkin.editors.charter.Charter;
import funkin.editors.charter.Charter;
import funkin.editors.charter.CharterBackdropGroup;
import funkin.editors.charter.Charter;
import funkin.editors.charter.CharterBackdropGroup.CharterBackdrop;
import flixel.FlxG;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.addons.display.FlxBackdrop;
import flixel.util.FlxTimer;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.addons.display.FlxGridOverlay;
import funkin.game.HealthIcon;
import funkin.backend.system.Conductor;
import flixel.math.FlxPoint;
import funkin.editors.charter.Charter;
import funkin.editors.charter.CharterEvent;
import funkin.editors.ui.UIWindow;
var backdropshit:FlxBackdrop;
function create() {
	gridColor1 = 0xFFFF5555;
}
var	meh = new UIWindow(100,100,100,100, "ah");

function postCreate() {
	add(meh);
	
	// meh.x = 400;
	backdropshit = new FlxBackdrop(Paths.image('editors/drawers2'));

	insert(members.indexOf(charterBG) + 1, backdropshit);
    backdropshit.cameras = [charterCamera];
    charterBG.alpha = 0;
    backdropshit.alpha = 1;
	backdropshit.color = 0x113D3D3D ;
    FlxG.mouse.visible = true;
}
function update() {
	if(FlxG.sound.music.playing){
		backdropshit.velocity.x = 0;

	} else {
		backdropshit.velocity.x = 	Conductor.bpm * 0.8;

	}
}
// function postUpdate(){
// 	// if(curBeat % 8 == 0){
// 	// FlxG.camera.zoom = 1.05;
// 	// FlxTween.tween(FlxG.camera, {zoom: 1}, 0.4, {ease: FlxEase.cubeOut});
// 	// }
//     // strumLines.members[2].healthIcons.scale.y = 4;    
//     charterBG.x += 1;  
// 	charterBG.color = 0xFF3F2E44; // white
// }



