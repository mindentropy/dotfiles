-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Changing color scheme
-- config.color_scheme = "Gruvbox light, hard (base16)"
-- config.color_scheme = "Nord Light (Gogh)"
-- config.color_scheme = "nord-light"
-- config.color_scheme = "Ef-Frost"
-- config.color_scheme = "Gruvbox dark, hard (base16)"
-- config.color_scheme = "Gruvbox dark, pale (base16)"
-- config.color_scheme = "Gruvbox dark, soft (base16)"
-- config.color_scheme = "Gruvbox dark, medium (base16)"
-- config.color_scheme = "Gruvbox Material (Gogh)"
-- config.color_scheme = "Tomorrow Night Blue"
config.color_scheme = "tempus_totus"

config.colors = {
--	foreground = "#292625", -- For light bg
--	background = "#fffadc", -- Customized light bg
--	foreground = "#ebdbb2", -- For dark bg
--	cursor_border = "#e40000",
--	cursor_bg = "#e40000",
}

config.font = wezterm.font("Inconsolata Medium",
		    {
--[[		        stretch = "Condensed",
		        weight = "", ]]
		    }
		)

config.inactive_pane_hsb = {
    saturation = 1.0,
    brightness = 1.0,
}

config.font_size = 27.5
-- config.dpi = 109
config.enable_wayland = false

config.font_rules = {
-- Bold but not italic
  {
	intensity = 'Bold',
	italic = false,
	font = wezterm.font {
		family = "Inconsolata Medium",
--[[		stretch = "Condensed",
		weight = "", ]]
    }
  },

-- Bold and italic
  {
	intensity = 'Bold',
	italic = true,
	font = wezterm.font {
		family = "Inconsolata Medium",
		italic = true,
--[[		stretch = "Condensed",
		weight = "",]]
    }
  },
}

--[[
For font config see the discussion comment below:
https://github.com/wezterm/wezterm/discussions/3388#discussioncomment-5446306
]]
config.freetype_load_flags = "DEFAULT"
config.freetype_load_flags = "NO_HINTING|FORCE_AUTOHINT"
-- config.freetype_load_flags = "NO_HINTING|NO_AUTOHINT"
config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"
--[[ config.freetype_load_target = "Normal"
config.freetype_render_target = "Normal" ]]
-- config.front_end = "WebGpu"
config.front_end = "OpenGL"

config.scrollback_lines = 100000
config.harfbuzz_features = { 'calt=1', 'clig=1', 'liga=1', 'CLIK=1' }
config.font_shaper = "Harfbuzz"
config.webgpu_power_preference = "HighPerformance"
config.enable_csi_u_key_encoding = true
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.default_cursor_style = "SteadyBlock"
config.animation_fps = 10
config.cursor_blink_rate = 180
config.enable_csi_u_key_encoding = false
config.cursor_thickness = "200%"
config.use_fancy_tab_bar = true
config.audible_bell = "SystemBeep"
config.window_background_opacity = 1.0

config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

config.force_reverse_video_cursor = true
config.term = "wezterm"

return config
