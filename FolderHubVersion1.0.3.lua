-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Frame.BackgroundTransparency = 0.500
Frame.Position = UDim2.new(0.858712733, 0, 0.0237762257, 0)
Frame.Size = UDim2.new(0.129513338, 0, 0.227972031, 0)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(2, 1, 2, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "FolderHub"
TextButton.TextColor3 = Color3.fromRGB(25, 50, 15)
TextButton.TextScaled = true
TextButton.TextSize = 50.000
TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextStrokeTransparency = 0.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, "LeftShift" , false , game)
end)

UITextSizeConstraint.Parent = TextButton
UITextSizeConstraint.MaxTextSize = 40
 
wait(1.1)

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("FolderHub", "DarkTheme")

-- Tabs

local Tab1 = Window:NewTab("PlayerToggle")
local Tab1Section = Tab1:NewSection("Speed, Jump")
local Tab2 = Window:NewTab("VisualToggle")
local Tab2Section = Tab2:NewSection("Coins, Gun")
local Tab3 = Window:NewTab("ModesToggle")
local Tab3Section = Tab3:NewSection("Grab Gun, Kill all")
local Tab4 = Window:NewTab("TeleportToggle")
local Tab4Section = Tab4:NewSection("Lobby, Map")
local Tab5 = Window:NewTab("AutofarmToggle")
local Tab5Section = Tab5:NewSection("Coins, XP")
local Tab6 = Window:NewTab("Credits")
local Tab6Section = Tab6:NewSection("Made by VaniaPerets#8776, Devs EclipseHub")
local Tab7= Window:NewTab("AnimationToggle(BETA)")
local Tab7Section = Tab7:NewSection("Sit, Headless and others..") 
local Tab8 = Window:NewTab("Settings") 
local Tab8Section = Tab8:NewSection("Set something..")

-- Buttons/Windows/Idk

Tab1Section:NewToggle("Fov", "Fov", function(state)
    if state then
        game.Workspace.CurrentCamera.FieldOfView = 140
    else
        game.Workspace.CurrentCamera.FieldOfView = 75
    end
end)

Tab1Section:NewButton("InfiniteJumpToggle", "IJT", function()
 
 -- Gui to Lua
-- Version: 3.2

-- Instances:

local InfJumpGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Top = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local InfiniteJump = Instance.new("TextButton")
local infjumpenabled = false
--Properties:

InfJumpGui.Name = "InfJumpGui"
InfJumpGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
InfJumpGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = InfJumpGui
Main.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Main.Position = UDim2.new(0.414008319, 0, 0.424691409, 0)
Main.Size = UDim2.new(0.171983361, 0, 0.0987654254, 0)

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(1, 0, 0.231244698, 0)

TextLabel.Parent = Top
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0.92806381, 0, 1, 0)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "Infinite Jump by mug#1941"
TextLabel.TextColor3 = Color3.fromRGB(74, 74, 74)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

close.Name = "close"
close.Parent = Top
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundTransparency = 1.000
close.Position = UDim2.new(0.946004272, 0, 0, 0)
close.Size = UDim2.new(0.0539956801, 0, 1, 0)
close.Font = Enum.Font.Code
close.Text = "X"
close.TextColor3 = Color3.fromRGB(74, 74, 74)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true

InfiniteJump.Name = "InfiniteJump"
InfiniteJump.Parent = Main
InfiniteJump.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
InfiniteJump.BorderColor3 = Color3.fromRGB(74, 74, 74)
InfiniteJump.Position = UDim2.new(0.112903222, 0, 0.325633258, 1)
InfiniteJump.Size = UDim2.new(0.774193406, 0, 0.535669923, 0)
InfiniteJump.Font = Enum.Font.Code
InfiniteJump.Text = "Disabled"
InfiniteJump.TextColor3 = Color3.fromRGB(74, 74, 74)
InfiniteJump.TextSize = 24.000
InfiniteJump.TextWrapped = true

-- Scripts:

local function CFFF_fake_script() -- close.LocalScript 
	local script = Instance.new('LocalScript', close)

	script.Parent.MouseButton1Click:Connect(function()
		local frame = script.Parent.Parent.Parent
		frame:TweenPosition(UDim2.new(0.4, 0,1.5, 0))
		infjumpenabled = false
		wait(1)
		frame.Parent:Destroy()
	end)
