local M = {}

M.base_30 = {
    white = "#D9E0EE",
    darker_black = "#191828",
    black = "#1E1D2D",
    black2 = "#252434",
    one_bg = "#2D2C3C",
    one_bg2 = "#363545",
    one_bg3 = "#3E3D4D",
    grey = "#474656",
    grey_fg = "#4E4D5D",
    grey_fg2 = "#555464",
    light_grey = "#605F6F",
    red = "#F07178",
    baby_pink = "#FFA5C3",
    pink = "#F5C2E7",
    line = "#383747",
    green = "#ABE9B3",
    vibrant_green = "#B6F4BE",
    nord_blue = "#8BC2F0",
    blue = "#89B4FA",
    yellow = "#FAE3B0",
    sun = "#FFE9B6",
    purple = "#D1A9E5",
    dark_purple = "#C7A0DC",
    teal = "#A4E9E9",
    orange = "#FECB76",
    cyan = "#89DCEF",
    statusline_bg = "#232232",
    lightbg = "#2F2E3E",
    lightbg2 = "#252434",
    pmenu_bg = "#ABE9B3",
    folder_bg = "#89B4FA",
    lavender = "#C7D1FF",
}

M.base_16 = {
    base00 = "#1E1D2D",
    base01 = "#252434",
    base02 = "#383747",
    base03 = "#474656",
    base04 = "#555464",
    base05 = "#605F6F",
    base06 = "#6B6A7A",
    base07 = "#767587",
    base08 = "#F07178",
    base09 = "#F78C6C",
    base0A = "#FFCB6B",
    base0B = "#C3E88D",
    base0C = "#89DDFF",
    base0D = "#82AAFF",
    base0E = "#C792EA",
    base0F = "#FF5370",
}

M.polish_hl = {
    ["@variable"] = { fg = M.base_30.lavender },
    ["@property"] = { fg = M.base_30.teal },
    ["@variable.builtin"] = { fg = M.base_30.red },
}

vim.opt.bg = "dark"
--vim.opt.termguicolors = true

return M



























