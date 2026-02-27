switch (room)
{
    case rm_menu:
        scr_play_music(snd_music_menu);
        break;
        
    case rm_opening:
        scr_play_music(snd_music_menu);
        break;
        
    case rm_tutorial:
        scr_play_music(snd_map_1_msc);
        break;
		
    case rm_1:
        scr_play_music(snd_map_2_msc);
        break;
		
    case rm_2:
        scr_play_music(snd_map_3_msc);
        break;
		
    case rm_3:
        scr_play_music(snd_map_4_msc);
        break;
		
    case rm_4:
        scr_play_music(snd_map_5_msc);
        break;
		
    case rm_ending:
        scr_play_music(snd_map_ending_msc);
        break;
		        
    default:
        scr_play_music(noone);
        break;
}

switch (room) {

	case rm_tutorial:
		x = 96;
		y = 320;
	break;

	case rm_1:
		x = 96;
		y = 1760;
	break;

	case rm_2:
		x = 128;
		y = 1056;
	break;

	case rm_3:
		x = 128;
		y = 1408;
	break;

	case rm_4:
		x = 96;
		y = 1408;
	break;
}