end
coroutine.wrap(CFFF_fake_script)()
local function VESU_fake_script() -- InfiniteJump.EnableDisableInfJump 
	local script = Instance.new('LocalScript', InfiniteJump)

	
	script.Parent.MouseButton1Click:Connect(function()
		if infjumpenabled == false then
			infjumpenabled = true
			script.Parent.Text = "Enabled"
		elseif infjumpenabled == true then
			infjumpenabled = false
			script.Parent.Text = "Disabled"
		end
	end)
end
coroutine.wrap(VESU_fake_script)()
local function GSJXM_fake_script() -- Main.Draggable 
	local script = Instance.new('LocalScript', Main)

	local Frame = script.Parent
	Frame.Selectable = true
	Frame.Active = true
	Frame.Draggable = true
end
coroutine.wrap(GSJXM_fake_script)()
local function MZUWYOR_fake_script() -- Main.Opening 
	local script = Instance.new('LocalScript', Main)

	script.Parent.Position = UDim2.new(0.33, 0,2, 0)
	script.Parent:TweenPosition(UDim2.new(0.33, 0,0.3, 0))
end
coroutine.wrap(MZUWYOR_fake_script)()
local function HLKTLMK_fake_script() -- Main.infjumpscript 
	local script = Instance.new('LocalScript', Main)

	game:GetService("UserInputService").JumpRequest:Connect(function()
		if infjumpenabled == true then
			game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState("Jumping")
		end
	end)
end
coroutine.wrap(HLKTLMK_fake_script)()
end)

Tab1Section:NewTextBox("SpeedToggle", "Speedhack", function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

Tab1Section:NewTextBox("JumpToggle", "JumpPower", function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Tab1Section:NewToggle("Shift Run", "Out of my way", function(run)
if run then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
else
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end
end)

Tab1Section:NewButton("God Mode", "god", function()
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

Tab1Section:NewButton("Invisible", "Invisible", function()
print("Executed")

loadstring(game:HttpGet("https://pastebin.com/raw/4kAxG4Er",true))()
end)

Tab1Section:NewButton("Fly PC", "FlyPc", function()
print("Executed")

loadstring(game:HttpGet("https://pastebin.com/raw/fPtT2Q1F",true))()
end)

Tab1Section:NewButton("Fly Mobile", "FlyMobile", function()
print("Executed")

loadstring(game:HttpGet("https://pastebin.com/raw/rqSquAdQ",true))()
end)

Tab1Section:NewButton("Click Tp Tool", "goto", function()
print("Executed")

loadstring(game:HttpGet("https://pastebin.com/raw/GuBiX19e",true))()
end)

Tab2Section:NewButton("Player Name", "Name", function()
   print("Executed")
   
loadstring(game:HttpGet("https://pastebin.com/raw/3hcWWm3q", true))()
end)

Tab2Section:NewButton("Player Chams", "Name", function()
   print("Executed!")
   
 loadstring(game:HttpGet("https://pastebin.com/raw/jQjQxeeu", true))()
end)

Tab2Section:NewButton("Player Line", " Line", function()
   print("Executed")
   
 loadstring(game:HttpGet("https://pastebin.com/raw/burXVTFw", true))()
end)

Tab2Section:NewButton("Gun ESP", "See Gun", function(state)
while wait(0.9) do
for i, gundrop in ipairs(workspace:GetDescendants()) do
if gundrop:FindFirstChild("GunDrop") then
if not gundrop:FindFirstChild("EspBox") then
if gundrop ~= game.Players.LocalPlayer.Character then
local esp = Instance.new("BoxHandleAdornment", gundrop) 
esp.Adornee = gundrop
esp.ZIndex = 0
esp.Size = Vector3.new(1, 2, 1)
esp.Transparency = 0.39
esp.Color3 = Color3.fromRGB(255,255,0)
esp.AlwaysOnTop = true
esp.Name = "EspBox" 
end
end
end
end
end
end)

Tab2Section:NewButton("Coins ESP", "See Coins", function()
while wait(0.9) do
for i, coin in ipairs(workspace:GetDescendants()) do
if coin:FindFirstChild("Coin") then
if not coin:FindFirstChild("EspBox") then
if coin ~= game.Players.LocalPlayer.Character then
local esp = Instance.new("BoxHandleAdornment", coin) 
esp.Adornee = coin
esp.ZIndex = 0
esp.Size = Vector3.new(2, 1, 1)
esp.Transparency = 0.67
esp.Color3 = Color3.fromRGB(238,64,0)
esp.AlwaysOnTop = true
esp.Name = "EspBox" 
end
end
end
end
end
end)

Tab3Section:NewButton("Kill Player", "Fe Yeet Gui", function()
    print("Executed")
	
	loadstring(game:HttpGet("https://pastebin.com/raw/saMtiek2",true))()
end)

Tab3Section:NewButton("Fling(NEW)", "!!Get out!!", function()
    print("Executed")
	
loadstring(game:HttpGet("https://shattered-gang.lol/scripts/fe/touch_fling.lua"))()
end)

Tab3Section:NewButton("Aimbot", "load it", function()
    print("Executed")
	
	getgenv().Settings = {
 
   Fov = 90,
 
   Hitbox = "Head",
 
   FovCircle = true,
 
}
end)

Tab3Section:NewButton("Grab Gun(only innocent)", "grab guns",function()
    local lastCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    wait(0.3)
        for i,v in pairs(game:GetDescendants()) do
    if v.Name == 'GunDrop' then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    wait(2.2)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = LastCFrame
  wait(0.6)
 lastCFrame = false
    end
    end
 end)

Tab3Section:NewTextBox("Hitbox(only murder)"," Hit your damage", function(value)
    print("Executed")
    
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

Tab4Section:NewButton("Lobby", "Goto lobby", function()
    print("Executed")
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 138, 37)
end)

Tab4Section:NewButton("Voting Room", "Goto votingroom", function()
    print("Executed")
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 141, 86)
end)

Tab4Section:NewButton("Map(House 2)", "Goto House 2", function()
    print("Executed")
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
end)

Tab4Section:NewButton("Map(Hospital 3)", "Goto Hospital 3", function()
    print("Executed")
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
end)

Tab4Section:NewButton("Map(MulBase)", "Goto MulBase", function()
    print("Executed")
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3340, 26, 2835)

end)

Tab4Section:NewButton("Map(Hotel 3)", "Goto Hospital 3", function()
    print("Executed")
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1924, 7, 84)
end)

