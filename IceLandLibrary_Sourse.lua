for i,q in pairs(game.CoreGui:GetChildren()) do
if q.Name == "IceLandUi" then
q:Destroy()
end
end

wait(0.5)
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Cam = game.Workspace.CurrentCamera

local library = {Tabs = 0, OptionC = 1}

function library:CreateUi(title, loader, loadertitle)
if loader == false and not loadertitle then
local icelandscreen = Instance.new("ScreenGui")
local icelandmain = Instance.new("Frame")
local icelandtitle = Instance.new("TextLabel")

icelandscreen.Name = "IceLandUi"
icelandscreen.Parent = game.CoreGui
icelandscreen.Enabled = true

icelandmain.Size = UDim2.new(0, 525, 0, 350)
icelandmain.Position = UDim2.new(0, 350, 0, 60)
icelandmain.BackgroundColor3 = Color3.fromRGB(30,30,30)
icelandmain.BorderColor3 = Color3.fromRGB(40,40,40)
icelandmain.BorderSizePixel = 1
icelandmain.Active = true
icelandmain.Draggable = true
icelandmain.Parent = icelandscreen

icelandtitle.Size = UDim2.new(0, 525, 0, 75)
icelandtitle.Position = UDim2.new(0, 0, 0, -75)
icelandtitle.BackgroundColor3 = Color3.fromRGB(28,28,28)
icelandtitle.BorderColor3 = Color3.fromRGB(35,35,35)
icelandtitle.BorderSizePixel = 1
icelandtitle.Active = true
icelandtitle.Draggable = false
icelandtitle.Parent = icelandscreen
icelandtitle.Text = title or "IceLand Ui Library"
icelandtitle.TextSize = 18
icelandtitle.TextScaled = true
icelandtitle.TextColor3 = Color3.fromRGB(255,255,255)
icelandtitle.Font = Enum.Font.SourceSans
icelandtitle.ZIndex = 0



elseif loader == true and not loadertitle then

local loader = Instance.new("ScreenGui")
loader.Name = "LoaderDarkCheatClient"
loader.Parent = game.CoreGui

local loadermain = Instance.new("Frame")
loadermain.Size = UDim2.new(0, 517, 0, 237)
loadermain.Position = Cam.ViewportSize / 2
loadermain.BackgroundColor3 = Color3.fromRGB(30,30,30)
loadermain.BackgroundTransparency = 1
loadermain.BorderColor3 = Color3.fromRGB(30,30,30)
loadermain.BorderSizePixel = 0
loadermain.Active = true
loadermain.Visible = true
loadermain.Draggable = false
loadermain.Parent = loader
wait(0.1)
game:GetService("TweenService"):Create(loadermain, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency=0}):Play()
wait(0.9)
local title = Instance.new("TextLabel")
title.Size = UDim2.new(0, 500, 0, 50)
title.Position = UDim2.new(0, 10, 0, 20)
title.BackgroundColor3 = Color3.fromRGB(29,29,29)
title.BorderColor3 = Color3.new(0, 0, 0)
title.BorderSizePixel = 0
title.Transparency = 1
title.Active = true
title.Draggable = false
title.Parent = loadermain
title.Font = Enum.Font.SourceSansBold
title.Text = "IceLand Ui Loader"
title.TextStrokeTransparency = 0.9
title.TextColor3 = Color3.fromRGB(255,255,255)
 title.TextSize = 24
wait(0.3)
game:GetService("TweenService"):Create(title, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency=0}):Play()
wait(0.2)
local status = Instance.new("TextLabel")
status.Size = UDim2.new(0, 500, 0, 50)
status.Position = UDim2.new(0, 10, 0, 75)
status.BackgroundColor3 = Color3.fromRGB(29,29,29)
status.BorderColor3 = Color3.new(0, 0, 0)
status.BorderSizePixel = 0
status.Transparency = 1
status.Active = true
status.Draggable = false
status.Parent = loadermain
status.Font = Enum.Font.SourceSansBold
status.Text = "Status: Starting Loading.." 
status.TextStrokeTransparency = 0.9
status.TextColor3 = Color3.fromRGB(255,255,255)
status.TextSize = 16

