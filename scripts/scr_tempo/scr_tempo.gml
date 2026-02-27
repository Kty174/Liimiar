function formatar_tempo(_frames){
    
    var total_segundos = _frames div room_speed;
    
    var h = total_segundos div 3600;
    var m = (total_segundos mod 3600) div 60;
    var s = total_segundos mod 60;
    
    var hs = string_format(h, 2, 0);
    var ms = string_format(m, 2, 0);
    var ss = string_format(s, 2, 0);
    
    return hs + ":" + ms + ":" + ss;
}