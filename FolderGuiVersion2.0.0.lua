-- Functions
local function GodMode()
local accessories = {}
function GodMode()
    if game.Players.LocalPlayer.Character then
        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            for _, accessory in pairs(game.Players.LocalPlayer.Character.Humanoid:GetAccessories()) do
                table.insert(accessories, accessory:Clone())
            end
            game.Players.LocalPlayer.Character.Humanoid.Name = "deku"
        end
        local v = game.Players.LocalPlayer.Character["deku"]:Clone()
        v.Parent = game.Players.LocalPlayer.Character
        v.Name = "Humanoid"
        wait(0.1)
        game.Players.LocalPlayer.Character["deku"]:Destroy()
        workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
        for _, accessory in pairs(accessories) do
            game.Players.LocalPlayer.Character.Humanoid:AddAccessory(accessory)
        end
        game.Players.LocalPlayer.Character.Animate.Disabled = true
        wait(0.1)
        game.Players.LocalPlayer.Character.Animate.Disabled = false
    end
end
GodMode()
end

-- Script
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()
local window = library:Window("PlayerToggle")
local window1 = library:Window("VisualToggle")
local window2 = library:Window("ModeToggle")
local window3 = library:Window("TeleportToggle")
local window4 = library:Window("AutoFarmToggle")
window:Slider("Walkspeed",16,100,18, function(v)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)
window:Slider("JumpToggle",0,150,50, function(v)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)
window:Button("Infinite yield", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
window:Button("Invisible", function() 
loadstring(game:HttpGet("https://pastebin.com/raw/4kAxG4Er",true))()
end)
window:Button("FlyToggle(PC)", function()
loadstring(game:HttpGet("https://pastebin.com/raw/fPtT2Q1F",true))()
end)
window:Button("FlyToggle(Mobile)", function()
loadstring(game:HttpGet("https://pastebin.com/raw/rqSquAdQ",true))()
end)
window:Button("Tp Tool", function() 
loadstring(game:HttpGet("https://pastebin.com/raw/GuBiX19e",true))()
end)
window:Button("GodMode", function()
GodMode()
end)
window1:Button("Player Chams", function() 
loadstring(game:HttpGet("https://pastebin.com/raw/jQjQxeeu", true))()
end)
window1:Button("Setting Esp", function()
loadstring(game:HttpGet("https://pastebin.com/raw/vMrw90Rd", true))()
end) 
window1:Button("Player Line", function()
loadstring(game:HttpGet("https://pastebin.com/raw/burXVTFw", true))()
end)
window2:Button("Silence Aim", function()
getgenv().Settings = {
 
   Fov = 90,
 
   Hitbox = "Head",
 
   FovCircle = true,
 
}
end)
window2:Button("GrabGun", function()
   for i,v in pairs(game:GetDescendants()) do
    if v.Name == 'GunDrop' then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    wait(2.9)
    end
    end
 end)
window2:Slider("Hitbox Setting",0,35,0, function(value)
    _G.HeadSize = value
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)
window2:Label("Autofarms", Color3.fromRGB(127, 143, 166))
window3:Button("Lobby", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 138, 37)
end)
window3:Button("Under Lobby", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-153, 243, 109)
end)
window3:Button("Voting Room", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 141, 86)
end)
window2:Button("AutoFarm Coins", function()
for i,v in pairs(game:GetDescendants()) do
    if v.Name == 'Coin' then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    wait(2.2)
    else
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 138, 37)
    end
    end
 end) 
window2:Button("Invis Autofarm Coins", function()
loadstring(game:HttpGet("https://pastebin.com/raw/4kAxG4Er",true))()
wait(2)
for i,v in pairs(game:GetDescendants()) do
    if v.Name == 'Coin' then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    wait(2.2)
    else
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 138, 37)
    end
    end
 end) 
