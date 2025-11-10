// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveGame(){
	// overwrite old save if exists
	
	if (file_exists(SAVEFILE)) file_delete(SAVEFILE);
	
	// Create new save
	var file;
	file = file_text_open_write(SAVEFILE);
	file_text_write_real(file,room);
	file_text_close(file)
}