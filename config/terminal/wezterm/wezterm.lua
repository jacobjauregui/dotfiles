-- Wezterm configuration on Lua. See https://wezfurlong.org/wezterm/config/lua/config

local wezterm = require('wezterm')
local config = {}
local dimmer = { brightness = 0.1 }

-- If the environment is known to be tiling then the effective value of 
-- adjust_window_size_when_changing_font_size is false, and true otherwise.
config.adjust_window_size_when_changing_font_size = false
config.allow_square_glyphs_to_overflow_width = 'Always' -- 'WhenFollowedBySpace' | 'Always' | 'Never'
config.allow_win32_input_mode = true
config.alternate_buffer_wheel_scroll_speed = 3
config.animation_fps = 1
config.anti_alias_custom_block_glyphs = true
config.audible_bell = 'Disabled' -- 'SystemBeep' | 'Disabled'
config.automatically_reload_config = true
config.background = {
	{
		source = {
			File = '/home/elli0t/.config/wezterm/Parallax/Backgrounds/spaceship_bg_1.png',
		},
		repeat_x = 'Mirror',
		hsb = dimmer,
		attachment = { Parallax = 0.1 },
	},
	{
		source = {
			File = '/home/elli0t/.config/wezterm/Parallax/Overlays/overlay_1_spines.png',
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
			File = '/home/elli0t/.config/wezterm/Parallax/Overlays/overlay_2_alienball.png',
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
			File = '/home/elli0t/.config/wezterm/Parallax/Overlays/overlay_3_lobster.png',
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
			File = '/home/elli0t/.config/wezterm/Parallax/Overlays/overlay_4_spiderlegs.png',
		},
		width = '100%',
		repeat_x = 'NoRepeat',
		vertical_offset = '50%',
		repeat_y_size = '150%',
		hsb = dimmer,
		attachment = { Parallax = 0.5 },
	},
}
config.font = wezterm.font('VictorMono NF', {weight = 'Medium', italic = false})
config.font_size = 12
--
return config
----colorscheme = 'Catppuccin Moche',
--default_cursor_style = 'BlinkingUnderline', --Steady or Blinkin (Underline, Bar, Block)
--cursor_blink_ease_in = 'Constant',
--cursor_blink_ease_out = 'Constant',
--visual_bell = {
--	fade_in_function = 'EaseIn',
--	fade_in_duration_ms = 150,
--	fade_out_function = 'EaseOut',
--	fade_out_duration_ms = 150,
--	target = 'CursorColor'
--},
--window_decorations = 'RESIZE',
--text_background_opacity = 1.0,
--window_padding = {
--	top = '1px',
--	left = '1px',
--	right = '1px',
--	bottom = '1px'
--},
--enable_scroll_bar = false,
--scrollback_lines = 4500,
--enable_wayland = false,
--use_fancy_tab_bar = true,
--enable_tab_bar = false,
--hide_tab_bar_if_only_one_tab = true,
--tab_bar_at_bottom = false,
--window_frame = {
--	--font = wezterm.font('Roboto'),
--	--font_size = 11,
--	active_titlebar_bg = '#0f0f0f',
--	active_titlebar_fg = '#afafaf',
--	--active_titlebar_border_bottom = '#0f0f0f',
--	inactive_titlebar_bg = '#0f0f0f',
--	inactive_titlebar_fg = '#5e5e5e',
--	--inactive_titlebar_border_bottom = '#0f0f0f',
--	button_fg = '#afafaf',
--	button_bg = '#0f0f0f',
--	button_hover_fg = '#7b0b0b',
--	button_hover_bg = '#0f0f0f',
--	border_top_height = '1px',
--	border_left_width = '1px',
--	border_right_width = '1px',
--	border_bottom_height = '1px',
--	border_top_color = '#009aff',
--	border_left_color = '#009aff',
--	border_right_color = '#009aff',
--	border_bottom_color = '#009aff'
--},
--colors = {
--	tab_bar = {
--		background = '#1f2f3f',
--		inactive_tab_edge = '#3f3f3f',
--		active_tab = {
--			bg_color = '#101011',
--			fg_color = '#c3c2c1',
--			intensity = 'Normal',
--			underline = 'None',
--			italic = false,
--			strikethrough = false
--		},
--		inactive_tab_hover = {
--			bg_color = '#292829',
--			fg_color = '#a1a1a1',
--			italic = true,
--			intensity = 'Normal',
--			underline = 'None',
--			strikethrough = false
--		},
--		new_tab = {
--			bg_color = '#0f0f0f',
--			fg_color = '#006a00'
--		},
--		new_tab_hover = {
--			bg_color = '#0f0f0f',
--			fg_color = '#008a00',
--			intensity = 'Bold',
--			italic = true
--		},
--	},
--	foreground = '#0a8aff',
--	cursor_fg = '#e1e1e1',
--	cursor_bg = 'rgba(0, 90, 210, 0.5)',
--	cursor_border = '#c0df4a',
--	selection_fg = 'none',
--	selection_bg = 'rgba(0, 110, 250, 0.5)',
--	split = '#c2c1c3',
--	visual_bell = '#fafc2b',
	-- scrollbar_thumb = '#cdc7c2',
	--scrollbar_background = '#ffffff',
	--scrollbar_border = '#ffffff',
	--ansi = {
	  --'black',
	  --'maroon',
	  --'green',
	  --'olive',
	  --'navy',
	  --'purple',
	  --'teal',
	  --'silver',
	--},
	--brights = {
	  --'grey',
	  --'red',
	  --'line',
	  --'yellow',
	  --'blue',
	  --'fuchsia',
	  --'aqua',
	  --'white',
	--},
	--indexed = { [136] = '#af8700' },
	--compose_cursor = 'orange',
	--copy_mode_activate_highlight_bg = { Color = '#000000' },
	--copy_mode_active_highlight_fg = { AnsiColor = 'Black' },
	--copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
	--copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },
	--quick_select_label_bg = { Color = 'peru' },
	--quick_select_label_fg = { Color = '#ffffff' },
	--quick_select_match_bg = { AnsiColor = 'Navy' },
	--quick_select_match_fg = { Color = '#ffffff' },
--},
