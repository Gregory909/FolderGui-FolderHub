for i,ui in pairs(game.CoreGui:GetChildren()) do
if ui.Name == "GloxPloit" then
ui:Destroy()
end
end

wait(1)

local library = {}

function library:Main(title)
local gui = Instance.new("ScreenGui")
gui.Name = "GloxPloit"
gui.Parent = game.CoreGui

local holdermain = Instance.new("Frame")
holdermain.Name = "HolderGui"
holdermain.Size = UDim2.new(0, 2, 0, 2)
holdermain.Position = UDim2.new(0.5, 0, 0.5, 0)
holdermain.AnchorPoint = Vector2.new(0.5, 0.5)
holdermain.BackgroundColor3 = Color3.fromRGB(25,25,25)
holdermain.BorderColor3 = Color3.fromRGB(30,30,30)
holdermain.BorderSizePixel = 0
holdermain.Active = true
holdermain.Draggable = true
holdermain.Parent = gui

local uicorner_1 = Instance.new("UICorner", holdermain)
uicorner_1.CornerRadius = UDim.new(0, 10)
wait(0.1)
game:GetService("TweenService"):Create(holdermain, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 500, 0, 2)}):Play()
wait(1)
game:GetService("TweenService"):Create(holdermain, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 500, 0, 300)}):Play()
wait(1)
local origmain = Instance.new("Frame")
origmain.Name = "GuiScript"
origmain.Size = UDim2.new(0, 450, 0, 250)
origmain.Position = UDim2.new(0,25 , 0, 25)
origmain.BackgroundColor3 = Color3.fromRGB(35,35,35)
origmain.BorderColor3 = Color3.new(0, 0, 0)
origmain.BorderSizePixel = 0
origmain.Active = true
origmain.Draggable = false
origmain.Parent = holdermain

local uicorner_2 = Instance.new("UICorner", origmain)
uicorner_2.CornerRadius = UDim.new(0, 4)

local tabcontainer = Instance.new("ScrollingFrame", origmain)
tabcontainer.Name = "TabContainer"
tabcontainer.Size = UDim2.new(0, 150, 0, 225)
tabcontainer.Position = UDim2.new(0, 0, 0, 25)
tabcontainer.BackgroundColor3 = Color3.fromRGB(21,21,21)
tabcontainer.BorderColor3 = Color3.new(0, 0, 0)
tabcontainer.BorderSizePixel = 0
tabcontainer.Active = true
tabcontainer.Draggable = false
tabcontainer.Visible = true
tabcontainer.ScrollBarThickness = 0
tabcontainer.CanvasSize = UDim2.new(0, 0, 1, 0)

local hubcontainer = Instance.new("Frame", origmain)
hubcontainer.Name = "HubContainer"
hubcontainer.Size = UDim2.new(0, 300, 0, 225)
hubcontainer.Position = UDim2.new(0, 150, 0, 25)
hubcontainer.BackgroundColor3 = Color3.fromRGB(21,21,21)
hubcontainer.BorderColor3 = Color3.new(0, 0, 0)
hubcontainer.BorderSizePixel = 0
hubcontainer.Active = true
hubcontainer.Draggable = false
hubcontainer.Visible = true

local titleofmain = Instance.new("TextLabel")
titleofmain.Name = "Title"
titleofmain.Size = UDim2.new(0, 450, 0, 25)
titleofmain.Position = UDim2.new(0, 0, 0, 0)
titleofmain.BackgroundColor3 = Color3.fromRGB(19,19,19)
titleofmain.BorderColor3 = Color3.new(0, 0, 0)
titleofmain.BorderSizePixel = 0
titleofmain.Active = true
titleofmain.Draggable = false
titleofmain.Parent = origmain
titleofmain.TextSize = 22
titleofmain.Text = title
titleofmain.Font = Enum.Font.SourceSans
titleofmain.TextXAlignment = Enum.TextXAlignment.Left
titleofmain.TextColor3 = Color3.fromRGB(255,255,255)

