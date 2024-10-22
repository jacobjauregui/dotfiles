-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "chadracula-evondev",
	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
		EndOfBuffer = { bg = "#141423", fg = "#141423" },
		NonText = { bg = "#141423", fg = "#141423"}
	},
	transparency = false,
}

M.telescope = {
	style = "bordered" -- "borderless" | "bordered"
}

return M
