--  _______________________ [ HackBox Theme ] _________________________________

local gears = require('gears')
local xresources = require('beautiful.xresources')
local fs = gears.filesystem
local dpi = xresources.apply_dpi

local hackbox = fs.get_configuration_dir() .. 'themes/hackbox/'
local font_name = 'VictorMono Nerd Font'

local theme = {
	wallpaper = hackbox .. 'background.png',
	awesome_icon = fs.get_configuration_dir() .. 'themes/hackteam.svg',
	font = font_name .. ' 11',
	--icon_font = icon_font_name .. ' 18',
	font_tag_list = font_name .. ' 13',
	transparent = '#00000000',
	color0 = '#191a25',
	color8 = '#2d3343',
	color1 = '#9b304b',
	color9 = '#b64359',
	color2 = '#31cc81',
	color10 = '#33ce93',
	color3 = '#c8c75b',
	color11 = '#cdca70',
	color4 = '#4cadcf',
	color12 = '#55b3cc',
	color5 = '#836296',
	color13 = '#a47abc',
	color6 = '#65ecef',
	color14 = '#23f3f1',
	color7 = '#bcc5db',
	color15 = '#e6edfd',
	bg_normal = '#252628',
	fg_normal = '#a6b5b6',
	border_normal = '#3b3e3e',
	bg_focus = '#090a0a',
	fg_focus = '#c3c2c1',
	border_focus = '#464648',
	bg_urgent = '#ee738f',
	fg_urgent = '#9b304b',
	border_widget = '#3F3F3F',
	border_marked = '#cceff3',
	fg_widget = '#AECF96',
	fg_center_widget = '#88A175',
	fg_end_widget = '#FF5656',
	bg_widget = '#494B4F',
}

theme.bg_systray = theme.bg_normal

--theme.bar_radius = dpi(10)
--theme.border_radius = dpi(12)
--theme.client_radius = dpi(10)
theme.border_width = dpi(1)
theme.useless_gap = dpi(0) -- default = 0
theme.tooltip_border_width = dpi(1)

theme.menu_border_width = dpi(1)
theme.menu_height = dpi(28) -- default = 15
theme.menu_width = dpi(128)
theme.menu_bg_normal = theme.bg_normal
theme.menu_bg_focus = theme.bg_focus
theme.menu_fg_normal = theme.fg_normal
theme.menu_fg_focus = theme.fg_focus
theme.menu_border_color = '#314c63'
theme.menu_submenu_icon = gears.filesystem.get_themes_dir() .. 'default/submenu.png'

theme.mouse_finder_color = '#CC9393'
--theme.mouse_finder_timeout
--theme.mouse_finder_animate_timeout
--theme.mouse_finder_radius
--theme.mouse_finder_factor

theme.taglist_bg_focus = theme.transparent
theme.taglist_bg_urgent = theme.transparent
theme.taglist_bg_occupied = theme.transparent
theme.taglist_bg_empty = theme.transparent
theme.taglist_bg_volatile = theme.transparent
theme.taglist_fg_focus = theme.color14
theme.taglist_fg_urgent = theme.fg_urgent
theme.taglist_fg_occupied = theme.color13
theme.taglist_fg_empty = theme.bg_widget
theme.taglist_fg_volatile = theme.bg_focus
--theme.taglist_squares_sel   = hackbox .. 'taglist/squarefz.png'
--theme.taglist_squares_unsel = hackbox .. 'taglist/squarez.png'
theme.taglist_squares_resize = 'false'

theme.tasklist_bg_focus = theme.transparent
theme.tasklist_fg_focus = theme.fg_focus
theme.tasklist_bg_urgent = theme.transparent
theme.tasklist_fg_urgent = theme.fg_urgent
theme.tasklist_bg_occupied = theme.transparent
theme.tasklist_fg_occupied = theme.color2
theme.tasklist_bg_empty = theme.transparent
theme.tasklist_fg_empty = theme.fg_normal
theme.tasklist_bg_volatile = theme.transparent
theme.tasklist_fg_volatile = theme.color1

theme.titlebar_bg_focus  = theme.bg_focus
theme.titlebar_bg_normal = theme.bg_normal

theme.tooltip_font = font_name .. ' 10'
theme.tooltip_bg_color = theme.bg_normal
theme.tooltip_fg_color = theme.fg_focus
theme.tooltip_border_color = theme.border_normal
theme.tooltip_opacity = 1.0