local titleclose = Instance.new("TextButton")
titleclose.Name = "Close Button"
titleclose.Size = UDim2.new(0, 50, 0, 25)
titleclose.Position = UDim2.new(0, 400, 0, 0)
titleclose.BackgroundColor3 = Color3.fromRGB(255,19,19)
titleclose.BorderColor3 = Color3.new(0, 0, 0)
titleclose.BorderSizePixel = 0
titleclose.Active = true
titleclose.Draggable = false
titleclose.Parent = origmain
titleclose.TextSize = 25
titleclose.Text = "X"
titleclose.Font = Enum.Font.SourceSans
titleclose.TextColor3 = Color3.fromRGB(255,255,255)

local titlehide = Instance.new("TextButton")
titlehide.Name = "Close Button"
titlehide.Size = UDim2.new(0, 50, 0, 25)
titlehide.Position = UDim2.new(0, 350, 0, 0)
titlehide.BackgroundColor3 = Color3.fromRGB(50,50,50)
titlehide.BorderColor3 = Color3.new(0, 0, 0)
titlehide.BorderSizePixel = 0
titlehide.Active = true
titlehide.Draggable = false
titlehide.Parent = origmain
titlehide.TextSize = 25
titlehide.Text = "-"
titlehide.Font = Enum.Font.SourceSans
titlehide.TextColor3 = Color3.fromRGB(255,255,255)

titleclose.MouseButton1Click:Connect(function()
titlehide.Visible = false 
titleclose.Visible = false
titleofmain.Visible = false
game:GetService("TweenService"):Create(origmain, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
wait(0.6)
origmain.Visible = false
wait(0.01)
game:GetService("TweenService"):Create(holdermain, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 2, 0, 2)}):Play()
wait(1)
for i,ui in pairs(game.CoreGui:GetChildren()) do
if ui.Name == "GloxPloit" then
ui:Destroy()
end
end
end)

titlehide.MouseButton1Click:Connect(function()
for i,elementofmain in pairs(game.CoreGui.GloxPloit.HolderGui:GetChildren()) do
if elementofmain.Name == "GuiScript" and elementofmain.Parent.Size == UDim2.new(0, 500, 0, 300) and elementofmain.Visible == true then
elementofmain.Title.Visible = false
elementofmain.HubContainer.Visible = false
elementofmain.TabContainer.Visible = false
game:GetService("TweenService"):Create(elementofmain, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
wait(1)
elementofmain.Visible = false
game:GetService("TweenService"):Create(elementofmain.Parent, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 500,0, 50)}):Play()
game:GetService("TweenService"):Create(elementofmain.Parent, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 50,0, 50)}):Play()
wait(1)
local toggleuilibrary = Instance.new("TextButton", elementofmain.Parent)
toggleuilibrary.Size = UDim2.new(0, 50, 0, 50)
toggleuilibrary.Draggable = false
toggleuilibrary.Position = UDim2.new(0,50,0,0)
toggleuilibrary.BackgroundColor3 = Color3.fromRGB(10,10,10)
toggleuilibrary.BorderSizePixel = 0
toggleuilibrary.Text = "+"
toggleuilibrary.TextScaled = true
toggleuilibrary.TextColor3 = Color3.fromRGB(255,255,255)
toggleuilibrary.Font = Enum.Font.SourceSans
toggleuilibrary.TextSize = 20

toggleuilibrary.MouseButton1Down:Connect(function()
wait(0.5)
game:GetService("TweenService"):Create(toggleuilibrary, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
wait(0.6)
toggleuilibrary:Destroy()
wait(0.2)
game:GetService("TweenService"):Create(elementofmain.Parent, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 500,0, 50)}):Play()
game:GetService("TweenService"):Create(elementofmain.Parent, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 500,0, 300)}):Play()
wait(1.5)
elementofmain.Visible = true
wait(0.2)
game:GetService("TweenService"):Create(elementofmain, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
wait(0.85)
elementofmain.Title.Visible = true
elementofmain.HubContainer.Visible = true
elementofmain.TabContainer.Visible = true
end)
end
end
end)

