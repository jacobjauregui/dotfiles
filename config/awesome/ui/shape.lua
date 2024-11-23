local lgi - require('lgi')
local cairo = lgi.cairo
local math = math
local rad = math.rad
local floor = math.floor
local min = math.min
local gcolor = require('gears.color')
local parse_color = gcolor.parse_color

local function rounded_rect(args)
	local r1 = args.tl or 0
	local r2 = args.bl or 0
	local r3 = args.br or 0
	local r4 = args.tr or 0
	return function(cr, width, height)
		cr:new_sub_path()
		cr:arc(width - r1, r1, r1, rad(-90), rad(0))
		cr:arc(width - r2, height - r2, r2, rad(0), rad(90))
		cr:arc(r3, height - r3, r3, rad(90), rad(180))
		cr:arc(r4, r4, r4, rad(180), rad(270))
		cr:close_path()
	end
end

local function hex2rgb(color)
	--color = color:gsub("#", "")
	--local strlen = color:len()
	--if strlen == 6 then
	--	return tonumber("0x" .. color:sub(1, 2)) / 255,
	--	       tonumber("0x" .. color:sub(3, 4)) / 255,
	--	       tonumber("0x" .. color:sub(5, 6)) / 255, 1
	--elseif strlen == 8 then
	--	return tonumber("0x" .. color:sub(1, 2)) / 255,
	--	       tonumber("0x" .. color:sub(3, 4)) / 255,
	--	       tonumber("0x" .. color:sub(5, 6)) / 255,
	--	       tonumber("0x" .. color:sub(7, 8)) / 255
	--end
	return parse_color(color)
end

local function circle_filled(color, size)
	color = color or '#FEFEFA'
	local surface = cairo.ImageSurface.create('ARGB32', size, size)
	local cr = cairo.Context.create(surface)
	cr:arc(size / 2, size / 2, size / 2, rad(0), rad(360))
	cr:set_source_rgba(hex2rgb(color))
	cr.antialias = cairo.Antialias.BEST
	cr:fill()

	return surface
end

return {
	rounded_rect = rounded_rect,
	circle_filled = circle_filled,
}
