-- Autor: Jacob Jauregui.
-- Date: Wdnesday, January 15, 2025.
-- Version: 1.0
-- Language: Lua.
-- License: MIT License.
-- GitHub: https://github.com/jacobjauregui
-- Description: This file is part of my dortfiles. It contains my custom 
-- configuration for the Wezterm terminal emulator.
-- See https://wezfurlong.org/wezterm/config/lua/config

local wezterm = require('wezterm')
local path = wezterm.config_dir
local dimmer = { brightness = 0.1 }


local config = {
	adjust_window_size_when_changing_font_size = true,
	allow_square_glyphs_to_overflow_width = 'WhenFollowedBySpace', -- 'Always' | 'Never' | 'WhenFollowedBySpace'
	allow_win32_input_mode = false,
	alternate_buffer_wheel_scroll_speed = 3,
	animation_fps = 1,
	anti_alias_custom_block_glyphs = true,
	audible_bell = 'Disabled', -- 'Disabled' | 'SystemBeep'
	automatically_reload_config = true,
	initial_cols = 136,
	initial_rows = 25,
	--background = {
	--	{
	--		source = { 
	--			Color = '#121211'
	--		},
	--		opacity = 1,
	--		width = '100%',
	--		height = '100%'
	--	},
	--	{
	--		source = {
	--			File = path .. '/Parallax/Backgrounds/skulltoon.png',
	--		},
	--		repeat_x = 'NoRepeat',
	--		--repeat_y_size = '200%',
	--		hsb = dimmer,
	--		attachment = { Parallax = 0.1 },
	--	},
	--	{
	--		source = {
	--			File = path .. '/Parallax/Overlays/hunter.png',
	--		},
	--		width = '100%',
	--		repeat_x = 'NoRepeat',
	--		vertical_offset = '80%',
	--		vertical_align = 'Bottom',
	--		repeat_y_size = '100%',
	--		hsb = dimmer,
	--		attachment = { Parallax = 0.2 },
	--	},
	--	{
	--		source = {
	--			File = path .. '/Parallax/Overlays/overlay_1_spines.png',
	--		},
	--		width = '100%',
	--		repeat_x = 'NoRepeat',
	--		vertical_align = 'Bottom',
	--		repeat_y_size = '200%',
	--		hsb = dimmer,
	--		attachment = { Parallax = 0.2 },
	--	},
	--	{
	--		source = {
	--			File = path .. '/Parallax/Overlays/overlay_2_alienball.png',
	--		},
	--		width = '100%',
	--		repeat_x = 'NoRepeat',
	--		vertical_offset = '10%',
	--		repeat_y_size = '200%',
	--		hsb = dimmer,
	--		attachment = { Parallax = 0.3 },
	--	},
	--	{
	--		source = {
	--			File = path .. '/Parallax/Overlays/overlay_3_lobster.png',
	--		},
	--		width = '100%',
	--		repeat_x = 'NoRepeat',
	--		vertical_offset = '30%',
	--		repeat_y_size = '200%',
	--		hsb = dimmer,
	--		attachment = { Parallax = 0.4 },
	--	},
	--	{
	--		source = {
	--			File = path .. '/Parallax/Overlays/hunter.png',
	--		},
	--		width = '100%',
	--		repeat_x = 'NoRepeat',
	--		vertical_align = 'Bottom',
	--		vertical_offset = '50%',
	--		repeat_y_size = '150%',
	--		hsb = dimmer,
	--		attachment = { Parallax = 0.5 },
	--	},
	--},
	bold_brightens_ansi_colors = true, -- 'No' | 'BrightAndBold' | 'BrightOnly'
	bypass_mouse_reporting_modifiers= 'ALT', -- 'ALT' | 'CTRL' | 'SHIFT'
	canonicalize_pasted_newlines= 'None',
	cell_width = 1.1,
	line_height = 1.2,
	char_select_bg_color = '#333333',
	char_select_fg_color = '#dcdd9a',
	char_select_font_size = 12.0,
	check_for_updates = true,
	--check_for_updates_interval_seconds = 86400,
	clean_exit_codes = { 0, 130 },
	--color_scheme = 'Aurora',
	colors = {
		background = '#272932',
		foreground = '#43a8d4',
		cursor_bg = '#c94a66',
		cursor_fg = '#29dedf',
		cursor_border = '#9381ff',
		selection_bg = '#993a5f', --'rgba(65% 25% 40% 50%)',
		selection_fg = '#44c6d5',
		scrollbar_thumb = '#de4688',
		split = '#d1c5c0',
		ansi = {
			'#273243',
			'#d63670',
			'#12da89',
			'#ddd591',
			'#5291c3',
			'#c87acc',
			'#44c6d5',
			'#bcdddb'
		},
		brights = {
			'#594c65',
			'#db719e',
			'#42ce88',
			'#cdc581',
			'#42a0d5',
			'#cc6cc4',
			'#2adaed',
			'#bcedfa'
		},
	},
	command_palette_bg_color = '#272932',
	command_palette_fg_color = '#fdf500',
	command_palette_font_size = 12.0,
	command_palette_rows = nil,
	cursor_blink_ease_in = 'Linear',
	cursor_blink_ease_out = 'Linear',
	cursor_blink_rate = 600,
	cursor_thickness = '1px',
	custom_block_glyphs = true,
	--daemon_options = nil,
	--debug_key_events = nil,
	default_cursor_style = 'BlinkingUnderline', -- 'Steady'/'Blinking'..'Bar' | 'Block' | 'Underline'
	default_cwd = wezterm.home_dir,
	--default_domain = nil,
	--default_gui_startup_args = nil,
	--default_mux_server_domain = nil,
	--default_prog = nil,
	--default_ssh_auth_sock = nil,
	--default_workspace = nil,
	--detect_password_input = nil,
	--disable_default_mouse_blindings = nil,
	--disable_default_quick_select_patterns = nil,
	display_pixel_geometry = 'RGB',
	--dpi = 96.0,
	enable_csi_u_key_encoding = false,
	enable_kitty_keyboard = false,
	enable_scroll_bar = false,
	enable_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = false,
	enable_wayland = false,
	--font = wezterm.font('VictorMono NF', {weight = 'Medium', italic = false}),
	font = wezterm.font_with_fallback{
		{ family = 'VictorMono NF', weight = 'Medium', italic = false },
		{ family = 'JetbrainsMono NF', weight = 'Medium', italic = false },
		'ShureTechMonoNerdFontMono',
		'Liberation Mono',
		'Material Icons',
		'Iconmoon',
		'Aesthetic Iosevka',
		'Roboto Mono',
	},
	font_size = 12,
	foreground_text_hsb = {
		hue = 1.0,
		saturation = 1.0,
		brightness = 1.0
	},
	hide_mouse_cursor_when_typing = true,
	show_tab_index_in_tab_bar = false,
	--min_scroll_bar_height = '1%',
	use_resize_increments = true,
	warn_about_missing_glyphs = false,
	window_background_gradient = {
		colors = {
			'#020d1f',
			'#010001',
			'#1f020d',
		},
		-- Look for more presets in:
		-- https://wezfurlong.org/wezterm/config/lua/config/window_background_gradient.html#radial-gradient
		--preset = 'CubeHelixDefault',
		orientation = {
			Linear = {
				angle = -45.0,
			},
		},
		--interpolation = 'Linear', -- 'Linear' | 'Basis' | 'CatmullRom'
		--blend = 'Rgb', -- 'Rgb' | 'LinearRgb' | 'Hsv' | 'Oklab'
		--noise = 64,
		--segemet_size = 11,
		--segment_smoothness = 0.0,
	},
	window_background_opacity = 1.0,
	window_decorations = 'RESIZE', -- 'INTEGRATED_BUTTONS' | 'TITLE' | 'RESIZE'
	window_frame = {
		border_left_width = 2,
		border_right_width = 2,
		border_bottom_height = 2,
		border_top_height = 0,
		border_left_color = '#454447',
		border_right_color = '#454447',
		border_bottom_color = '#454447',
		border_top_color = '#454447'
	},
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0
	},
}

return config