local uilistlayout1 = Instance.new("UIListLayout", tabcontainer)
uilistlayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
uilistlayout1.SortOrder = Enum.SortOrder.LayoutOrder

function dragify(Frame)
		dragToggle = nil
		dragSpeed = nil
		dragInput = nil
		dragStart = nil
		dragPos = nil
		function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if (input.UserInputState == Enum.UserInputState.End) then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if (input == dragInput and dragToggle) then
				updateInput(input)
			end
		end)
	end

	dragify(holdermain)

local tabs = {}

function tabs:Tab(title)

local tabbutton = Instance.new("TextButton")
tabbutton.Name = title
tabbutton.Size = UDim2.new(0, 150, 0, 25)
tabbutton.Position = UDim2.new(0, 0, 0, 0)
tabbutton.BackgroundColor3 = Color3.fromRGB(27,27,27)
tabbutton.BorderColor3 = Color3.fromRGB(23,23,23)
tabbutton.BorderSizePixel = 1
tabbutton.Active = true
tabbutton.Draggable = false
tabbutton.Parent = tabcontainer
tabbutton.TextSize = 22
tabbutton.Text = title
tabbutton.Font = Enum.Font.SourceSans
tabbutton.TextXAlignment = Enum.TextXAlignment.Left
tabbutton.TextColor3 = Color3.fromRGB(255,255,255)

local uicorner_3 = Instance.new("UICorner", tabbutton)
uicorner_3.CornerRadius = UDim.new(0, 3)

local tab = Instance.new("ScrollingFrame", hubcontainer)
tab.Name = title.."s Tab"
tab.Size = UDim2.new(0, 1, 0, 225)
tab.Position = UDim2.new(0, 0, 0, 0)
tab.BackgroundColor3 = Color3.fromRGB(17,17,17)
tab.BorderColor3 = Color3.fromRGB(10,10,10)
tab.BorderSizePixel = 1
tab.Active = true
tab.Draggable = false
tab.ScrollBarThickness = 0
tab.CanvasSize = UDim2.new(0, 0, 4, 0)

local uilistlayout2 = Instance.new("UIListLayout", tab)
uilistlayout2.SortOrder = Enum.SortOrder.LayoutOrder
uilistlayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center

tabbutton.MouseButton1Click:Connect(function()
for i,v in pairs(hubcontainer:GetChildren()) do
game:GetService("TweenService"):Create(v, TweenInfo.new(0.42, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 1, 0, 225)}):Play()
wait(0.5)
v.Visible = false
end 
tab.Visible = true
game:GetService("TweenService"):Create(tab, TweenInfo.new(0.42, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 300, 0, 225)}):Play()
end)

local elements = {}

function elements:Button(text, callback)
local buttonholder = Instance.new("Frame", tab)
buttonholder.Size = UDim2.new(0, 280, 0, 30)
buttonholder.Position = UDim2.new(0, 0, 0, 0)
buttonholder.BackgroundColor3 = Color3.fromRGB(32,32,32)
buttonholder.BorderColor3 = Color3.fromRGB(23,23,23)
buttonholder.BorderSizePixel = 2
buttonholder.Active = true
buttonholder.Draggable = false

local uicorner_6 = Instance.new("UICorner", buttonholder)
uicorner_6.CornerRadius = UDim.new(0, 6)

local button = Instance.new("TextButton", buttonholder)
button.Size = UDim2.new(0, 255, 0, 20)
button.Position = UDim2.new(0, 10, 0, 5)
button.BackgroundColor3 = Color3.fromRGB(30,30,30)
button.BorderColor3 = Color3.fromRGB(23,23,23)
button.BorderSizePixel = 0
button.Active = true
button.Draggable = false
button.TextSize = 22
button.Text = text
button.Font = Enum.Font.SourceSans
button.TextColor3 = Color3.fromRGB(255,255,255)

local uicorner_7 = Instance.new("UICorner", label)
uicorner_7.CornerRadius = UDim.new(0, 6)

