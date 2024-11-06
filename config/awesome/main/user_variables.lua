local home = os.getenv('HOME')

local _M = {
	browser = 'firefox',
	file_manager = 'thunar',
	editor = 'nvim',
	terminal = 'wezterm',
	modifiers = {
		alt = 'Mod1',
		super = 'Mod4',
		ctrl = 'Control',
		shift = 'Shift'
	}
}

return _M
