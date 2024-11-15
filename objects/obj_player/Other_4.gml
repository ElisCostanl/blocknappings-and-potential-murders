/// @desc auto save

//overwrite old save

if (file_exists(SAVEFILE)) file_delete(SAVEFILE); 

//create new save 
var file; 
file = file_text_open_write(SAVEFILE); 
// Feather disable once GM1041
file_text_write_real(file,room); 
file_text_write_real(file,global.kills); 
file_text_close(file);