button.MouseButton1Up:Connect(function()
game:GetService("TweenService"):Create(buttonholder, TweenInfo.new(0.02, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(36, 36, 36)}):Play()
game:GetService("TweenService"):Create(button, TweenInfo.new(0.02, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(34, 34, 34)}):Play()
wait(0.02)
game:GetService("TweenService"):Create(buttonholder, TweenInfo.new(0.04, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(32, 32, 32)}):Play()
game:GetService("TweenService"):Create(button, TweenInfo.new(0.04, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
end)

button.MouseButton1Down:Connect(function()
callback()
end)

end

function elements:Toggle(title, callback)
local toggleholder = Instance.new("Frame", tab)
toggleholder.Size = UDim2.new(0, 280, 0, 30)
toggleholder.Position = UDim2.new(0, 0, 0, 0)
toggleholder.BackgroundColor3 = Color3.fromRGB(32,32,32)
toggleholder.BorderColor3 = Color3.fromRGB(23,23,23)
toggleholder.BorderSizePixel = 2
toggleholder.Active = true
toggleholder.Draggable = false

local uicorner_8 = Instance.new("UICorner", toggleholder)
uicorner_8.CornerRadius = UDim.new(0, 6)

local toggletext1 = Instance.new("Frame", toggleholder)
toggletext1.Size = UDim2.new(0, 255, 0, 20)
toggletext1.Position = UDim2.new(0, 10, 0, 5)
toggletext1.BackgroundColor3 = Color3.fromRGB(30,30,30)
toggletext1.BorderColor3 = Color3.fromRGB(23,23,23)
toggletext1.BorderSizePixel = 0
toggletext1.Active = true
toggletext1.Draggable = false

local uicorner_10 = Instance.new("UICorner", toggletext1)
uicorner_10.CornerRadius = UDim.new(0, 6)

local toggletext = Instance.new("TextLabel", toggletext1)
toggletext.Size = UDim2.new(0, 150, 0, 20)
toggletext.Position = UDim2.new(0, 5, 0, 0)
toggletext.BackgroundColor3 = Color3.fromRGB(30,30,30)
toggletext.BorderColor3 = Color3.fromRGB(23,23,23)
toggletext.BorderSizePixel = 0
toggletext.Active = true
toggletext.Draggable = false
toggletext.TextSize = 22
toggletext.Text = title
toggletext.TextXAlignment = Enum.TextXAlignment.Left
toggletext.Font = Enum.Font.SourceSans
toggletext.TextColor3 = Color3.fromRGB(255,255,255)

local uicorner_11 = Instance.new("UICorner", toggletext)
uicorner_11.CornerRadius = UDim.new(0, 6)

local togglebutton = Instance.new("TextLabel", toggleholder)
togglebutton.Size = UDim2.new(0, 50, 0, 20)
togglebutton.Position = UDim2.new(0, 200, 0, 5)
togglebutton.BackgroundColor3 = Color3.fromRGB(10, 10 ,10)
togglebutton.BorderColor3 = Color3.fromRGB(10, 10 ,10)
togglebutton.BorderSizePixel = 2
togglebutton.Active = true
togglebutton.Draggable = false
togglebutton.Text = ""

local uicorner_12 = Instance.new("UICorner", togglebutton)
uicorner_12.CornerRadius = UDim.new(0, 50)

local hidedtogglebutton = Instance.new("TextButton", togglebutton)
hidedtogglebutton.Size = UDim2.new(0, 50, 0, 20)
hidedtogglebutton.Position = UDim2.new(0, 0, 0, 0)
hidedtogglebutton.BackgroundTransparency = 1
hidedtogglebutton.BorderColor3 = Color3.fromRGB(10, 10 ,10)
hidedtogglebutton.BorderSizePixel = 0
hidedtogglebutton.Active = true
hidedtogglebutton.Draggable = false
hidedtogglebutton.Text = ""
hidedtogglebutton.ZIndex = 0

local uicorner_12 = Instance.new("UICorner", hidedtogglebutton)
uicorner_12.CornerRadius = UDim.new(0, 50)

local togglecircus = Instance.new("TextLabel", togglebutton)
togglecircus.Size = UDim2.new(0, 20, 0, 20)
togglecircus.Position = UDim2.new(0, 1.7, 0, 0)
togglecircus.BackgroundColor3 = Color3.fromRGB(255,48,48)
togglecircus.BorderColor3 = Color3.fromRGB(10, 10 ,10)
togglecircus.BorderSizePixel = 0
togglecircus.Active = true
togglecircus.Draggable = false
togglecircus.Text = ""

local uicorner_11 = Instance.new("UICorner", togglecircus)
uicorner_11.CornerRadius = UDim.new(0, 75)

local ToggleEnabled = false

hidedtogglebutton.MouseButton1Down:Connect(function()
if ToggleEnabled == false then
game:GetService("TweenService"):Create(togglecircus, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(48,255,48)}):Play()
game:GetService("TweenService"):Create(togglecircus, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, 28.2, 0, 0)}):Play()
ToggleEnabled = true
else
game:GetService("TweenService"):Create(togglecircus, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(255,48,48)}):Play()
game:GetService("TweenService"):Create(togglecircus, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, 1.7, 0, 0)}):Play()
ToggleEnabled = false
end
callback(ToggleEnabled)
return ToggleEnabled
end)
end