theme.layout_tile       = hackbox .. 'layouts/tile.png'
theme.layout_tileleft   = hackbox .. 'layouts/tileleft.png'
theme.layout_tilebottom = hackbox .. 'layouts/tilebottom.png'
theme.layout_tiletop    = hackbox .. 'layouts/tiletop.png'
theme.layout_fairv      = hackbox .. 'layouts/fairv.png'
theme.layout_fairh      = hackbox .. 'layouts/fairh.png'
theme.layout_spiral     = hackbox .. 'layouts/spiral.png'
theme.layout_dwindle    = hackbox .. 'layouts/dwindle.png'
theme.layout_max        = hackbox .. 'layouts/max.png'
theme.layout_fullscreen = hackbox .. 'layouts/fullscreen.png'
theme.layout_magnifier  = hackbox .. 'layouts/magnifier.png'
theme.layout_floating   = hackbox .. 'layouts/floating.png'
theme.layout_cornernw   = hackbox .. 'layouts/cornernw.png'
theme.layout_cornerne   = hackbox .. 'layouts/cornerne.png'
theme.layout_cornersw   = hackbox .. 'layouts/cornersw.png'
theme.layout_cornerse   = hackbox .. 'layouts/cornerse.png'

theme.titlebar_close_button_normal = hackbox .. 'titlebar/close_normal.png'
theme.titlebar_close_button_normal_hover = hackbox .. 'titlebar/close_hover.png'
theme.titlebar_close_button_normal_press = hackbox .. 'titlebar/close_pressed.png'
theme.titlebar_close_button_focus = hackbox .. 'titlebar/close_normal.png'
theme.titlebar_close_button_focus_hover = hackbox .. 'titlebar/close_hover.png'
theme.titlebar_close_button_focus_press = hackbox .. 'titlebar/close_pressed.png'

theme.titlebar_minimize_button_normal = hackbox .. 'titlebar/minimize_normal.png'
theme.titlebar_minimize_button_normal_hover = hackbox .. 'titlebar/minimize_hover.png'
theme.titlebar_minimize_button_normal_press = hackbox .. 'titlebar/minimize_pressed.png'
theme.titlebar_minimize_button_focus  = hackbox .. 'titlebar/minimize_normal.png'
theme.titlebar_minimize_button_focus_hover = hackbox .. 'titlebar/minimize_hover.png'
theme.titlebar_minimize_button_focus_press = hackbox .. 'titlebar/minimize_pressed.png'

theme.titlebar_maximized_button_normal_active = hackbox .. 'titlebar/maximized_normal.png'
theme.titlebar_maximized_button_normal_active_hover = hackbox .. 'titlebar/maximized_hover.png'
theme.titlebar_maximized_button_normal_active_press = hackbox .. 'titlebar/maximized_pressed.png'
theme.titlebar_maximized_button_normal_inactive = hackbox .. 'titlebar/maximized_normal.png'
theme.titlebar_maximized_button_normal_inactive_hover = hackbox .. 'titlebar/maximized_hover.png'
theme.titlebar_maximized_button_normal_inactive_press = hackbox .. 'titlebar/maximized_pressed.png'
theme.titlebar_maximized_button_focus_active  = hackbox .. 'titlebar/maximized_normal.png'
theme.titlebar_maximized_button_focus_active_hover = hackbox .. 'titlebar/maximized_hover.png'
theme.titlebar_maximized_button_focus_active_press = hackbox .. 'titlebar/maximized_pressed.png'
theme.titlebar_maximized_button_focus_inactive  = hackbox .. 'titlebar/maximized_normal.png'
theme.titlebar_maximized_button_focus_inactive_hover = hackbox .. 'titlebar/maximized_hover.png'
theme.titlebar_maximized_button_focus_inactive_press = hackbox .. 'titlebar/maximized_pressed.png'

theme.titlebar_ontop_button_focus_active  = hackbox .. 'titlebar/ontop_focus_active.png'
theme.titlebar_ontop_button_normal_active = hackbox .. 'titlebar/ontop_normal_active.png'
theme.titlebar_ontop_button_focus_inactive  = hackbox .. 'titlebar/ontop_focus_inactive.png'
theme.titlebar_ontop_button_normal_inactive = hackbox .. 'titlebar/ontop_normal_inactive.png'

theme.titlebar_sticky_button_focus_active  = hackbox .. 'titlebar/sticky_focus_active.png'
theme.titlebar_sticky_button_normal_active = hackbox .. 'titlebar/sticky_normal_active.png'
theme.titlebar_sticky_button_focus_inactive  = hackbox .. 'titlebar/sticky_focus_inactive.png'
theme.titlebar_sticky_button_normal_inactive = hackbox .. 'titlebar/sticky_normal_inactive.png'

theme.titlebar_floating_button_focus_active  = hackbox .. 'titlebar/floating_focus_active.png'
theme.titlebar_floating_button_normal_active = hackbox .. 'titlebar/floating_normal_active.png'
theme.titlebar_floating_button_focus_inactive  = hackbox .. 'titlebar/floating_focus_inactive.png'
theme.titlebar_floating_button_normal_inactive = hackbox .. 'titlebar/floating_normal_inactive.png'

return theme
