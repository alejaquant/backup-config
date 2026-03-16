local wezterm = require 'wezterm'
local act = wezterm.action

local config = {}

-- WSL
config.default_prog = { "wsl.exe", "-d", "Ubuntu-24.04", "--cd", "~" }

-- Fuente
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 13

-- Tema
config.color_scheme = "Dracula"

-- Transparencia
config.window_background_opacity = 0.88
config.win32_system_backdrop = "Acrylic"

-- Tabs
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false
config.tab_max_width = 25

-- Decoración ventana
config.window_decorations = "TITLE | RESIZE"

-- Padding
config.window_padding = {
  left = 12,
  right = 12,
  top = 10,
  bottom = 10,
}

-- Scrollback
config.scrollback_lines = 10000

-- Colores de tabs
config.colors = {
  tab_bar = {
    background = "#1e1f29",

    active_tab = {
      bg_color = "#282a36",
      fg_color = "#f8f8f2",
      intensity = "Bold",
    },

    inactive_tab = {
      bg_color = "#1e1f29",
      fg_color = "#6272a4",
    },
  },
}

-- Keybindings
config.keys = {

  {key="c", mods="CTRL|SHIFT", action=act.CopyTo("Clipboard")},
  {key="v", mods="CTRL|SHIFT", action=act.PasteFrom("Clipboard")},

  {key="t", mods="CTRL|SHIFT", action=act.SpawnTab("CurrentPaneDomain")},
  {key="w", mods="CTRL|SHIFT", action=act.CloseCurrentTab{confirm=false}},

  {key="LeftArrow", mods="CTRL|SHIFT", action=act.ActivateTabRelative(-1)},
  {key="RightArrow", mods="CTRL|SHIFT", action=act.ActivateTabRelative(1)},

  {key="|", mods="CTRL|SHIFT", action=act.SplitHorizontal{domain="CurrentPaneDomain"}},
  {key="-", mods="CTRL|SHIFT", action=act.SplitVertical{domain="CurrentPaneDomain"}},

  {key="h", mods="CTRL|SHIFT", action=act.ActivatePaneDirection("Left")},
  {key="l", mods="CTRL|SHIFT", action=act.ActivatePaneDirection("Right")},
  {key="k", mods="CTRL|SHIFT", action=act.ActivatePaneDirection("Up")},
  {key="j", mods="CTRL|SHIFT", action=act.ActivatePaneDirection("Down")},

  {key="x", mods="CTRL|SHIFT", action=act.CloseCurrentPane{confirm=false}},

  {key="s", mods="CTRL|SHIFT", action=act.ShowLauncherArgs{flags="WORKSPACES"}},

  {key="a", mods="CTRL|SHIFT", action=act.SelectTextAtMouseCursor("Cell")},
}

-- Tabs con icono + nombre proyecto
wezterm.on("format-tab-title", function(tab)

  local pane = tab.active_pane
  local cwd = pane.current_working_dir
  local project = ""

  if cwd then
    project = cwd.file_path:match("([^/\\]+)$") or ""
  end

  return {
    { Text = "  " .. project .. " " },
  }

end)

-- Status bar derecha
wezterm.on("update-right-status", function(window)

  local workspace = window:active_workspace()

  window:set_right_status(
    wezterm.format({
      {Foreground={Color="#bd93f9"}},
      {Text=" 󱂬 "..workspace.." "},
    })
  )

end)

return config