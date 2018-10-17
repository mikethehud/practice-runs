#include <sourcemod>
#define PLUGIN_VERSION "0.1"

// Menu variables
#define MENU_EDIT = "edit"
#define MENU_RUN = "run"

public Plugin:myinfo = {
	name = "CS:GO Practice Runs"
	author = "HudzM"
	description = "Set up specific scenarios with your team for easy dry-runs of strategies"
	version = PLUGIN_VERSION
	url = "https://twitter.com/hudzmcsgo"
}

public OnPluginStart() {
	RegAdminCmd("runs", RunMenu);
}

public Action RunMenu(int client, int args) {
	Menu menu = new Menu(RunMenuHandler, MENU_ACTIONS_ALL)
	menu.SetTitle("Practice Runs");
	menu.AddItem(MENU_EDIT, "Edit");
	menu.AddItem(MENU_RUN, "Run");
}

