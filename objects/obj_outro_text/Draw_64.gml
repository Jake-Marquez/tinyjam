draw_self()

var _death_message = ""

switch (global.death_reason) {
	case 0:
		_death_message = ""
		break;
	case 1:
		_death_message = "The floor gives out beneath you, and you slip into the abyss. You arms flail out reaching for something, anything, but you are swallowed hole."
		break;
	case 2:
		_death_message = "You go to speak, but before you can a shot rings out. You look down and blood stains your shirt. You don't hear the second shot."
		break;
}

draw_text_ext(
	330,
	50,
	_death_message,
	24,
	700
)

draw_text_ext(
	330,
	150,
	"As the world fades you realize it's over. But the dungeon is an upredictable place, and a damaged transport can lead to overtime or the last of times.",
	24,
	700
)

//draw_text_ext(
//	330,
//	250,
//	"You wonder i.",
//	24,
//	700
//)


draw_text_ext(
	330,
	700,
	"Space Bar to restart...",
	24,
	700
)