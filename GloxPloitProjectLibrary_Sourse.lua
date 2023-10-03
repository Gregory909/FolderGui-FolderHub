for i,c in pairs(game.CoreGui:GetDescendants()) do
if c.Name == "GloxPloitProject" then
c:Destroy()
end
end

wait(0.5)

local Library = {Tabs = 0, Option = 1}

function Library:NewMain(title, color)
local screengui = Instance.new("ScreenGui")
screengui.Name = "GloxPloitProject"
screengui.Parent = game.CoreGui

local gloxploitprojectmain = Instance.new("Frame")
gloxploitprojectmain.Name = "GloxPloit Project Main"
gloxploitprojectmain.Size = UDim2.new(0, 450, 0, 300)
gloxploitprojectmain.Position = UDim2.new(0, 200, 0 ,50)
gloxploitprojectmain.BackgroundColor3 = color or Color3.fromRGB(44,45,45)
gloxploitprojectmain.BorderColor3 = Color3.fromRGB(55,55,56)
gloxploitprojectmain.BorderSizePixel = 0
gloxploitprojectmain.Active = true
gloxploitprojectmain.Draggable = true
gloxploitprojectmain.Parent = screengui

local gloxploitprojecttitle = Instance.new("TextLabel")
gloxploitprojecttitle.Name = "Title"
gloxploitprojecttitle.Size = UDim2.new(0, 400, 0, 30)
gloxploitprojecttitle.Position = UDim2.new(0, 0, 0, 0)
gloxploitprojecttitle.BackgroundColor3 = Color3.fromRGB(54,55,54)
gloxploitprojecttitle.BorderColor3 = Color3.fromRGB(55,55,56)
gloxploitprojecttitle.BorderSizePixel = 0
gloxploitprojecttitle.Active = true
gloxploitprojecttitle.Draggable = false
gloxploitprojecttitle.Parent = gloxploitprojectmain
gloxploitprojecttitle.Font = Enum.Font.SourceSansBold
gloxploitprojecttitle.Text = title or "GloxPloit Project v0.1 [BETA]"
gloxploitprojecttitle.TextStrokeTransparency = 0.9
gloxploitprojecttitle.TextColor3 = Color3.fromRGB(255,255,255)
gloxploitprojecttitle.TextSize = 16

local gloxploitprojectclose = Instance.new("TextButton")
gloxploitprojectclose.Name = "Close Button"
gloxploitprojectclose.Size = UDim2.new(0, 50, 0, 30)
gloxploitprojectclose.Position = UDim2.new(0, 400, 0, 0)
gloxploitprojectclose.BackgroundColor3 = Color3.fromRGB(255,35,35)
gloxploitprojectclose.BorderColor3 = Color3.fromRGB(255,48,48)
gloxploitprojectclose.BorderSizePixel = 1
gloxploitprojectclose.Active = true
gloxploitprojectclose.Draggable = false
gloxploitprojectclose.Parent = gloxploitprojectmain
gloxploitprojectclose.Font = Enum.Font.SourceSansBold
gloxploitprojectclose.Text = "X"
gloxploitprojectclose.TextStrokeTransparency = 0.9
gloxploitprojectclose.TextColor3 = Color3.fromRGB(255,255,255)
gloxploitprojectclose.TextSize = 16

local gloxploitprojecttabholder = Instance.new("ScrollingFrame")
gloxploitprojecttabholder.Name = "Tab Hold"
gloxploitprojecttabholder.Parent = gloxploitprojectmain
gloxploitprojecttabholder.Active = true
gloxploitprojecttabholder.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
gloxploitprojecttabholder.BackgroundTransparency = 0
gloxploitprojecttabholder.Position = UDim2.new(0, 30, 0, 50)
gloxploitprojecttabholder.Size = UDim2.new(0, 150, 0, 225)

gloxploitprojectclose.MouseButton1Click:Connect(function()
for i,c in pairs(game.CoreGui:GetDescendants()) do
if c.Name == "GloxPloitProject" then
c:Destroy()
end
end
end)

local TabsForHold = {}

