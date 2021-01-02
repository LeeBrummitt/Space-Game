function loadSettings() {
	ini_open("settings.ini");

	global.fullscreen = ini_read_real("global", "fullscreen", false);
	global.music = ini_read_real("global", "music", true);

	ini_close();


}
