function scr_play_music(_sound)
{
    if (global.current_music != _sound)
    {
        if (global.current_music != noone)
        {
            audio_stop_sound(global.current_music);
			global.current_music = noone
        }
        
        global.current_music = _sound;
        
        if (_sound != noone)
        {
            audio_play_sound(_sound, 0, 1, global.volume_geral);
			global.current_music = _sound
        }
    }
}