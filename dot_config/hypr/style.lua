hl.config({
	-- https://wiki.hyprland.org/Configuring/Variables/#general
	general = {
		gaps_in = 5,
		gaps_out = 15,
		border_size = 1,
		-- https://wiki.hyprland.org/Configuring/Variables/#variable-types for info about colors
		col = {
			active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
			inactive_border = "rgba(595959aa)",
		},
		-- Set to true enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = false,
		-- Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
		allow_tearing = false,
		layout = "dwindle",
	},
	-- https://wiki.hyprland.org/Configuring/Variables/#decoration
	decoration = {
		rounding = 10,
		rounding_power = 2,
		-- Change transparency of focused and unfocused windows
		active_opacity = 1.0,
		inactive_opacity = 0.9,
		fullscreen_opacity = 1.0,
		shadow = {
			enabled = true,
			range = 15,
			render_power = 5,
			color = "rgba(0,0,0,.5)",
		},
		-- https://wiki.hyprland.org/Configuring/Variables/#blur
		blur = {
			enabled = true,
			size = 3,
			passes = 5,
			popups = true,
		},
	},
	-- https://wiki.hyprland.org/Configuring/Variables/#animations
	animations = {
		enabled = true,
	},
	-- See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
	dwindle = {
		preserve_split = true, -- You probably want this
	},
	-- See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
	master = {
		new_status = "master",
	},
	-- https://wiki.hyprland.org/Configuring/Variables/#misc
	misc = {
		force_default_wallpaper = 0, -- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = true, -- If true disables the random hyprland logo / anime girl background. :(
	},
})

-- Default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, bezier = "easeOutQuint", stype = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "fadeDpms", enabled = true, speed = 15, bezier = "almostLinear" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2, bezier = "almostLinear", style = "slidefade" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 2, bezier = "almostLinear", style = "fade" })
