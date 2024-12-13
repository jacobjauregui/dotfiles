pcall(require, 'luarocks.loader')

local gears = require('gears')
local awful = require('awful')
require('awful.autofocus')
local beautiful = require('beautiful')
local menubar = require('menubar')
local wibox = require('wibox')
local hotkeys_popup = require('awful.hotkeys_popup')
local dpi = beautiful.xresources.apply_dpi
--local keys = require('settings.keys')

M = {}
M.vars = require('main.env')

config_home = M.vars.config_home
config_awesome = config_home .. 'awesome/'
themes = config_awesome .. 'themes/'
assets = themes .. 'assets/'

require('awful.hotkeys_popup.keys')
require('main.error_handling')

beautiful.init(themes .. 'hackbox/theme.lua')

super = M.vars.modifiers.super
ctrl = M.vars.modifiers.ctrl
shift = M.vars.modifiers.shift
alt = M.vars.modifiers.alt

backspace = M.vars.special_keys.backspace
enter = M.vars.special_keys.enter
space = M.vars.special_keys.space
tab = M.vars.special_keys.tab

f1 = M.vars.special_keys.f1
f2 = M.vars.special_keys.f2
f3 = M.vars.special_keys.f3
f4 = M.vars.special_keys.f4
f5 = M.vars.special_keys.f5
f6 = M.vars.special_keys.f6
f7 = M.vars.special_keys.f7
f8 = M.vars.special_keys.f8
f9 = M.vars.special_keys.f9
f10 = M.vars.special_keys.f10
f11 = M.vars.special_keys.f11
f12 = M.vars.special_keys.f12

-- This must be inside beatiful module (theme.lua), and call it in rc.lua 
-- after beautiful.init() in mymainmenu setup or another widget that requires 
-- icons. Example:
-- mymainmenu = awful.menu({
	-- items = { 
		-- { 'Terminal', terminal, beautiful.icons.terminal_icon },
		-- ...
	-- }
-- })
local icons = {
	browser_icon = assets .. M.vars.browser .. '.png',
	editor_icon = assets .. M.vars.editor .. '.png',
	file_manager_icon = assets .. M.vars.file_manager .. '.png',
	terminal_icon = assets .. M.vars.terminal .. '.png',
}

menubar.utils.terminal = M.vars.terminal

-- {{{ Layouts
awful.layout.layouts = {
	awful.layout.suit.tile,
	awful.layout.suit.tile.left,
	awful.layout.suit.tile.bottom,
	awful.layout.suit.tile.top,
	awful.layout.suit.fair,
	awful.layout.suit.fair.horizontal,
	awful.layout.suit.spiral,
	awful.layout.suit.spiral.dwindle,
	awful.layout.suit.max,
	awful.layout.suit.max.fullscreen,
	awful.layout.suit.magnifier,
	awful.layout.suit.corner.nw,
	awful.layout.suit.floating,
	-- awful.layout.suit.corner.ne,
	-- awful.layout.suit.corner.sw,
	-- awful.layout.suit.corner.se,
}
-- }}}

editor_cmd = M.vars.terminal .. ' -e ' .. M.vars.editor

