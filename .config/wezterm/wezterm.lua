local wezterm = require 'wezterm'
return {
	--font_dirs = {'~/.config/wezterm/fonts/'},
	--font_locator = 'ConfigDirsOnly',
	font = wezterm.font("MesloLGMDZ Nerd Font",{weight='Regular', italic=false}),
	font_size = 12,
	colorscheme = "Catppuccin Moche",
	default_cursor_style = 'BlinkingBlock', --Steady or Blinkin (Underline, Bar, Block)
	animation_fps = 60,
	cursor_blink_ease_in = 'Constant',
	cursor_blink_ease_out = 'Constant',
	visual_bell = {
		fade_in_function = 'EaseIn',
		fade_in_duration_ms = 150,
		fade_out_function = 'EaseOut',
		fade_out_duration_ms = 150,
		target = 'CursorColor',
	},
	window_decorations = 'RESIZE',
	window_background_image='/home/jauregui/.config/wezterm/background/arch.jpg',
	text_background_opacity = 1.0,
	window_background_opacity = 0.7,
	window_background_image_hsb = {
		hue = 1.0,
		saturation = 1.0,
		brightness = 0.4,
	},
	window_padding = {
		top = '0.5pt',
		left = '0.5pt',
		right = '0.0pt',
		bottom = '0.0pt',
	},
	enable_scroll_bar = true,
	min_scroll_bar_height = '50.5pt',
	--max_scroll_bar_height = '50.0pt',
	scrollback_lines = 4500,
	enable_wayland = true,
	use_fancy_tab_bar = false,
	enable_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = false,
	--tab_max_width = 10,
	window_frame = {
		font = wezterm.font("Nimbus Sans"),
		font_size = 12,
		active_titlebar_bg = '#0f0f0f',
		active_titlebar_fg = '#afafaf',
		active_titlebar_border_bottom = '#0f0f0f',
		inactive_titlebar_bg = '#0f0f0f',
		inactive_titlebar_fg = '#5e5e5e',
		inactive_titlebar_border_bottom = '#0f0f0f',
		button_fg = '#afafaf',
		button_bg = '#0f0f0f',
		button_hover_fg = '#7b0b0b',
		button_hover_bg = '#0f0f0f',
		border_top_height = '2pt',
		border_left_width = '2pt',
		border_right_width = '3pt',
		border_bottom_height = '6pt',
		border_top_color = '#0b5c7c',
		border_left_color = '#0b5c7c',
		border_right_color = '#0b5c7c',
		border_bottom_color = '#0b5c7c',
	},
	--color_scheme_dirs = {'/home/jauregui/.config/wezterm/colors/wezterm'},
	colors = {
		tab_bar = {
			background = '#1f2f3f',
			inactive_tab_edge = '#3f3f3f',
			active_tab = {
				bg_color = '#000000',
				fg_color = '#e9e9e9',
				intensity = 'Normal',
				underline = 'None',
				italic = false,
				strikethrough = false,
			},
			inactive_tab_hover = {
				bg_color = '#000000',
				fg_color = '#808080',
				italic = false,
				intensity = 'Normal',
				underline = 'None',
				strikethrough = false,
			},
			new_tab = {
				bg_color = '#0f0f0f',
				fg_color = '#006a00',
			},
			new_tab_hover = {
				font_size = 16,
				bg_color = '#0f0f0f',
				fg_color = '#008a00',
				intensity = 'Bold',
				italic = true,
			},
		},
		foreground = '#d4d4f4',
		cursor_fg = '#d4d4f4',
		cursor_bg = 'rgba(0, 90, 210, 0.5)',
		cursor_border = '#2522df',
		selection_fg = 'none',
		selection_bg = 'rgba(0, 110, 250, 0.5)',
		split = '#4f0e6b',
		visual_bell = '#fafc2b',
		scrollbar_thumb = '#204a9b',
		scrollbar_border = '#ffffff',
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
	},
}