function TabsForHold:AddTab(title)
local GuiTab = Instance.new("Frame")
GuiTab.Name = "GuiTab"
GuiTab.Size = UDim2.new(0, 130, 0, 30)
GuiTab.BackgroundColor3 = Color3.fromRGB(50,50,50)
GuiTab.BackgroundTransparency = 1
GuiTab.BorderColor3 = Color3.fromRGB(35,35,35)
GuiTab.BorderSizePixel = 1
GuiTab.Active = true
GuiTab.Draggable = false
GuiTab.Parent = gloxploitprojecttabholder

local NewTab = Instance.new("TextButton")
NewTab.Name = "Tab"
NewTab.Size = UDim2.new(0, 130, 0, 30)
NewTab.BackgroundColor3 = Color3.fromRGB(50,50,50)
NewTab.BorderColor3 = Color3.fromRGB(35,35,35)
NewTab.BorderSizePixel = 1
NewTab.Active = true
NewTab.Draggable = false
NewTab.Parent = GuiTab
NewTab.Font = Enum.Font.SourceSansBold
NewTab.Text = title
NewTab.TextStrokeTransparency = 0.9
NewTab.TextColor3 = Color3.fromRGB(255,255,255)
NewTab.TextSize = 16

local HubForTab = Instance.new("ScrollingFrame")
HubForTab.Name = "HubForTab"
HubForTab.Parent = gloxploitprojectmain
HubForTab.Active = true
HubForTab.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
HubForTab.BackgroundTransparency = 0
HubForTab.Position = UDim2.new(0, 195, 0 ,50)
HubForTab.Size = UDim2.new(0, 235, 0, 225)

NewTab.MouseButton1Click:Connect(function()
for i,v in pairs(gloxploitprojecttabholder:GetDescendants()) do
				if v.Name == "Tab" then
					game:GetService("TweenService"):Create(v, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
					wait(0.5)
					game:GetService("TweenService"):Create(v, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}):Play()
				end
			end
for i,v in next, gloxploitprojecthubholder:GetChildren() do
				if v.Name == "HubForTab" then
					v.Visible = false
				end
			end
			HubForTab.Visible = true
end)

Library.Tabs = Library.Tabs + 1

local Lib = {}

function Lib:NewLabel(title)
local Label = Instance.new("TextLabel")

Label.Name = "Label"
Label.Size = UDim2.new(0, 235, 0, 50)
Label.Position = UDim2.new(0, 0, 0, 0)
Label.BackgroundColor3 = Color3.fromRGB(50,50,50)
Label.BorderColor3 = Color3.fromRGB(35,35,35)
Label.BorderSizePixel = 1
Label.Active = true
Label.Draggable = false
Label.Parent = HubForTab
Label.Font = Enum.Font.SourceSansBold
Label.Text = title
Label.TextStrokeTransparency = 0.9
Label.TextColor3 = Color3.fromRGB(255,255,255)
Label.TextSize = 16

function Lib:UpdateLabel(title)
Label.Text = title
end
end

function Lib:NewButton(title, callback)
local Button = Instance.new("TextButton")

Button.Name = "Button"
Button.Size = UDim2.new(0, 235, 0, 50)
Button.Position = UDim2.new(0, 0, 0, 0)
Button.BackgroundColor3 = Color3.fromRGB(50,50,50)
Button.BorderColor3 = Color3.fromRGB(35,35,35)
Button.BorderSizePixel = 1
Button.Active = true
Button.Draggable = false
Button.Parent = HubForTab
Button.Font = Enum.Font.SourceSansBold
Button.Text = title
Button.TextStrokeTransparency = 0.9
Button.TextColor3 = Color3.fromRGB(255,255,255)
Button.TextSize = 16

Button.MouseButton1Down:Connect(function()
				game:GetService("TweenService"):Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(35,35,35)}):Play()
			end)

			Button.MouseButton1Up:Connect(function()
				game:GetService("TweenService"):Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(50,50,50)}):Play()
			end)			

			Button.MouseButton1Down:Connect(function()
				callback()
			end)
end
return Lib
end
return TabForHold
end
return Library