myawesomemenu = {
	{ 'hotkeys', function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
	{ 'manual', M.vars.terminal .. ' -e man awesome' },
	{ 'edit config', editor_cmd .. ' ' .. awesome.conffile },
	{ 'restart', awesome.restart },
	{ 'quit', function() awesome.quit() end },
}

mymainmenu = awful.menu(
{
	items = {
		{ 'Awesome', myawesomemenu, beautiful.awesome_icon },
		{ 'Terminal', M.vars.terminal, icons.terminal_icon },
		{ 'Browser', M.vars.browser, icons.browser_icon },
		{ 'Thunar', M.vars.file_manager, icons.file_manager_icon },
	}
})

mylauncher = awful.widget.launcher{ 
	image = beautiful.awesome_icon,
	menu = mymainmenu,
}

menubar.geometry = {
	x = 1366 / 2 - 400,
	y = 32,
	width = dpi(800),
	height = dpi(32),
}

mykeyboardlayout = awful.widget.keyboardlayout()
mytextclock = wibox.widget.textclock()

-- {{{ Taglist buttons
local taglist_buttons = gears.table.join(
	awful.button({ }, 1, function(t) t:view_only() end),
	awful.button({ super }, 1, function(t)
		if client.focus then
			client.focus:move_to_tag(t)
		end
	end),
	awful.button({ }, 3, awful.tag.viewtoggle),
	awful.button({ super }, 3, function(t)
		if client.focus then
			client.focus:toggle_tag(t)
		end
	end),
	awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
	awful.button({ }, 5, function(t) awful.tag.viewprev(t.screen) end)
)
-- }}}

-- {{{ Tasklist buttons
local tasklist_buttons = gears.table.join(
	awful.button({ }, 1, function(c)
		if c == client.focus then
			c.minimized = true
		else
			c:emit_signal('request::activate', 'tasklist', {raise = true})
		end
	end),
	awful.button({ }, 3, function()
		awful.menu.client_list({ theme = { width = 250 } })
	end),
	awful.button({ }, 4, function()
		awful.client.focus.byidx(1)
	end),
	awful.button({ }, 5, function()
		awful.client.focus.byidx(-1)
	end)
)
-- }}}

local function set_wallpaper(s)
	if beautiful.wallpaper then
		local wallpaper = beautiful.wallpaper
		if type(wallpaper) == 'function' then
			wallpaper = wallpaper(s)
		end
		gears.wallpaper.maximized(wallpaper, s, true)
	end
end

screen.connect_signal('property::geometry', set_wallpaper)

-- {{{ Wibar
awful.screen.connect_for_each_screen(function(s)
	set_wallpaper(s)
	awful.tag({ '', '', '', '', '', '' }, s, awful.layout.layouts[1])
	s.mypromptbox = awful.widget.prompt()
	s.mylayoutbox = awful.widget.layoutbox(s)
	s.mylayoutbox:buttons(gears.table.join(
		awful.button({ }, 1, function() awful.layout.inc( 1) end),
		awful.button({ }, 3, function() awful.layout.inc(-1) end),
		awful.button({ }, 4, function() awful.layout.inc( 1) end),
		awful.button({ }, 5, function() awful.layout.inc(-1) end)
		)
	)
	s.mytasklist = awful.widget.tasklist {
		screen  = s,
		filter  = awful.widget.tasklist.filter.currenttags,
		buttons = tasklist_buttons
	}

	s.mytaglist = awful.widget.taglist {
		screen  = s,
		filter  = awful.widget.taglist.filter.all,
		buttons = taglist_buttons,
		style = {
			spacing = 5,
			font = 'ShureTechMono Nerd Font Mono 28',
			shape = gears.shape.rounded_rect,
		},
		layout = {
			spacing = 2,
			spacing_widget = {
				color = '#b8cfc0',
				shape = gears.shape.circle,
				widget = wibox.widget.separator,
			},
			layout = wibox.layout.fixed.horizontal,
		},
	}

	s.mywibox = awful.wibar({ 
		position = 'top', 
		ontop = true,
		type = 'dock',
		screen = s,
		margins = dpi(10),
		width = '98%',
		height = dpi(32),
		border_width = 1,
		border_color = '#fd5591',
		bg = '#6d2d48aa',
		stretch = false, --deprecated. use beautiful.wibar_stretch
		shape = function(cr, w, h) 
			gears.shape.rounded_rect(cr, w, h, dpi(24)) 
		end,
	}):setup {
		layout = wibox.layout.align.horizontal,
		-- {{{ Left widgets
		{
			{
				wibox.container.margin(mylauncher, dpi(10), dpi(0), dpi(0), dpi(0),'#00000000'),
			layout = wibox.layout.fixed.horizontal
			},
			{
				wibox.container.margin(s.mypromptbox, dpi(5), dpi(5), dpi(0), dpi(0)),
				layout = wibox.layout.fixed.horizontal
			},
			spacing = dpi(10),
			layout = wibox.layout.fixed.horizontal
		},
		-- }}}
		-- {{{ Middle widgets
		{
			{
				--wibox.widget.separator(),
				layout = wibox.layout.fixed.horizontal,
			},
			{
				shape = gears.shape.rounded_rect,
				wibox.container.margin(s.mytaglist, dpi(24), dpi(24), dpi(3), dpi(3)),
				layout = wibox.layout.fixed.horizontal
			},
			{
				--wibox.widget.separator(),
				layout = wibox.layout.fixed.horizontal,
			},
			spacing = dpi(450),
			layout = wibox.layout.fixed.horizontal
		},
		-- }}}
		-- {{{ Right widgets
		{
			{
				wibox.widget.systray(),
				layout = wibox.layout.fixed.horizontal,
			},
			{
				wibox.container.margin(mytextclock, dpi(10), dpi(10), dpi(5), dpi(5)),
				layout = wibox.layout.fixed.horizontal,
			},
			{
				wibox.container.margin(s.mylayoutbox, dpi(10), dpi(15), dpi(5), dpi(5)),
				layout = wibox.layout.fixed.horizontal,
			},
			spacing = dpi(5),
			layout = wibox.layout.fixed.horizontal,
		},
		-- }}}
	}
end)
-- }}}

-- {{{ Mouse bindings
root.buttons(gears.table.join(
	awful.button({ }, 3, function () mymainmenu:toggle() end),
	awful.button({ }, 4, awful.tag.viewnext),
	awful.button({ }, 5, awful.tag.viewprev)
))
-- }}}

globalkeys = gears.table.join(
	awful.key({super}, 'Left', awful.tag.viewprev, 
		{description = 'view previous', group = 'tag'}
	),
	awful.key({super}, 'Right', awful.tag.viewnext, 
		{description = 'view next', group = 'tag'}
	),
	awful.key({super}, backspace, awful.tag.history.restore, 
		{description = 'go back', group = 'tag'}
	),
	awful.key({super}, 'l', 
		function() 
			awful.client.focus.bydirection('right') 
		end, {description = 'Focus right', group = 'client'}
	),
	awful.key({super}, 'j', 
		function() 
			awful.client.focus.bydirection('left') 
		end, {description = 'Focus left', group = 'client'}
	),
	awful.key({super}, 'i', 
		function() 
			awful.client.focus.bydirection('up') 
		end, {description = 'Focus up', group = 'client'}
	),
	awful.key({super}, 'k', 
		function() 
			awful.client.focus.bydirection('down') 
		end, {description = 'focus down', group = 'client'}
	),
	awful.key({super, alt}, 'l', 
		function() 
			awful.client.swap.bydirection('right') 
		end, {description = 'Swap with client at right', group = 'client'}
	),
	awful.key({super, alt}, 'j',
		function() 
			awful.client.swap.bydirection('left') 
		end, {description = 'Swap with client at left', group = 'client'}
	),
	awful.key({super, alt}, 'i',
		function() 
			awful.client.swap.bydirection('up') 
		end, {description = 'Swap with client above', group = 'client'}
	),
	awful.key({super, alt}, 'k', 
		function() 
			awful.client.swap.bydirection('down') 
		end, {description = 'Swap with client below', group = 'client'}
	),
	awful.key({super, ctrl}, 'n',
		function()
			local c = awful.client.restore()
			if c then
				c:emit_signal('request::activate', 'key.unminimize', {raise = true})
			end
		end, {description = 'restore minimized', group = 'client'}
	),
	awful.key({super}, 'u', awful.client.urgent.jumpto,
		{description = 'jump to urgent client', group = 'client'}
	),
	awful.key({super}, enter, 
		function() 
			awful.spawn(M.vars.terminal)
		end, {description = 'Open terminal', group = 'launcher'}
	),
	awful.key({super}, 'b', 
		function()
			awful.spawn(M.vars.browser)
		end, {description = 'Open browser', group = 'launcher'}
	),
	awful.key({super}, 'f',
		function()
			awful.spawn(M.vars.file_manager)
		end, {description = 'Open file manager', group = 'launcher'}
	),
	awful.key({super}, 'r', 
		function() 
			awful.screen.focused().mypromptbox:run()
		end, {description = 'run prompt', group = 'launcher'}
	),
	awful.key({super}, f10,
		function() 
			menubar.show() 
		end, {description = 'show the menubar', group = 'launcher'}
	),
	awful.key({super}, 'Escape', 
		function() 
			mymainmenu:toggle({x = 10, y = 32}) 
		end, {description = 'Show main menu', group = 'awesome'}
	),
	awful.key({super}, f1, hotkeys_popup.show_help,
		{description = 'Show help', group = 'awesome'}
	),
	awful.key({super, ctrl}, 'r', awesome.restart,
		{description = 'Restart AwesomeWM', group = 'awesome'}
	),
	awful.key({super, ctrl}, 'q', awesome.quit,
		{description = 'Quit AwesomeWM', group = 'awesome'}
	),
	awful.key({super}, 'x',
		function ()
			awful.prompt.run {
				prompt = 'Lua: > ',
				textbox = awful.screen.focused().mypromptbox.widget,
				exe_callback = awful.util.eval,
				history_path = awful.util.get_cache_dir() .. '/history_eval'
			}
		end, {description = 'Lua execute prompt', group = 'awesome'}
	),
	awful.key({super}, 'Up',
		function()
			awful.tag.incncol(1, nil, true)
		end, {description = 'increase the number of columns', group = 'layout'}
	),
	awful.key({super}, 'Down',
		function()
			awful.tag.incncol(-1, nil, true)
		end, {description = 'decrease the number of columns', group = 'layout'}
	),
	awful.key({super, shift}, 'Up',
		function()
			awful.tag.incmwfact(0.05)
		end, {description = 'increase master width factor', group = 'layout'}
	),
	awful.key({super, shift}, 'Down',
		function()
			awful.tag.incmwfact(-0.05)
		end, {description = 'decrease master width factor', group = 'layout'}
	),
	awful.key({super, shift}, '.',
		function()
			awful.tag.incnmaster(1, nil, true)
		end, {description = 'increase the number of master clients', group = 'layout'}
	),
	awful.key({ super, shift }, ',',
		function()
			awful.tag.incnmaster(-1, nil, true)
		end, {description = 'decrease the number of master clients', group = 'layout'}
	),
	awful.key({super}, space,
		function()
			awful.layout.inc(1)
		end, {description = 'select next', group = 'layout'}
	),
	awful.key({super, shift}, space,
		function()
			awful.layout.inc(-1)
		end, {description = 'select previous', group = 'layout'}
	),
	awful.key({super}, ']',
		function()
			awful.screen.focus_relative(1)
		end, {description = 'focus the next screen', group = 'screen'}
	),
	awful.key({super}, '[',
		function()
			awful.screen.focus_relative(-1)
		end, {description = 'focus the previous screen', group = 'screen'}
	)
)

-- {{{ Client keys
clientkeys = gears.table.join(
	awful.key({ super, ctrl }, 'f',
		function(c)
			c.fullscreen = not c.fullscreen
			c:raise()
		end,
		{ description = 'toggle fullscreen', group = 'client' }
	),

	awful.key({ super, }, 'q',
		function(c) 
			c:kill() 
		end, { description = 'close', group = 'client' }
	),

	awful.key({ super, ctrl }, space, awful.client.floating.toggle,
		{ description = 'toggle floating', group = 'client'}),

	awful.key({ super, ctrl }, enter, 
		function(c) 
			c:swap(awful.client.getmaster()) 
		end, { description = 'move to master', group = 'client'}
	),
	awful.key({ super, }, 'o', 
		function(c) 
			c:move_to_screen() 
		end, { description = 'move to screen', group = 'client'}
	),
	awful.key({ super, ctrl }, 't', 
		function(c) 
			c.ontop = not c.ontop 
		end, { description = 'toggle keep on top', group = 'client'}
	),
	awful.key({ super, }, 'n',
		function (c)
			c.minimized = true
		end , { description = 'minimize', group = 'client'}
	),
	awful.key({ super, }, 'm',
		function (c)
			c.maximized = not c.maximized
			c:raise()
		end, { description = '(un)maximize', group = 'client' }
	),
	awful.key({ super, ctrl }, 'm',
		function (c)
			c.maximized_vertical = not c.maximized_vertical
			c:raise()
		end , { description = '(un)maximize vertically', group = 'client' }
	),
	awful.key({ super, shift }, 'm',
		function (c)
			c.maximized_horizontal = not c.maximized_horizontal
			c:raise()
		end , { description = '(un)maximize horizontally', group = 'client' }
	)
)
-- }}}

-- {{{ Tag bindings
for i = 1, 6 do
	globalkeys = gears.table.join(globalkeys,
		awful.key({ super }, '#' .. i + 9,
			function ()
				local screen = awful.screen.focused()
				local tag = screen.tags[i]
				if tag then
					tag:view_only()
				end
			end, { description = 'view tag #'..i, group = 'tag' }
		),
		awful.key({ super, ctrl }, '#' .. i + 9,
			function ()
				local screen = awful.screen.focused()
				local tag = screen.tags[i]
				if tag then
					awful.tag.viewtoggle(tag)
				end
			end, { description = 'toggle tag #' .. i, group = 'tag' }
		),
		awful.key({ super, shift }, '#' .. i + 9,
			function ()
				if client.focus then
					local tag = client.focus.screen.tags[i]
					if tag then
						client.focus:move_to_tag(tag)
					end
				end
			end, { description = 'move focused client to tag #'..i, group = 'tag' }
		),
		awful.key({ super, ctrl, shift }, '#' .. i + 9,
			function ()
				if client.focus then
					local tag = client.focus.screen.tags[i]
					if tag then
						client.focus:toggle_tag(tag)
					end
				end
			end, { description = 'toggle focused client on tag #' .. i, group = 'tag' }
		)
	)
end
-- }}}

-- {{{ Client key bindings
clientbuttons = gears.table.join(
	awful.button({ }, 1, function (c)
		c:emit_signal('request::activate', 'mouse_click', {raise = true})
	end),
	awful.button({ super }, 1, function (c)
		c:emit_signal('request::activate', 'mouse_click', {raise = true})
		awful.mouse.client.move(c)
	end),
	awful.button({ super }, 3, function (c)
		c:emit_signal('request::activate', 'mouse_click', {raise = true})
		awful.mouse.client.resize(c)
	end)
)
-- }}}

root.keys(globalkeys)

-- {{{ Rules
awful.rules.rules = {
	{
		rule = { },
		properties = {
			border_width = beautiful.border_width,
			border_color = beautiful.border_normal,
			focus = awful.client.focus.filter,
			raise = true,
			keys = clientkeys,
			buttons = clientbuttons,
			screen = awful.screen.preferred,
			placement = awful.placement.no_overlap+awful.placement.no_offscreen
		}
	},
	{
		rule_any = {
			instance = {
				'DTA',
				'copyq',
				'pinentry',
			},
			class = {
				'Arandr',
				'Blueman-manager',
				'Gpick',
				'Kruler',
				'MessageWin',
				'Sxiv',
				'Tor Browser', -- Needs a fixed window size to avoid fingerprinting by screen size.
				'Wpa_gui',
				'veromix',
				'xtightvncviewer'
			},
			-- Note that the name property shown in xprop might be set slightly after creation of the client
			-- and the name shown there might not match defined rules here.
			name = {
				'Event Tester',
			},
			role = {
				'AlarmWindow',
				'ConfigManager',
				'pop-up',
			}
		},
		properties = { floating = true }
	},
	{
		rule_any = {
			type = { 'normal', 'dialog' }
		},
		properties = { titlebars_enabled = true }
	},
	--{ 
	--	rule = { 
	--		class = 'Firefox' 
	--	},
	--	properties = { screen = 1, tag = '2' } 
	--},
}
-- }}}

client.connect_signal('manage', function(c)
	if awesome.startup
	and not c.size_hints.user_position
	and not c.size_hints.program_position then
		awful.placement.no_offscreen(c)
	end
end)

-- {{{ Titlebar Signal
client.connect_signal('request::titlebars', function(c)
	local buttons = gears.table.join(
		awful.button({ }, 1, function()
			c:emit_signal('request::activate', 'titlebar', {raise = true})
			awful.mouse.client.move(c)
		end),
		awful.button({ }, 3, function()
			c:emit_signal('request::activate', 'titlebar', {raise = true})
			awful.mouse.client.resize(c)
		end)
	)

	-- {{{ Titlebar
	awful.titlebar(c, {
		size = dpi(36),
		position = 'top',
		shape = function(cr, w, h)
			gears.shape.rounded_rect(cr, w, h, dpi(15))
		end 
	}) : setup {
		-- {{{ Left widgets
		{
			{
				{
					awful.titlebar.widget.closebutton(c),
					awful.titlebar.widget.minimizebutton(c),
					awful.titlebar.widget.maximizedbutton(c),
					spacing = dpi(10),
					layout = wibox.layout.fixed.horizontal()
				},
				layout = wibox.layout.fixed.horizontal
			},
			left = dpi(15),
			right = dpi(15),
			top = dpi(8),
			bottom = dpi(8),
			widget = wibox.container.margin,
		},
		-- }}}
		-- {{{ Middle widgets
		{
			{
				{ -- Icon&Title
					align   = 'center',
					awful.titlebar.widget.iconwidget(c),
					awful.titlebar.widget.titlewidget(c),
					spacing = dpi(6),
					layout  = wibox.layout.flex.horizontal
				},
				layout  = wibox.layout.fixed.horizontal,
			},
			buttons = buttons,
			left = dpi(500),
			right = dpi(115),
			top = dpi(5),
			bottom = dpi(5),
			widget = wibox.container.margin
		},
		-- }}}
		-- {{{ Right widgets
		{
			layout = wibox.layout.fixed.horizontal()
		},
		-- }}}
		layout = wibox.layout.align.horizontal
	}
	-- }}}
end)
-- }}}

client.connect_signal('mouse::enter',
	function(c)
		c:emit_signal('request::activate', 'mouse_enter', {raise = false})
	end
)
client.connect_signal('focus',
	function(c)
		c.border_color = beautiful.border_focus
	end
)
client.connect_signal('unfocus',
	function(c) 
		c.border_color = beautiful.border_normal 
	end
)

local function autostart()
	awful.spawn('picom --config ' .. config_home .. 'picom/picom.conf')
end

autostart()
