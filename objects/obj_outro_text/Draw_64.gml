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
	case 3:
		_death_message = "You turn around to lead the way and a shot rings out. You look down and blood stains your shirt. You don't hear the second shot."
		break;
	case 4:
		_death_message = "With the gun shaking in his hand, you take Breachers word for it and slowly back way. Clearly this was no ordinary mining accident."
		break;
	case 5:
		_death_message = "A shot rings out, wizzing past your head. You scramble to the transporter, and in your rush drop Deimos to the floor."
		break;
}

draw_text_ext(
	330,
	50,
	_death_message,
	24,
	700
)

var _second_death_message = "As the world fades you realize it's over. But the dungeon is an upredictable place, and a damaged transport can lead to overtime or the last of times.";

switch (global.death_reason) {
	case 4:
		_second_death_message = "Back at mission control, you request backup and fill everyone in on the psychic profile of Breacher and the crew. Your work is invaluable, and will lead to their arrest."
		break;
	case 5:
		_second_death_message = "Back at mission control, you are admonished for losing Deimos. It's so dangerous, a follow up mission can't be risked. The floor is sealed, and Breacher and the crew are lost forever."
		break;
	default:
		_second_death_message = "As the world fades you realize it's over. But the dungeon is an upredictable place, and a damaged transport can lead to overtime or the last of times.";
		break;
}

draw_text_ext(
	330,
	150,
	_second_death_message,
	24,
	700
)

draw_text_ext(
	330,
	700,
	"Spacebar to restart...",
	24,
	700
)