-- Pull in the wezterm API
local wezterm = require 'wezterm'
-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action

-- Colorscheme
config.color_scheme = 'rose-pine'
config.colors = {background = 'black'}
config.enable_tab_bar = false
-- config.window_background_opacity = 0.85

-- Keybinds
config.keys = {
    {
        key = 'k',
        mods = 'ALT|SHIFT',
        action = wezterm.action.IncreaseFontSize
    },
    {
        key = 'j',
        mods = 'ALT|SHIFT',
        action = wezterm.action.DecreaseFontSize
    }
}
-- config.disable_default_mouse_bindings = true
config.mouse_bindings = {
    {
        event = { Up = { streak = 1, button = 'Left' } },
        mods = 'CTRL',
        action = act.OpenLinkAtMouseCursor,
    },
    {
        event = { Up = { streak = 1, button = 'Left' } },
        mods = 'NONE',
        action = act.CompleteSelection 'ClipboardAndPrimarySelection',
    },
}
config.window_padding = {
		left = 2,
		right = 2,
		top = 15,
		bottom = 0,
}

return config
