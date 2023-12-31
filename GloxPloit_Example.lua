-- GloxPloit Ui - Gregory909
-- Helper - FE3TAx (Symphony Hub Dev)
-- Enjoy;)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VaniaPerets/FolderGui-FolderHub/main/GloxPloitProjectLibrary_Sourse.lua", true))()
local main = library:Main("GloxPloit Example")
local tab1 = main:Tab("Test Tab")
local tab2 = main:Tab("Example Tab")

tab1:Label("Just Label", Color3.fromRGB(255,48,48))
tab1:Button("Button", function()
print("Hello Devs!")
end)
tab1:Toggle("Toggle", function(val)
print(val)
end)
tab1:Textbox("TextBox", function(val)
print(val)
end)
tab1:Slider("Slider", 16,250,function(val)
print(val)
end)
tab1:Dropdown("Dropdow.", {"Hello", "World"}, function(val)
print(val)
end)
tab2:Label("Username: "..game.Players.LocalPlayer.Name)
tab2:Button("+5 speed", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed += 5
end)
tab2:Button("-5 speed", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed -= 5
end)
tab2:Toggle("Sit Toggle", function(val)
game.Players.LocalPlayer.Character.Humanoid.Sit = val
end)
tab2:Slider("JumpPower", 50,500,function(val)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = val
end)
tab2:Textbox("Gravity", function(val)
game.Workspace.Gravity = val
end)
tab2:Dropdown("Set Speed", {"16", "25", "50", "100"}, function(val)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(val)
end)