local loadedline = Instance.new("Frame")
loadedline.Name = "Slider"
loadedline.Parent = loadermain
loadedline.BackgroundColor3 = Color3.fromRGB(0,255,255)
loadedline.Size = UDim2.new(0, 10, 0, 25)
loadedline.Position = UDim2.new(0, 10, 0, 190)
loadedline.Transparency = 1

game:GetService("TweenService"):Create(status, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency=0}):Play()
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency=0}):Play()
wait(0.6)
status.Text = "Status: Getting Services.." 
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 50, 0, 25)}):Play()
wait(1.4)
status.Text = "Status: Getting Scripts.." 
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 70, 0, 25)}):Play()
wait(0.9)
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 100, 0, 25)}):Play()
wait(0.9)
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 120, 0, 25)}):Play()
wait(0.5)
status.Text = "Status: Getting Workspace.."
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 230, 0, 25)}):Play()
wait(0.6)
status.Text = "Status: Getting Players.."
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 420, 0, 25)}):Play()
wait(0.8)
status.Text = "Status: Fencing Discord Link.."
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 480, 0, 25)}):Play()
wait(0.9)
status.Text = "Status: Successful Loaded!"
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 495, 0, 25)}):Play()
wait(0.9)
game:GetService("TweenService"):Create(loadermain, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency=1}):Play()
wait(0.9)
loader:Destroy()
loadermain:Destroy()
title:Destroy()
status:Destroy()
loadedline:Destroy()

wait(0.3)

local icelandscreen = Instance.new("ScreenGui")
local icelandmain = Instance.new("Frame")
local icelandtitle = Instance.new("TextLabel")

icelandscreen.Name = "IceLandUi"
icelandscreen.Parent = game.CoreGui
icelandscreen.Enabled = true

icelandmain.Size = UDim2.new(0, 525, 0, 350)
icelandmain.Position = UDim2.new(0, 350, 0, 60)
icelandmain.BackgroundColor3 = Color3.fromRGB(30,30,30)
icelandmain.BorderColor3 = Color3.fromRGB(40,40,40)
icelandmain.BorderSizePixel = 1
icelandmain.Active = true
icelandmain.Draggable = true
icelandmain.Parent = icelandscreen

icelandtitle.Size = UDim2.new(0, 525, 0, 75)
icelandtitle.Position = UDim2.new(0, 0, 0, -75)
icelandtitle.BackgroundColor3 = Color3.fromRGB(28,28,28)
icelandtitle.BorderColor3 = Color3.fromRGB(35,35,35)
icelandtitle.BorderSizePixel = 1
icelandtitle.Active = true
icelandtitle.Draggable = false
icelandtitle.Parent = icelandscreen
icelandtitle.Text = title or "IceLand Ui Library"
icelandtitle.TextSize = 18
icelandtitle.TextScaled = true
icelandtitle.TextColor3 = Color3.fromRGB(255,255,255)
icelandtitle.Font = Enum.Font.SourceSans
icelandtitle.ZIndex = 0

elseif loader == true and loadertitle then

local loader = Instance.new("ScreenGui")
loader.Name = "LoaderDarkCheatClient"
loader.Parent = game.CoreGui

local loadermain = Instance.new("Frame")
loadermain.Size = UDim2.new(0, 517, 0, 237)
loadermain.Position = Cam.ViewportSize / 2
loadermain.BackgroundColor3 = Color3.fromRGB(30,30,30)
loadermain.BackgroundTransparency = 1
loadermain.BorderColor3 = Color3.fromRGB(30,30,30)
loadermain.BorderSizePixel = 0
loadermain.Active = true
loadermain.Visible = true
loadermain.Draggable = false
loadermain.Parent = loader
wait(0.1)
game:GetService("TweenService"):Create(loadermain, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency=0}):Play()
wait(0.9)
local title = Instance.new("TextLabel")
title.Size = UDim2.new(0, 500, 0, 50)
title.Position = UDim2.new(0, 10, 0, 20)
title.BackgroundColor3 = Color3.fromRGB(29,29,29)
title.BorderColor3 = Color3.new(0, 0, 0)
title.BorderSizePixel = 0
title.Transparency = 1
title.Active = true
title.Draggable = false
title.Parent = loadermain
title.Font = Enum.Font.SourceSansBold
title.Text = loadertitle
title.TextStrokeTransparency = 0.9
title.TextColor3 = Color3.fromRGB(255,255,255)
 title.TextSize = 24
