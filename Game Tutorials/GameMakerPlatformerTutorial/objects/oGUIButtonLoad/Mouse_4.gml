/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

var file = file_text_open_read(SAVEFILE);
var target = file_text_read_real(file);
room_goto(target);