function elements:Textbox(title, callback)
local textboxholder = Instance.new("Frame", tab)
textboxholder.Size = UDim2.new(0, 280, 0, 30)
textboxholder.Position = UDim2.new(0, 0, 0, 0)
textboxholder.BackgroundColor3 = Color3.fromRGB(32,32,32)
textboxholder.BorderColor3 = Color3.fromRGB(23,23,23)
textboxholder.BorderSizePixel = 2
textboxholder.Active = true
textboxholder.Draggable = false

local uicorner_12 = Instance.new("UICorner", textboxholder)
uicorner_12.CornerRadius = UDim.new(0, 6)

local textboxtext1 = Instance.new("Frame", textboxholder)
textboxtext1.Size = UDim2.new(0, 255, 0, 20)
textboxtext1.Position = UDim2.new(0, 10, 0, 5)
textboxtext1.BackgroundColor3 = Color3.fromRGB(30,30,30)
textboxtext1.BorderColor3 = Color3.fromRGB(23,23,23)
textboxtext1.BorderSizePixel = 0
textboxtext1.Active = true
textboxtext1.Draggable = false

local uicorner_13 = Instance.new("UICorner", textboxtext1)
uicorner_13.CornerRadius = UDim.new(0, 6)

local textboxtext = Instance.new("TextLabel", textboxtext1)
textboxtext.Size = UDim2.new(0, 150, 0, 20)
textboxtext.Position = UDim2.new(0, 5, 0, 0)
textboxtext.BackgroundColor3 = Color3.fromRGB(30,30,30)
textboxtext.BorderColor3 = Color3.fromRGB(23,23,23)
textboxtext.BorderSizePixel = 0
textboxtext.Active = true
textboxtext.Draggable = false
textboxtext.TextSize = 22
textboxtext.Text = title
textboxtext.Font = Enum.Font.SourceSans
textboxtext.TextXAlignment = Enum.TextXAlignment.Left
textboxtext.TextColor3 = Color3.fromRGB(255,255,255)

local uicorner_14 = Instance.new("UICorner", textboxtext)
uicorner_14.CornerRadius = UDim.new(0, 6)

local textbox = Instance.new("TextBox", textboxtext)
textbox.Size = UDim2.new(0, 60, 0, 20)
textbox.Position = UDim2.new(0, 180, 0, 0)
textbox.BackgroundColor3 = Color3.fromRGB(9,9,9)
textbox.BorderColor3 = Color3.fromRGB(23,23,23)
textbox.BorderSizePixel = 0
textbox.Active = true
textbox.Draggable = false
textbox.TextSize = 14
textbox.Text = ""
textbox.Font = Enum.Font.SourceSans
textbox.TextXAlignment = Enum.TextXAlignment.Left
textbox.TextColor3 = Color3.fromRGB(255,255,255)

