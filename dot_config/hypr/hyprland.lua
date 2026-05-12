----------------
--- MONITORS ---
----------------

-- See https://wiki.hyprland.org/Configuring/Monitors/
require("monitors")

-------------------
--- MY PROGRAMS ---
-------------------

-- See https://wiki.hyprland.org/Configuring/Keywords/
require("programs")

-----------------
--- AUTOSTART ---
-----------------

-- See https://wiki.hyprland.org/Configuring/Keywords/#executing
require("autostart")

-----------------------------
--- ENVIRONMENT VARIABLES ---
-----------------------------

-- See https://wiki.hyprland.org/Configuring/Environment-variables/
require("environment")

-------------------
--- PERMISSIONS ---
-------------------

-- See https://wiki.hyprland.org/Configuring/Permissions/
require("permissions")

---------------------
--- LOOK AND FEEL ---
---------------------

-- Refer to https://wiki.hyprland.org/Configuring/Variables/
require("style")

-------------
--- Debug ---
-------------

-- https://wiki.hyprland.org/Configuring/Variables/#debug
hl.config({
	debug = {
		disable_logs = true,
	},
})

-------------
--- INPUT ---
-------------

require("input")

-------------------
--- KEYBINDINGS ---
-------------------

-- See https://wiki.hyprland.org/Configuring/Keywords/
require("keybinds")

------------------------------
--- WINDOWS AND WORKSPACES ---
------------------------------

-- See https://wiki.hyprland.org/Configuring/Window-Rules/ for more
-- See https://wiki.hyprland.org/Configuring/Workspace-Rules/ for workspace rules
require("windowsWorkspaces")

---------------
--- PLUGINS ---
---------------

-- See https://wiki.hypr.land/Plugins/Using-Plugins/
require("plugins")
