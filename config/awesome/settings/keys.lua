-- __________________________ [ Keybindings ] _________________________________

local gears = require('gears')
local awful = require('awful')
local hotkeys_popup = require('awful.hotkeys_popup')
local beautiful = require('beautiful')
local dpi = beautiful.xresources.apply_dpi
local vars = require('main.user_variables')
--local deco = require('deco')
--local apps = require('settings.apps')

super = 'Mod4'
ctrl = 'Control'
shift = 'Shift'
alt = 'Mod1'
fn = 'Mod3'

function app_shortcuts(modifiers, key, press[, release], data)
	awful.key({
		modifiers,
		key,
		function() 
			awful.spawn(app) 
		end,
		data
	})
end

globalkeys = gears.table.join(
	app_shortcuts({super}, 'b', vars.browser),
	app_shortcuts({super}, 'f', vars.file_manager),
	app_shortcuts({super}, 'Return', vars.terminal),
	app_shortcuts({super}, 'e', vars.editor),
	awful.key({super}, 'd', 
		function()
			awful.spawn.with_shell(vars.app_launcher)
		end, {description = 'Open app launcher', group = 'app'}
	),
	awful.key({super, ctrl}, 'r', awesome.restart, {description = 'Restart AwesomeWM', group = 'WM'}),
	awful.key({super, shift}, 'q', awesome.quit, {description = 'Quit AwesomeWM', group = 'WM'}),
	awful.key({super}, 'F1', hotkeys_popup.show_help, {description = 'Show help', group = 'awesome'}),

	awful.key({super}, "j", 
		function()
			awful.client.focus.byidx(1)
		end, { description = "focus up", group = "client" }
	),

	awful.key({super}, "l", function()
		awful.client.focus.byidx(-1)
		bling.module.flash_focus.flashfocus(client.focus)
	end, { description = "focus down", group = "client" }),

	awful.key({super}, "j", function()
		awful.client.focus.bydirection("left")
		bling.module.flash_focus.flashfocus(client.focus)
	end, { description = "focus left", group = "client" }),

	awful.key({super}, "l", function()
		awful.client.focus.bydirection("right")
		bling.module.flash_focus.flashfocus(client.focus)
	end, { description = "focus right", group = "client" }),


	--super + 'Esc' to open/close the main menu.
	--super + 'q' to close client.
	--super + 't' toogle titlebar.
	--super + 'h' hidde/show wibar.
)
