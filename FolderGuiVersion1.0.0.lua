local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("FolderGui") -- Creates the window

local b = w:CreateFolder("Player") -- Creates the folder(U will put here your buttons,etc)

local c = w:CreateFolder("Visuals") -- Creates the folder(U will put here your buttons,etc)

local d = w:CreateFolder("Modes")-- Creates the folder(U will put here your buttons, etc)

b:Label("Edit here youshelf",{

    TextSize = 25; -- Self Explaining

    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining

    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining  

})

b:Button("InfYield",function()

   print("Executed")

   

 loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

end)

b:Slider("SpeedHack",{

    min = 0; -- min value of the slider

    max = 500; -- max value of the slider

    precise = true; -- max 2 decimals

},function(value)

    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value

end)

b:Slider("JumpHack",{

    min = 50; -- min value of the slider

    max = 500; -- max value of the slider

    precise = true; -- max 2 decimals

},function(value)

    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value

end)

b:Button("God Mode",function()

   print("Executed")

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

 

end)

c:Label("View everyone here!",{

    TextSize = 25; -- Self Explaining

    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining

    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining  

})

c:Button("Player Chams",function()

   print("Executed")

   

 loadstring(game:HttpGet("https://pastebin.com/raw/NTrkMei4", true))()

end)

c:Button("Player Name",function()

   print("Executed")

   

 loadstring(game:HttpGet("https://pastebin.com/raw/vMrw90Rd", true))()

end)

c:Button("Gun ESP(in dev)",function()

local gundrop = Workspace:FindFirstChild("GunDrop");

                GunHighlight.Adornee = gundrop;

                GunHandleAdornment.Adornee = gundrop;

                if gundrop then 

                    GunHandleAdornment.Size = gundrop.Size + Vector3.new(0.05, 0.05, 0.05) ;

                end

end)

d:Label("Edit here aim, kill",{

    TextSize = 25; -- Self Explaining

    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining

    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining  

})

d:Button("GrabGun(only innocent)",function()

   

   for i,v in pairs(game:GetDescendants()) do

    if v.Name == 'GunDrop' then

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame

    wait(2)

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()

    end

    end

 end)

 

d:Slider("Hitbox(only murder)",{

    min = 0; -- min value of the slider

    max = 200; -- max value of the slider

    precise = true; -- max 2 decimals

},function(value)

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

d:Button("AutofarmCoin(all)",function()

   

   for i,v in pairs(game:GetDescendants()) do

    if v.Name == 'Coin' then

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame

    wait(2)

    end

    end

 end)

 

