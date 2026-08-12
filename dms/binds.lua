-- ~/.config/hypr/dms/binds.lua
-- Converted from the working pre-Lua DMS binds.conf for Hyprland 0.56.x.
-- Keeps Duane's key layout unchanged.

local function exec(cmd)
    return hl.dsp.exec_cmd(cmd)
end

-- === Application Launchers ===
hl.bind("SUPER + T", exec("kitty"))
hl.bind("SUPER + space", exec("dms ipc call spotlight toggle"))
hl.bind("SUPER + V", exec("dms ipc call clipboard toggle"))
hl.bind("SUPER + M", exec("dms ipc call processlist focusOrToggle"))
hl.bind("SUPER + comma", exec("dms ipc call settings focusOrToggle"))
hl.bind("SUPER + N", exec("dms ipc call notifications toggle"))
hl.bind("SUPER + SHIFT + N", exec("dms ipc call notepad toggle"))
hl.bind("SUPER + Y", exec("dms ipc call dankdash wallpaper"))
hl.bind("SUPER + TAB", exec("dms ipc call hypr toggleOverview"))
hl.bind("SUPER + X", exec("dms ipc call powermenu toggle"))

-- === Cheat sheet ===
hl.bind("SUPER + SHIFT + Slash", exec("dms ipc call keybinds toggle hyprland"))

-- === Security ===
hl.bind("SUPER + ALT + L", exec("dms ipc call lock lock"))
hl.bind("SUPER + SHIFT + E", hl.dsp.exit())
hl.bind("CTRL + ALT + Delete", exec("dms ipc call processlist focusOrToggle"))

-- === Audio Controls ===
hl.bind("XF86AudioRaiseVolume", exec("dms ipc call audio increment 3"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", exec("dms ipc call audio decrement 3"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", exec("dms ipc call audio mute"), { locked = true })
hl.bind("XF86AudioMicMute", exec("dms ipc call audio micmute"), { locked = true })
hl.bind("XF86AudioPause", exec("dms ipc call mpris playPause"), { locked = true })
hl.bind("XF86AudioPlay", exec("dms ipc call mpris playPause"), { locked = true })
hl.bind("XF86AudioPrev", exec("dms ipc call mpris previous"), { locked = true })
hl.bind("XF86AudioNext", exec("dms ipc call mpris next"), { locked = true })

-- === Brightness Controls ===
hl.bind("XF86MonBrightnessUp", exec([[dms ipc call brightness increment 5 ""]]), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", exec([[dms ipc call brightness decrement 5 ""]]), { locked = true, repeating = true })

-- === Window Management ===
hl.bind("SUPER + Q", hl.dsp.window.close({}))
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind("SUPER + SHIFT + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + W", hl.dsp.group.toggle({}))

-- === Focus Navigation ===
hl.bind("SUPER + left", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + H", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "r" }))

-- === Window Movement ===
hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ direction = "d" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({ direction = "r" }))
hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "d" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "r" }))

-- === Column Navigation ===
hl.bind("SUPER + Home", exec("hyprctl dispatch focuswindow first"))
hl.bind("SUPER + End", exec("hyprctl dispatch focuswindow last"))

-- === Monitor Navigation ===
hl.bind("SUPER + CTRL + left", hl.dsp.focus({ monitor = "l" }))
hl.bind("SUPER + CTRL + right", hl.dsp.focus({ monitor = "r" }))
hl.bind("SUPER + CTRL + H", hl.dsp.focus({ monitor = "l" }))
hl.bind("SUPER + CTRL + J", hl.dsp.focus({ monitor = "d" }))
hl.bind("SUPER + CTRL + K", hl.dsp.focus({ monitor = "u" }))
hl.bind("SUPER + CTRL + L", hl.dsp.focus({ monitor = "r" }))

