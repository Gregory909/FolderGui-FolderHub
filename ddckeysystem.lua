local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local Window = Library.CreateLib("DCC Key System", "DarkTheme")

-- Tabs

local Tab1 = Window:NewTab("KeySystem")

local Tab1Section = Tab1:NewSection("Enter key for Loader Scripts")

-- Nothing

Tab1Section:NewLabel("Key System is 1 linkvertise and 1 pastebin")

Tab1Section:NewTextBox("Enter Key Here", "enter key for loader(no hard)", function(value)

local KeyCode = "BHmTGd7H"

if value == KeyCode  then

game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "DCC Key System",["Text"] = "Checking key.."})

wait(1.5)

game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "DCC Key System",["Text"] = "Corrected Key!"})

wait(0.9)

loadstring(game:HttpGet("https://raw.githubusercontent.com/VaniaPerets/FolderGui-FolderHub/main/DarkCheatClient(Hub)Version1.0.9.lua", true))()

else

game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "DCC Key System",["Text"] = "Checking key.."})

wait(1.5)

game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "DCC Key System",["Text"] = "Invaild Key!"})

end

end)

Tab1Section:NewButton("Get Key", " Get Key here..", function()

setclipboard("https://link-target.net/640423/darkcheatclient-keysystem")

game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "DCC Key System",["Text"] = "Copied to Clipboard! Paste it in browser!"})

end)