wait(0.3)
game:GetService("TweenService"):Create(title, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency=0}):Play()
wait(0.2)
local status = Instance.new("TextLabel")
status.Size = UDim2.new(0, 500, 0, 50)
status.Position = UDim2.new(0, 10, 0, 75)
status.BackgroundColor3 = Color3.fromRGB(29,29,29)
status.BorderColor3 = Color3.new(0, 0, 0)
status.BorderSizePixel = 0
status.Transparency = 1
status.Active = true
status.Draggable = false
status.Parent = loadermain
status.Font = Enum.Font.SourceSansBold
status.Text = "Status: Starting Loading.." 
status.TextStrokeTransparency = 0.9
status.TextColor3 = Color3.fromRGB(255,255,255)
status.TextSize = 16

local loadedline = Instance.new("Frame")
loadedline.Name = "Slider"
loadedline.Parent = loadermain
loadedline.BackgroundColor3 = Color3.fromRGB(0,255,255)
loadedline.Size = UDim2.new(0, 10, 0, 25)
loadedline.Position = UDim2.new(0, 10, 0, 190)
loadedline.Transparency = 1

game:GetService("TweenService"):Create(status, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency=0}):Play()
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency=0}):Play()
wait(0.6)
status.Text = "Status: Getting Services.." 
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 50, 0, 25)}):Play()
wait(1.4)
status.Text = "Status: Getting Scripts.." 
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 70, 0, 25)}):Play()
wait(0.9)
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 100, 0, 25)}):Play()
wait(0.9)
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 120, 0, 25)}):Play()
wait(0.5)
status.Text = "Status: Getting Workspace.."
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 230, 0, 25)}):Play()
wait(0.6)
status.Text = "Status: Getting Players.."
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 420, 0, 25)}):Play()
wait(0.8)
status.Text = "Status: Fencing Discord Link.."
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 480, 0, 25)}):Play()
wait(0.9)
status.Text = "Status: Successful Loaded!"
game:GetService("TweenService"):Create(loadedline, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.new(0, 495, 0, 25)}):Play()
wait(0.9)
game:GetService("TweenService"):Create(loadermain, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency=1}):Play()
wait(0.9)
loader:Destroy()
loadermain:Destroy()
title:Destroy()
status:Destroy()
loadedline:Destroy()
wait(0.3)
local icelandscreen = Instance.new("ScreenGui")
local icelandmain = Instance.new("Frame")
local icelandtitle = Instance.new("TextLabel")

icelandscreen.Name = "IceLandUi"
icelandscreen.Parent = game.CoreGui
icelandscreen.Enabled = true

icelandmain.Size = UDim2.new(0, 525, 0, 350)
icelandmain.Position = UDim2.new(0, 350, 0, 60)
icelandmain.BackgroundColor3 = Color3.fromRGB(30,30,30)
icelandmain.BorderColor3 = Color3.fromRGB(40,40,40)
icelandmain.BorderSizePixel = 1
icelandmain.Active = true
icelandmain.Draggable = true
icelandmain.Parent = icelandscreen

icelandtitle.Size = UDim2.new(0, 525, 0, 75)
icelandtitle.Position = UDim2.new(0, 0, 0, -75)
icelandtitle.BackgroundColor3 = Color3.fromRGB(28,28,28)
icelandtitle.BorderColor3 = Color3.fromRGB(35,35,35)
icelandtitle.BorderSizePixel = 1
icelandtitle.Active = true
icelandtitle.Draggable = false
icelandtitle.Parent = icelandscreen
icelandtitle.Text = title or "IceLand Ui Library"
icelandtitle.TextSize = 18
icelandtitle.TextScaled = true
icelandtitle.TextColor3 = Color3.fromRGB(255,255,255)
icelandtitle.Font = Enum.Font.SourceSans
icelandtitle.ZIndex = 0

end
end

function library:ToggleUi()
for i,q in pairs(game.CoreGui:GetChildren()) do
if q.Name == "IceLandUi" then
if q.Enabled == true then
q.Enabled = false
elseif q.Enabled == false
q.Enabled = true
end
end
end
end

return library