-- === Move to Monitor ===
hl.bind("SUPER + SHIFT + CTRL + left", hl.dsp.window.move({ monitor = "l" }))
hl.bind("SUPER + SHIFT + CTRL + down", hl.dsp.window.move({ monitor = "d" }))
hl.bind("SUPER + SHIFT + CTRL + up", hl.dsp.window.move({ monitor = "u" }))
hl.bind("SUPER + SHIFT + CTRL + right", hl.dsp.window.move({ monitor = "r" }))
hl.bind("SUPER + SHIFT + CTRL + H", hl.dsp.window.move({ monitor = "l" }))
hl.bind("SUPER + SHIFT + CTRL + J", hl.dsp.window.move({ monitor = "d" }))
hl.bind("SUPER + SHIFT + CTRL + K", hl.dsp.window.move({ monitor = "u" }))
hl.bind("SUPER + SHIFT + CTRL + L", hl.dsp.window.move({ monitor = "r" }))

-- === Workspace Navigation ===
hl.bind("SUPER + Page_Down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + Page_Up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + U", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + I", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + CTRL + down", hl.dsp.window.move({ workspace = "e+1", follow = true }))
hl.bind("SUPER + CTRL + up", hl.dsp.window.move({ workspace = "e-1", follow = true }))
hl.bind("SUPER + CTRL + U", hl.dsp.window.move({ workspace = "e+1", follow = true }))
hl.bind("SUPER + CTRL + I", hl.dsp.window.move({ workspace = "e-1", follow = true }))

-- === Move Workspaces ===
hl.bind("SUPER + SHIFT + Page_Down", hl.dsp.window.move({ workspace = "e+1", follow = true }))
hl.bind("SUPER + SHIFT + Page_Up", hl.dsp.window.move({ workspace = "e-1", follow = true }))
hl.bind("SUPER + SHIFT + U", hl.dsp.window.move({ workspace = "e+1", follow = true }))
hl.bind("SUPER + SHIFT + I", hl.dsp.window.move({ workspace = "e-1", follow = true }))

-- === Mouse Wheel Navigation ===
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + CTRL + mouse_down", hl.dsp.window.move({ workspace = "e+1", follow = true }))
hl.bind("SUPER + CTRL + mouse_up", hl.dsp.window.move({ workspace = "e-1", follow = true }))

-- === Numbered Workspaces ===
for i = 1, 9 do
    hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = tostring(i) }))
    hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({ workspace = tostring(i), follow = true }))
end

-- === Column Management ===
hl.bind("SUPER + bracketleft", hl.dsp.layout("preselect l"))
hl.bind("SUPER + bracketright", hl.dsp.layout("preselect r"))

-- === Sizing & Layout ===
hl.bind("SUPER + R", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + CTRL + F", exec([[hyprctl dispatch resizeactive "exact 100%"]]))

-- === Mouse Move / Resize ===
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), {
    mouse = true,
    drag = true,
    description = "Move window",
})
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), {
    mouse = true,
    drag = true,
    description = "Resize window",
})

-- === Keyboard Resize ===
hl.bind("SUPER + code:20", hl.dsp.window.resize({ x = -100, y = 0, relative = true }), {
    description = "Expand window left",
})
hl.bind("SUPER + code:21", hl.dsp.window.resize({ x = 100, y = 0, relative = true }), {
    description = "Shrink window left",
})

hl.bind("SUPER + minus", exec([[hyprctl dispatch resizeactive "-10% 0"]]), { repeating = true })
hl.bind("SUPER + equal", exec([[hyprctl dispatch resizeactive "10% 0"]]), { repeating = true })
hl.bind("SUPER + SHIFT + minus", exec([[hyprctl dispatch resizeactive "0 -10%"]]), { repeating = true })
hl.bind("SUPER + SHIFT + equal", exec([[hyprctl dispatch resizeactive "0 10%"]]), { repeating = true })

-- === Screenshots ===
hl.bind("Print", exec("dms screenshot"))
hl.bind("CTRL + Print", exec("dms screenshot full"))
hl.bind("ALT + Print", exec("dms screenshot window"))

-- === System Controls ===
hl.bind("SUPER + SHIFT + P", hl.dsp.dpms({ action = "toggle" }))
