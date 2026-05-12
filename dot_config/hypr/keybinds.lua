local mainMod = "SUPER" -- Sets "Windows" key as main modifier

local terminal = "ghostty"
local fileManager = "dolphin"
local browser = "zen-browser"
local menu = "wofi -n"
local clipboard = "cliphist list | wofi --dmenu -n | cliphist decode | wl-copy"
local calculator = "kalk"
local emojiPicker = "wofimoji --prompt 'Search emoji...' --selector-args '-n'"

hl.bind(mainMod .. "+ C", hl.dsp.exec_cmd(terminal)) -- Open terminal
hl.bind(mainMod .. "+ E", hl.dsp.exec_cmd("[float; center; size 1000 750]" .. fileManager)) -- Open floating fileManager
hl.bind(mainMod .. "+ R", hl.dsp.exec_cmd(menu)) -- Show wofi application picker
hl.bind(mainMod .. "+ B", hl.dsp.exec_cmd(browser)) -- Open browser
hl.bind(mainMod .. "+ V", hl.dsp.exec_cmd(clipboard)) -- Show clipboard history
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd(emojiPicker)) -- Show emojiPicker
hl.bind(mainMod .. " + F12", hl.dsp.exec_cmd("[float; move (monitor_w-350) (70)]" .. calculator)) -- Open Calculator on Win + F12 but floating and moved to the top right
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("bash /usr/local/bin/set_wallpaper.sh")) -- Change the background to a random one
hl.bind(mainMod .. " + Q", hl.dsp.window.close()) -- Close the active window
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen()) -- Toggle active windows fullscreen
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.float()) -- Toggle active window floating
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.window.pin()) -- Pin the currently floating window
--hl.bind(mainMod .. " + " J, togglesplit -- Toggle split layout
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock")) -- Lock screen on Win + L
--hl.bind(mainMod .. " + G", hyprexpo:expo, toggle -- Toggle Hyprexpo overview plugin
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exit()) -- Exit Hyprland which is basically like logging out
hl.bind(mainMod .. " + CTRL + 1", hl.dsp.exec_cmd("hyprcap shot monitor:active -nw")) -- Screenshot active monitor and safe to file
hl.bind(mainMod .. " + CTRL + 2", hl.dsp.exec_cmd("hyprcap shot region -znw")) -- Select a region to screenshot and safe to file
hl.bind(mainMod .. " + CTRL + 3", hl.dsp.exec_cmd("hyprcap shot monitor:active -d 10 -nw")) -- Screenshot active monitor in 10 seconds and safe to file
hl.bind(mainMod .. " + CTRL + 4", hl.dsp.exec_cmd("wayscriber --active")) -- Start the ZoomIt like tool "wayscriber"
hl.bind(mainMod .. " + CTRL + S", hl.dsp.exec_cmd("hyprcap shot region -znc")) -- Select a region to screenshot and copy to clipboard

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" })) -- Move focus left
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" })) -- Move focus right
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" })) -- Move focus up
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" })) -- Move focus down

-- Switch workspaces with mainMod + [0-9]
for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i })) -- Switch to workspace i
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i })) -- Move active window to workspace i
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic")) -- Toggle special workspace
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" })) -- move active window to special workspace

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" })) -- Scroll to previous workspace
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" })) -- Scroll to next workspace

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true }) -- Move window
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true }) -- Resize window

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