Tab4Section:NewButton("Map(Police Station)", "Goto Police Station", function()
    print("Executed")
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2936, 40, 330)
end)

Tab4Section:NewButton("Map(Mansion 2)", "Goto Mansion 2", function()
    print("Executed")
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-940, 17, -1956)
end)

Tab4Section:NewButton("Map(Office 3)", "Goto Office 3", function()
    print("Executed")
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145, 50, -3000)
end)

Tab4Section:NewButton("Map(Reseach Facility)", "Goto Reseach Facility", function()
    print("Executed")
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(458, 36, -92)
end)

Tab4Section:NewButton("Map(nStudio)", "Goto nStudio", function()
    print("Executed")
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145, 50, -3000)
end)

Tab4Section:NewButton("Map(Factory 1)", "Goto Mansion 2", function()
    print("Executed")
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-940, 17, -1956)
end)

Tab4Section:NewButton("Under Lobby", "Goto Under Lobby", function()
    print("Executed")
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-153, 243, 109)
end)

Tab5Section:NewButton("AutofarmCoin", "Farm Coin", function()
print("Executed")
for i,v in pairs(game:GetDescendants()) do
    if v.Name == 'Coin' then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    wait(2.2)
    else
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentX, currentY, currentZ)
    end
    end
 end) 
 
Tab5Section:NewButton("InvisAutofarmCoins", "Farm Coin", function()
print("Executed")

wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-153, 243, 109)
wait(0.9)
loadstring(game:HttpGet("https://pastebin.com/raw/4kAxG4Er",true))()
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 138, 37)
wait(2)
for i,v in pairs(game:GetDescendants()) do
    if v.Name == 'Coin' then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    wait(2.2)
    end
    end
 end) 
 
Tab7Section:NewButton("Sit", "Anim", function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/e sit2" ,"All")
end) 

Tab7Section:NewLabel("Others animation in development")
 
 Tab8Section:NewKeybind("Hide Script", "Turn off..", Enum.KeyCode.LeftShift, function()
	Library:ToggleUI()
end)

Tab8Section:NewColorPicker("Color FolderHub", "Change You Color FolderHub", Color3.fromRGB(0,0,0), function(color)
    for theme, color in pairs(themes) do
    Section:NewColorPicker(Ocean, "Nothing Happened"..theme, color, function(color2)
        Library:ChangeColor(theme, color3)
    end)
end
end)
