-- _____________________ [ Global Variables ] _________________________________
--
-- This file contains global variables that are used throughout the configuration.
-- The environment variables are set in the "~/.xprofile" file, which is
-- earlier sourced by the display manager before starting AwesomeWM.
-- It makes it easier to handle the main directories, applications and modules.
-- ____________________________________________________________________________

local _M = {}

_M.modifiers = {
	alt = 'Mod1', -- It's equivalent to 'Option' key in macOS
	super = 'Mod4', -- It's equivalent to 'Command' key in macOS
	ctrl = 'Control', -- It's equivalent to 'CMD' key in macOS
	shift = 'Shift',

}

_M.special_keys = {
	enter = 'Return',
	space = 'space',
	backspace = 'BackSpace',
	delete = 'Delete',
	escape = 'Escape',
	tab = 'Tab',
	up = 'Up',
	down = 'Down',
	left = 'Left',
	right = 'Right',
	f1 = 'F1',
	f2 = 'F2',
	f3 = 'F3',
	f4 = 'F4',
	f5 = 'F5',
	f6 = 'F6',
	f7 = 'F7',
	f8 = 'F8',
	f9 = 'F9',
	f10 = 'F10',
	f11 = 'F11',
	f12 = 'F12'
}

_M.config_home = os.getenv('XDG_CONFIG_HOME')
_M.browser = os.getenv('BROWSER') or 'firefox'
_M.file_manager = os.getenv('FILE_MANAGER') or 'thunar'
_M.editor = os.getenv('EDITOR') or 'vim'
_M.terminal = os.getenv('TERMINAL') or 'xterm'

return _M
