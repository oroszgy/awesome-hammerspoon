-- Specify Spoons which will be loaded
hspoon_list = {
    "AClock",
    "BingDaily",
    -- "Calendar",
    -- "CircleClock",
    "ClipShow",
    "CountDown",
    "FnMate",
    "HCalendar",
    -- "HSaria2",
    -- "HSearch",
    -- "KSheet",
    -- "SpeedMenu",
    -- "TimeFlow",
    -- "UnsplashZ",
    "WinWin",
}

-- appM environment keybindings. Bundle `id` is prefered, but application `name` will be ok.
hsapp_list = {
    {key = 'c', name = 'Google Chrome'},
    {key = 'k', name = 'Slack'},
    {key = 'f', name = 'Forklift'},
    {key = 'g', name = 'Finder'},
    {key = 'i', name = 'iTerm'},
    {key = 'm', name = 'Messages'},
    {key = 'n', name = 'Microsoft OneNoe'},
    {key = 'o', name = 'Microsoft Outlook'},
    {key = 'p', name = 'PyCharm Professional'},
    {key = 'r', name = 'Remember The Milk'},
    {key = 's', name = 'Spotify'},
    {key = 'v', name = 'MacVim'},
    {key = 'x', name = 'Activity Monitor'},
    {key = 'z', name = 'System Preferences'},
}

-- Modal supervisor keybinding, which can be used to temporarily disable ALL modal environments.
hsupervisor_keys = {{"cmd", "shift", "ctrl"}, "Q"}

-- Reload Hammerspoon configuration
hsreload_keys = {{"cmd", "shift", "ctrl"}, "R"}

-- Toggle help panel of this configuration.
hshelp_keys = {{"alt", "shift"}, "/"}

-- aria2 RPC host address
hsaria2_host = "http://localhost:6800/jsonrpc"
-- aria2 RPC host secret
hsaria2_secret = "token"

----------------------------------------------------------------------------------------------------
-- Those keybindings below could be disabled by setting to {"", ""} or {{}, ""}

-- Window hints keybinding: Focuse to any window you want
hswhints_keys = {"alt", "tab"}

-- appM environment keybinding: Application Launcher
hsappM_keys = {"alt", "A"}

-- clipshowM environment keybinding: System clipboard reader
hsclipsM_keys = {"alt", "C"}

-- Toggle the display of aria2 frontend
hsaria2_keys = {"alt", "D"}

-- Launch Hammerspoon Search
hsearch_keys = {"alt", "G"}

-- Read Hammerspoon and Spoons API manual in default browser
hsman_keys = {"alt", "H"}

-- countdownM environment keybinding: Visual countdown
hscountdM_keys = {"alt", "I"}

-- Lock computer's screen
hslock_keys = {"alt", "L"}

-- resizeM environment keybinding: Windows manipulation
hsresizeM_keys = {"alt", "R"}

-- cheatsheetM environment keybinding: Cheatsheet copycat
hscheats_keys = {"alt", "S"}

-- Show digital clock above all windows
hsaclock_keys = {"alt", "T"}

-- Type the URL and title of the frontmost web page open in Google Chrome or Safari.
hstype_keys = {"alt", "V"}

-- Toggle Hammerspoon console
hsconsole_keys = {"alt", "Z"}


hs.hotkey.bind({'cmd', 'alt'}, 'up', '', function() spoon.WinWin:stash() spoon.WinWin:moveAndResize("halfup") end)
hs.hotkey.bind({'cmd', 'alt'}, 'down', '', function() spoon.WinWin:stash() spoon.WinWin:moveAndResize("halfdown") end)
hs.hotkey.bind({'cmd', 'alt'}, 'right', '', function() spoon.WinWin:stash() spoon.WinWin:moveAndResize("halfright") end)
hs.hotkey.bind({'cmd', 'alt'}, 'left', '', function() spoon.WinWin:stash() spoon.WinWin:moveAndResize("halfleft") end)
hs.hotkey.bind({'ctrl', 'cmd', 'alt'}, 'down', '', function() spoon.WinWin:stash() spoon.WinWin:moveAndResize("original") end)
hs.hotkey.bind({'ctrl', 'cmd', 'alt'}, 'up', '', function() spoon.WinWin:stash() spoon.WinWin:moveAndResize("fullscreen") end)
hs.hotkey.bind({'ctrl', 'cmd', 'alt'}, 'right', '', function() spoon.WinWin:stash() spoon.WinWin:moveToScreen("right") end)
hs.hotkey.bind({'ctrl', 'cmd', 'alt'}, 'left', '', function() spoon.WinWin:stash() spoon.WinWin:moveToScreen("left") end)


for _, app in ipairs(hsapp_list) do
		hs.hotkey.bind({'ctrl', 'cmd', 'alt'}, app.key, app.name, function() hs.application.launchOrFocus(app.name) end)
end
