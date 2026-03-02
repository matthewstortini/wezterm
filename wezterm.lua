-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Geometry
config.initial_cols = 120
config.initial_rows = 30

-- Font
config.font = wezterm.font_with_fallback({
  "Iosevka Nerd Font Mono",
  "JetBrainsMono", -- fallback
})
config.font_size = 16

-- Tabs
config.use_fancy_tab_bar = false 
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.tab_max_width = 50

-- -------------------------
-- Random background image
-- -------------------------
local bg_dir = wezterm.config_dir .. "/backgrounds"
local bg_files = wezterm.glob(bg_dir .. "/*.png")

if #bg_files > 0 then
  math.randomseed(os.time())
  local bg = bg_files[math.random(#bg_files)]

  config.background = {
    {
      source = { File = bg },
      width = "100%",
      height = "100%" ,
    },
  }
end

-- update background periodically
local last_reload = 0
wezterm.on("update-right-status", function(window, pane)
  local now = os.time()
  if last_reload == 0 then
    last_reload = now
    return
  end

  if (now - last_reload) >= 300 then
    last_reload = now
    window:perform_action(act.ReloadConfiguration, pane)
  end
end)

-- Finally, return the configuration
return config
