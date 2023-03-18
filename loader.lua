local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local Window = Library.CreateLib("DarkCheatClient Loader", "DarkTheme")

-- Tabs

local Tab1 = Window:NewTab("mm2")

local Tab1Section = Window:NewSection("mm2 scripts by me")

--Buttons

Tab1Section:NewButton("DarkCheatClient Hub 1.0.9", "Hub", function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/VaniaPerets/FolderGui-FolderHub/main/DarkCheatClient(Hub)Version1.0.9.lua", true))()

end)

Tab1Section:NewButton("DarkCheatClient Gui 2.0.1", "Gui", function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/VaniaPerets/FolderGui-FolderHub/main/FolderGuiVersion2.0.1.lua", true))()

end)

Tab1Section:NewButton("DarkCheatClient Commands 1.0", "commands", function()

loadstring(game:HttpGet("https://pastebin.com/raw/ANUKRMHC"))()

end)
