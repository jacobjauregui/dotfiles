-- Wezterm configuration on Lua. See https://wezfurlong.org/wezterm/config/lua/config

local wezterm = require('wezterm')
local path = wezterm.config_dir
local dimmer = { brightness = 0.1 }


local config = {
	-- If the environment is known to be tiling then the effective value is 
	-- false, and true otherwise.
	adjust_window_size_when_changing_font_size = false,
	allow_square_glyphs_to_overflow_width = 'WhenFollowedBySpace', -- 'Always' | 'Never' | 'WhenFollowedBySpace'
	allow_win32_input_mode = false,
	alternate_buffer_wheel_scroll_speed = 3,
	animation_fps = 1,
	anti_alias_custom_block_glyphs = true,
	audible_bell = 'Disabled', -- 'Disabled' | 'SystemBeep'
	automatically_reload_config = true,
	background = {
		{
			source = {
				File = path .. '/Parallax/Backgrounds/spaceship_bg_1.png',
			},
			repeat_x = 'Mirror',
			hsb = dimmer,
			attachment = { Parallax = 0.1 },
		},
		{
			source = {
				File = path .. '/Parallax/Overlays/overlay_1_spines.png',
			},
			width = '100%',
			repeat_x = 'NoRepeat',
			vertical_align = 'Bottom',
			repeat_y_size = '200%',
			hsb = dimmer,
			attachment = { Parallax = 0.2 },
		},
		{
			source = {
				File = path .. '/Parallax/Overlays/overlay_2_alienball.png',
			},
			width = '100%',
			repeat_x = 'NoRepeat',
			vertical_offset = '10%',
			repeat_y_size = '200%',
			hsb = dimmer,
			attachment = { Parallax = 0.3 },
		},
		{
			source = {
				File = path .. '/Parallax/Overlays/overlay_3_lobster.png',
			},
			width = '100%',
			repeat_x = 'NoRepeat',
			vertical_offset = '30%',
			repeat_y_size = '200%',
			hsb = dimmer,
			attachment = { Parallax = 0.4 },
		},
		{
			source = {
				File = path .. '/Parallax/Overlays/overlay_4_spiderlegs.png',
			},
			width = '100%',
			repeat_x = 'NoRepeat',
			vertical_offset = '50%',
			repeat_y_size = '150%',
			hsb = dimmer,
			attachment = { Parallax = 0.5 },
		},
	},
	bold_brightens_ansi_colors = true, -- 'No' | 'BrightAndBold' | 'BrightOnly'
	bypass_mouse_reporting_modifiers= 'ALT', -- 'ALT' | 'CTRL' | 'SHIFT'
	canonicalize_pasted_newlines= 'None',
	cell_width = 1.0,
	line_height = 1.0,
	char_select_bg_color = '#333333',
	char_select_fg_color = '#dcdd9a',
	char_select_font_size = 14.0,
	check_for_updates = false,
	--check_for_updates_interval_seconds = 86400,
	clean_exit_codes = { 0, 130 },
	--color_scheme = 'Aurora',
	colors = {
		background = '#333333',
		foreground = '#1793d1',
		cursor_bg = '#0044de',
		cursor_fg = '#f6f9fc',
		cursor_border = '#1793d1',
		selection_bg = '#1e356c',
		selection_fg = '#c2c1c3',
		scrollbar_thumb = '#9f9f9f',
		split = '#0044de',
		ansi = {
			'#000000',
			'#cd3131',
			'#0dbc79',
			'#e5e510',
			'#2472c8',
			'#bc3fbc',
			'#11a8cd',
			'#e5e5e5',
		},
		brights = {
			'#666666',
			'#f14c4c',
			'#23d18b',
			'#f5f543',
			'#3b8eea',
			'#d670d6',
			'#29b8db',
			'#e5e5e5',
		},
	},
	command_palette_bg_color = '#333333',
	command_palette_fg_color = '#ecf2f5',
	command_palette_font_size = 14.0,
	command_palette_rows = nil,
	cursor_blink_ease_in = 'Linear',
	cursor_blink_ease_out = 'Linear',
	cursor_blink_rate = 800,
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
	font = wezterm.font('VictorMono NF', {weight = 'Medium', italic = false}),
	font_size = 13,
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
	window_decorations = 'NONE', -- 'INTEGRATED_BUTTONS' | 'TITLE' | 'RESIZE'
	window_frame = {
		border_left_width = '1px',
		border_right_width = '1px',
		border_bottom_height = '1px',
		border_top_height = '1px',
		border_left_color = '#00ceff',
		border_right_color = '#00ceff',
		border_bottom_color = '#00ceff',
		border_top_color = '#00ceff'
	},
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0
	},
}

return config