local uicorner_14 = Instance.new("UICorner", textbox)
uicorner_14.CornerRadius = UDim.new(0, 6)
			textbox.FocusLost:Connect(function()
			    callback(textbox.Text)
			    textbox.TextTransparency = 1
			    wait(0.3)
			    textbox.Text = ""
		        wait(0.1)
		        textbox.TextTransparency = 0
			end)

end

function elements:Dropdown(title, option, callback)
local dropdownholder = Instance.new("Frame", tab)
dropdownholder.Size = UDim2.new(0, 280, 0, 30)
dropdownholder.Position = UDim2.new(0, 0, 0, 0)
dropdownholder.BackgroundColor3 = Color3.fromRGB(32,32,32)
dropdownholder.BorderColor3 = Color3.fromRGB(23,23,23)
dropdownholder.BorderSizePixel = 2
dropdownholder.Active = true
dropdownholder.Draggable = false

local uicorner_15 = Instance.new("UICorner", dropdownholder)
uicorner_15.CornerRadius = UDim.new(0, 6)

local dropdowntext1 = Instance.new("Frame", dropdownholder)
dropdowntext1.Size = UDim2.new(0, 255, 0, 20)
dropdowntext1.Position = UDim2.new(0, 10, 0, 5)
dropdowntext1.BackgroundColor3 = Color3.fromRGB(30,30,30)
dropdowntext1.BorderColor3 = Color3.fromRGB(23,23,23)
dropdowntext1.BorderSizePixel = 0
dropdowntext1.Active = true
dropdowntext1.Draggable = false

local uicorner_16 = Instance.new("UICorner", dropdowntext1)
uicorner_16.CornerRadius = UDim.new(0, 6)

local dropdowntext = Instance.new("TextLabel", dropdowntext1)
dropdowntext.Size = UDim2.new(0, 150, 0, 20)
dropdowntext.Position = UDim2.new(0, 5, 0, 0)
dropdowntext.BackgroundColor3 = Color3.fromRGB(30,30,30)
dropdowntext.BorderColor3 = Color3.fromRGB(23,23,23)
dropdowntext.BorderSizePixel = 0
dropdowntext.Active = true
dropdowntext.Draggable = false
dropdowntext.TextSize = 22
dropdowntext.Text = title
dropdowntext.Font = Enum.Font.SourceSans
dropdowntext.TextXAlignment = Enum.TextXAlignment.Left
dropdowntext.TextColor3 = Color3.fromRGB(255,255,255)

local uicorner_17 = Instance.new("UICorner", toggletext)
uicorner_17.CornerRadius = UDim.new(0, 6)

local dropdownbutton = Instance.new("TextButton", dropdownholder)
dropdownbutton.Size = UDim2.new(0, 20, 0, 20)
dropdownbutton.Position = UDim2.new(0, 230, 0, 5)
dropdownbutton.BackgroundColor3 = Color3.fromRGB(34,34,34)
dropdownbutton.BorderColor3 = Color3.fromRGB(10, 10 ,10)
dropdownbutton.BorderSizePixel = 2
dropdownbutton.Active = true
dropdownbutton.Draggable = false
dropdownbutton.Text = ">"
dropdownbutton.Rotation = 0
dropdownbutton.TextColor3 = Color3.fromRGB(255,255,255)

local uicorner_18 = Instance.new("UICorner", dropdownbutton)
uicorner_18.CornerRadius = UDim.new(0, 75)

local dropdownlist = Instance.new("ScrollingFrame", dropdownholder)
dropdownlist.Size = UDim2.new(0, 300, 0, 0)
dropdownlist.Position = UDim2.new(0, 0, 0, 30)
dropdownlist.BackgroundTransparency = 1.000
dropdownlist.BorderColor3 = Color3.fromRGB(10,10,10)
dropdownlist.BorderSizePixel = 1
dropdownlist.Active = true
dropdownlist.Draggable = false
dropdownlist.Visible = false
dropdownlist.CanvasSize = UDim2.new(1, 0, 0, 0)

local uilistlayout18 = Instance.new("UIListLayout", dropdownlist)
uilistlayout18.HorizontalAlignment = Enum.HorizontalAlignment.Center
uilistlayout18.SortOrder = Enum.SortOrder.LayoutOrder

