ini_open("settings.ini");

ini_write_real("global", "fullscreen", global.fullscreen);
ini_write_real("global", "music", global.music);

ini_close();