-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Changing color scheme
-- config.color_scheme = "Gruvbox light, hard (base16)"
config.color_scheme = "Gruvbox dark, hard (base16)"
-- config.color_scheme = "Gruvbox dark, pale (base16)"
-- config.color_scheme = "Gruvbox dark, soft (base16)"
-- config.color_scheme = "Gruvbox dark, medium (base16)"
-- config.color_scheme = "Gruvbox Material (Gogh)"
-- config.color_scheme = "Tomorrow Night Blue"

config.colors = {
--	foreground = "#292625",
	foreground = "#ebdbb2",
	cursor_border = "#e40000",
	cursor_bg = "#e40000",
}

config.font = wezterm.font("Agave", 
					{stretch = "Normal", weight = "Medium",}
				)
config.font_size = 23.5
config.font_rules = {
-- Bold but not italic
  {
	intensity = 'Bold',
	italic = false,

	font = wezterm.font {
		family = "Agave",
		weight = "Medium",
		stretch = "Normal",
    }
  },

-- Bold and italic
  {
	intensity = 'Bold',
	italic = true,
	font = wezterm.font {
		family = "Agave",
		weight = "Medium",
		italic = true,
		stretch = "Normal",
    }
  },
}

-- config.freetype_load_flags = "NO_HINTING"
config.freetype_load_flags = "DEFAULT"

config.freetype_load_target= "Normal"

config.scrollback_lines = 100000
config.harfbuzz_features = { 'calt=1', 'clig=1', 'liga=1', 'CLIK=1' }
config.font_shaper = "Harfbuzz"
config.webgpu_power_preference = "HighPerformance"
config.enable_csi_u_key_encoding = true
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 10
config.cursor_blink_rate = 250
config.enable_csi_u_key_encoding = true
config.cursor_thickness = "200%"

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
--config.force_reverse_video_cursor = true

return config