dropdownbutton.MouseButton1Up:Connect(function()
if dropdownlist.Size == UDim2.new(0, 300,0, 0) then
					dropdownlist.Visible = true
					dropdownlist:TweenSize(UDim2.new(0, 300,0, 122), "InOut", "Sine", 0.2, true)
					game:GetService("TweenService"):Create(dropdownbutton, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 90}):Play()
				else
					dropdownlist:TweenSize(UDim2.new(0, 300,0, 0), "InOut", "Sine", 0.2, true)
					game:GetService("TweenService"):Create(dropdownbutton, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play()
					wait(0.2)
					dropdownlist.Visible = false
				end
end)
for _,but in pairs(option) do
local dropdownbuttoninlist = Instance.new("TextButton", dropdownlist)
dropdownbuttoninlist.Size = UDim2.new(0, 300, 0, 25)
dropdownbuttoninlist.BackgroundColor3 = Color3.fromRGB(32,32,32)
dropdownbuttoninlist.BorderColor3 = Color3.fromRGB(20,20,20)
dropdownbuttoninlist.BorderSizePixel = 2.5
dropdownbuttoninlist.Active = true
dropdownbuttoninlist.Draggable = false
dropdownbuttoninlist.Text = tostring(but)
dropdownbuttoninlist.TextXAlignment = Enum.TextXAlignment.Left
dropdownbuttoninlist.TextColor3 = Color3.fromRGB(255,255,255)
dropdownbuttoninlist.ZIndex = 4

local uicorner_19 = Instance.new("UICorner", dropdownbuttoninlist)
uicorner_19.CornerRadius = UDim.new(0, 10)

dropdownbuttoninlist.MouseButton1Up:Connect(function()
game:GetService("TweenService"):Create(dropdownbuttoninlist, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(60,60,60)}):Play()
end)

dropdownbuttoninlist.MouseButton1Down:Connect(function()
game:GetService("TweenService"):Create(dropdownbuttoninlist, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(32,32,32)}):Play()
end)

dropdownbuttoninlist.MouseButton1Click:Connect(function()
callback(but)
if dropdownlist.Size == UDim2.new(0, 300,0, 122) then
					dropdownlist:TweenSize(UDim2.new(0, 300,0, 0), "InOut", "Sine", 0.2, true)
					game:GetService("TweenService"):Create(dropdownbutton, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play()
					wait(.2)
					dropdownlist.Visible = false
				end
end)

end
end

function elements:Label(text, color)
local labelholder = Instance.new("Frame", tab)
labelholder.Size = UDim2.new(0, 280, 0, 30)
labelholder.Position = UDim2.new(0, 0, 0, 0)
labelholder.BackgroundColor3 = Color3.fromRGB(32,32,32)
labelholder.BorderColor3 = Color3.fromRGB(23,23,23)
labelholder.BorderSizePixel = 2
labelholder.Active = true
labelholder.Draggable = false

local uicorner_4 = Instance.new("UICorner", labelholder)
uicorner_4.CornerRadius = UDim.new(0, 6)

local label = Instance.new("TextLabel", labelholder)
label.Size = UDim2.new(0, 250, 0, 20)
label.Position = UDim2.new(0, 15, 0, 5)
label.BackgroundColor3 = Color3.fromRGB(30,30,30)
label.BorderColor3 = Color3.fromRGB(23,23,23)
label.BorderSizePixel = 0
label.Active = true
label.Draggable = false
label.TextSize = 22
label.Text = text
label.Font = Enum.Font.SourceSans
label.TextColor3 = color or Color3.fromRGB(255,255,255)

local uicorner_5 = Instance.new("UICorner", label)
uicorner_5.CornerRadius = UDim.new(0, 6)

local LabelHeist = {}

function LabelHeist:UpdateLabel(text, color)
label.Text = text
label.TextColor3 = color or Color3.fromRGB(255,255,255)
end
return LabelHeist
end
return elements
end
return tabs
end
return library
