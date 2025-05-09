local wezterm = require("wezterm")
local config = wezterm.config_builder()
---------------------------------------
config.color_scheme = "tokyonight_night"
config.animation_fps = 60
adjust_window_size_when_changing_font_size = false
config.window_background_opacity = 0.9
config.enable_scroll_bar = false
config.enable_wayland = true
config.font_size = 16.0
config.max_fps = 60
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.keys = {
	{ key = "V", mods = "CTRL", action = wezterm.action.PasteFrom("Clipboard") },
}
---------------------------------------
return config
