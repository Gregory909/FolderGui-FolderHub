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

local titleofmain = Instance.new("TextLabel")
titleofmain.Name = "MainTitle"
titleofmain.Size = UDim2.new(0, 1, 0, 1)
titleofmain.Position = UDim2.new(0.5, 0, 0.5, 0)
titleofmain.AnchorPoint = Vector2.new(0.5,0.5)
titleofmain.BackgroundColor3 = Color3.fromRGB(15,15,15)
titleofmain.BorderColor3 = Color3.new(10,10,10)
titleofmain.BorderSizePixel = 0
titleofmain.Active = true
titleofmain.Draggable = true
titleofmain.Parent = gui
titleofmain.TextSize = 22
titleofmain.Text = title
titleofmain.TextTransparency = 1
titleofmain.Font = Enum.Font.Gotham
titleofmain.TextXAlignment = Enum.TextXAlignment.Left
titleofmain.TextColor3 = Color3.fromRGB(255,255,255)
titleofmain.ZIndex = 2

local titlecorn = Instance.new("UICorner", titleofmain)
titlecorn.CornerRadius = UDim.new(0,6)

wait(0.1)
game:GetService("TweenService"):Create(titleofmain, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 500, 0, 2)}):Play()
wait(1)
game:GetService("TweenService"):Create(titleofmain, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 500, 0, 25)}):Play()
wait(1)

titleofmain.TextTransparency = 0

local origmain = Instance.new("Frame")
origmain.Name = "GuiScript"
origmain.Size = UDim2.new(0, 500, 0, 270)
origmain.Position = UDim2.new(0,0,0,0)
origmain.BackgroundColor3 = Color3.fromRGB(10,10,10)
origmain.BorderColor3 = Color3.new(0, 0, 0)
origmain.BorderSizePixel = 0
origmain.Active = true
origmain.Draggable = false
origmain.Parent = titleofmain

local uicorner_2 = Instance.new("UICorner", origmain)
uicorner_2.CornerRadius = UDim.new(0,0.1)

local uistroke = Instance.new("UIStroke", origmain)
uistroke.Thickness = 6
uistroke.Color = Color3.fromRGB(255,255,255)

local uigradient_1 = Instance.new("UIGradient", uistroke)
uigradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,48,48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,10))}

local tabcontainer = Instance.new("ScrollingFrame", origmain)
tabcontainer.Name = "TabContainer"
tabcontainer.Size = UDim2.new(0, 150, 0, 235)
tabcontainer.Position = UDim2.new(0, 10, 0, 30)
tabcontainer.BackgroundColor3 = Color3.fromRGB(21,21,21)
tabcontainer.BorderColor3 = Color3.new(0, 0, 0)
tabcontainer.BorderSizePixel = 0
tabcontainer.Active = true
tabcontainer.Draggable = false
tabcontainer.Visible = true
tabcontainer.ScrollBarThickness = 0
tabcontainer.CanvasSize = UDim2.new(0, 0, 0, 0)
tabcontainer.AutomaticCanvasSize = Enum.AutomaticSize.Y
tabcontainer.ClipsDescendants = true
tabcontainer.BackgroundTransparency = 0
tabcontainer.ScrollBarThickness = 0

local tabscorn = Instance.new("UICorner", tabcontainer)
tabscorn.CornerRadius = UDim.new(0,0.1)

local uistroketab = Instance.new("UIStroke", tabcontainer)
uistroketab.Thickness = 4
uistroketab.Color = Color3.fromRGB(255,255,255)

local uigradient_2 = Instance.new("UIGradient", uistroketab)
uigradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,48,48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,10))}

local hubcontainer = Instance.new("Frame", origmain)
hubcontainer.Name = "HubContainer"
hubcontainer.Size = UDim2.new(0, 300, 0, 235)
hubcontainer.Position = UDim2.new(0, 185, 0, 30)
hubcontainer.BackgroundColor3 = Color3.fromRGB(21,21,21)
hubcontainer.BorderColor3 = Color3.new(0, 0, 0)
hubcontainer.BorderSizePixel = 0
hubcontainer.Active = true
hubcontainer.Draggable = false
hubcontainer.Visible = true

local hubcorn = Instance.new("UICorner", hubcontainer)
hubcorn.CornerRadius = UDim.new(0,5)

local uistrokehub = Instance.new("UIStroke", hubcontainer)
uistrokehub.Thickness = 4
uistrokehub.Color = Color3.fromRGB(255,255,255)

local uigradient_3 = Instance.new("UIGradient", uistrokehub)
uigradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,48,48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,10))}

local titlehide = Instance.new("TextButton")
titlehide.Name = "Close Button"
titlehide.Size = UDim2.new(0, 50, 0, 25)
titlehide.Position = UDim2.new(0, 450, 0, 0)
titlehide.BackgroundColor3 = Color3.fromRGB(50,50,50)
titlehide.BorderColor3 = Color3.new(0, 0, 0)
titlehide.BorderSizePixel = 0
titlehide.Active = true
titlehide.Draggable = false
titlehide.Parent = titleofmain
titlehide.TextSize = 25
titlehide.Text = "—"
titlehide.Font = Enum.Font.Gotham
titlehide.TextColor3 = Color3.fromRGB(255,255,255)
titlehide.ZIndex = 3

local titlehcorn = Instance.new("UICorner", titlehide)
titlehcorn.CornerRadius = UDim.new(0,5)

titlehide.MouseButton1Click:Connect(function()
if origmain.Size == UDim2.new(0, 500, 0, 270) then
game:GetService("TweenService"):Create(origmain, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 500, 0, 25)}):Play()
game:GetService("TweenService"):Create(tabcontainer, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 150, 0, 0)}):Play()
game:GetService("TweenService"):Create(hubcontainer, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 300, 0, 0)}):Play()
tabcontainer.Visible = false
hubcontainer.Visible = false
for _,guis in pairs(hubcontainer:GetChildren()) do
if guis.ClassName ~= "UICorner" and guis.ClassName ~= "UIStroke" and guis.ClassName ~= "UIGradient" and guis.Size == UDim2.new(0,300,0,235) then
game:GetService("TweenService"):Create(guis, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 300, 0, 0)}):Play()
wait(0.6)
guis.Visible = false
end
end
else
game:GetService("TweenService"):Create(origmain, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 500, 0, 270)}):Play()
game:GetService("TweenService"):Create(tabcontainer, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 150, 0, 235)}):Play()
game:GetService("TweenService"):Create(hubcontainer, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 300, 0, 235)}):Play()
wait(0.6)
tabcontainer.Visible = true
hubcontainer.Visible = true
for _,guis in pairs(hubcontainer:GetChildren()) do
if guis.ClassName ~= "UICorner" and guis.ClassName ~= "UIStroke" and guis.ClassName ~= "UIGradient" and guis.Size == UDim2.new(0,300,0,0) then
game:GetService("TweenService"):Create(guis, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 300, 0, 235)}):Play()
wait(0.6)
guis.Visible = true
end
end
end
end)

local uilistlayout1 = Instance.new("UIListLayout", tabcontainer)
uilistlayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
uilistlayout1.SortOrder = Enum.SortOrder.LayoutOrder
uilistlayout1.Padding = UDim.new(0.03, 1)

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

	dragify(titleofmain)
	
game:GetService("RunService").Heartbeat:Connect(function()
uigradient_1.Rotation += 2
uigradient_2.Rotation += 2
uigradient_3.Rotation += 2
game:GetService("RunService").Heartbeat:Wait()
end)

local tabs = {}

function tabs:Tab(title)

local tabbutton = Instance.new("TextButton")
tabbutton.Name = title
tabbutton.Size = UDim2.new(0, 140, 0, 25)
tabbutton.Position = UDim2.new(0, 10, 0, 0)
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
tab.Size = UDim2.new(0, 0, 0, 235)
tab.Position = UDim2.new(0, 0, 0, 0)
tab.BackgroundColor3 = Color3.fromRGB(17,17,17)
tab.BorderColor3 = Color3.fromRGB(10,10,10)
tab.BorderSizePixel = 1
tab.Active = true
tab.Draggable = false
tab.ScrollBarThickness = 0
tab.Visible = false
tab.CanvasSize = UDim2.new(0, 0, 0, 0)
tab.AutomaticCanvasSize = Enum.AutomaticSize.Y
tab.ClipsDescendants = true
tab.BackgroundTransparency = 1
tab.ScrollBarThickness = 0

local uilistlayout2 = Instance.new("UIListLayout", tab)
uilistlayout2.SortOrder = Enum.SortOrder.LayoutOrder
uilistlayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
uilistlayout2.Padding = UDim.new(0.03, 1)

tabbutton.MouseButton1Click:Connect(function()
for i,v in pairs(hubcontainer:GetChildren()) do
if v.Name ~= title.."s Tab" and v.ClassName ~= "UICorner" and v.ClassName ~= "UIStroke" and v.ClassName ~= "UIStroke" and v.Size == UDim2.new(0,300,0,235) then
game:GetService("TweenService"):Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 300, 0, 0)}):Play()
wait(0.3)
v.Visible = false
v.Size = UDim2.new(0,0,0,235)
end 
end
tab.Visible = true
game:GetService("TweenService"):Create(tab, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 300, 0, 235)}):Play()
end)

local elements = {}

function elements:Button(text, callback)
local buttonholder = Instance.new("Frame", tab)
buttonholder.Size = UDim2.new(0, 280, 0, 30)
buttonholder.Position = UDim2.new(0, 0, 0, 0)
buttonholder.BackgroundColor3 = Color3.fromRGB(30,30,30)
buttonholder.BorderColor3 = Color3.fromRGB(23,23,23)
buttonholder.BorderSizePixel = 2
buttonholder.Active = true
buttonholder.Draggable = false

local uicorner_6 = Instance.new("UICorner", buttonholder)
uicorner_6.CornerRadius = UDim.new(0, 6)

local uistrokebutton = Instance.new("UIStroke", buttonholder)
uistrokebutton.Thickness = 2
uistrokebutton.Color = Color3.fromRGB(255,255,255)

local uigradient_4 = Instance.new("UIGradient", uistrokebutton)
uigradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,48,48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,10))}

local button = Instance.new("TextButton", buttonholder)
button.Size = UDim2.new(0, 255, 0, 20)
button.Position = UDim2.new(0, 10, 0, 5)
button.BackgroundColor3 = Color3.fromRGB(40,40,40)
button.BorderColor3 = Color3.fromRGB(23,23,23)
button.BorderSizePixel = 1
button.Active = true
button.Draggable = false
button.TextSize = 20
button.Text = text
button.Font = Enum.Font.SourceSans
button.TextColor3 = Color3.fromRGB(255,255,255)

local uicorner_7 = Instance.new("UICorner", button)
uicorner_7.CornerRadius = UDim.new(0, 6)

button.MouseButton1Click:Connect(function()
callback()
end)

end

function elements:Slider(title, min,max,callback)
local sliderholder = Instance.new("Frame", tab)
sliderholder.Size = UDim2.new(0, 280, 0, 30)
sliderholder.Position = UDim2.new(0, 0, 0, 0)
sliderholder.BackgroundColor3 = Color3.fromRGB(30,30,30)
sliderholder.BorderColor3 = Color3.fromRGB(23,23,23)
sliderholder.BorderSizePixel = 2
sliderholder.Active = true
sliderholder.Draggable = false

local uicorner_29 = Instance.new("UICorner", sliderholder)
uicorner_29.CornerRadius = UDim.new(0, 6)

local uistrokeslider = Instance.new("UIStroke", sliderholder)
uistrokeslider.Thickness = 2
uistrokeslider.Color = Color3.fromRGB(255,255,255)

local uigradient_5 = Instance.new("UIGradient", uistrokeslider)
uigradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,48,48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,10))}

local sliderholdertext = Instance.new("Frame", sliderholder)
sliderholdertext.Size = UDim2.new(0, 100, 0, 20)
sliderholdertext.Position = UDim2.new(0, 10, 0, 5)
sliderholdertext.BackgroundTransparency = 1
sliderholdertext.BackgroundColor3 = Color3.fromRGB(30,30,30)
sliderholdertext.BorderColor3 = Color3.fromRGB(23,23,23)
sliderholdertext.BorderSizePixel = 0
sliderholdertext.Active = true
sliderholdertext.Draggable = false

local uicorner_10 = Instance.new("UICorner", sliderholdertext)
uicorner_10.CornerRadius = UDim.new(0, 6)

local slidertext = Instance.new("TextLabel", sliderholdertext)
slidertext.Size = UDim2.new(0, 100, 0, 20)
slidertext.Position = UDim2.new(0, 0, 0, 0)
slidertext.BackgroundColor3 = Color3.fromRGB(30,30,30)
slidertext.BorderColor3 = Color3.fromRGB(23,23,23)
slidertext.BorderSizePixel = 0
slidertext.Active = true
slidertext.Draggable = false
slidertext.TextSize = 22
slidertext.Text = title
slidertext.TextXAlignment = Enum.TextXAlignment.Left
slidertext.Font = Enum.Font.SourceSans
slidertext.TextColor3 = Color3.fromRGB(255,255,255)

local uicorner_11 = Instance.new("UICorner", slidertext)
uicorner_11.CornerRadius = UDim.new(0, 6)

local slidernotfilled = Instance.new("Frame", sliderholder)
slidernotfilled.Size = UDim2.new(0, 165, 0, 10)
slidernotfilled.Position = UDim2.new(0, 110, 0, 10)
slidernotfilled.BackgroundColor3 = Color3.fromRGB(5,5,5)
slidernotfilled.BorderColor3 = Color3.fromRGB(10, 10 ,10)
slidernotfilled.BorderSizePixel = 0
slidernotfilled.Active = true
slidernotfilled.Draggable = false

local uicorner_10 = Instance.new("UICorner", slidernotfilled)
uicorner_10.CornerRadius = UDim.new(0, 20)

local sliderfilled = Instance.new("Frame", slidernotfilled)
sliderfilled.Size = UDim2.new(0, 1, 0, 10)
sliderfilled.Position = UDim2.new(0, 0, 0, 0)
sliderfilled.BackgroundColor3 = Color3.fromRGB(40,40,40)
sliderfilled.BorderColor3 = Color3.fromRGB(10, 10 ,10)
sliderfilled.BorderSizePixel = 0
sliderfilled.Active = true
sliderfilled.Draggable = false

local uicorner_10 = Instance.new("UICorner", sliderfilled)
uicorner_10.CornerRadius = UDim.new(0, 20)

local sliderbuttonforsl = Instance.new("TextButton", sliderfilled)
sliderbuttonforsl.Size = UDim2.new(0, 10, 0, 15)
sliderbuttonforsl.Position = UDim2.new(0, (sliderfilled.Size.X.Offset) * ((160 - min) / (max - min)), 0, -5)
sliderbuttonforsl.BackgroundColor3 = Color3.fromRGB(5,5,5)
sliderbuttonforsl.BorderColor3 = Color3.fromRGB(255,255,255)
sliderbuttonforsl.BorderSizePixel = 1
sliderbuttonforsl.Active = true
sliderbuttonforsl.Draggable = false
sliderbuttonforsl.TextSize = 16
sliderbuttonforsl.Text = ""
sliderbuttonforsl.TextXAlignment = Enum.TextXAlignment.Left
sliderbuttonforsl.Font = Enum.Font.SourceSans
sliderbuttonforsl.TextColor3 = Color3.fromRGB(255,255,255)

local uicorner_11 = Instance.new("UICorner", sluderbuttonforsl)
uicorner_11.CornerRadius = UDim.new(0, 6)

local sliderminmax = Instance.new("TextLabel", sliderholder)
sliderminmax.Size = UDim2.new(0, 50, 0, 5)
sliderminmax.Position = UDim2.new(0, 225, 0, 25)
sliderminmax.BackgroundColor3 = Color3.fromRGB(10,10,10)
sliderminmax.BorderColor3 = Color3.fromRGB(23,23,23)
sliderminmax.BorderSizePixel = 0
sliderminmax.Active = true
sliderminmax.Draggable = false
sliderminmax.TextSize = 10
sliderminmax.Text = tonumber(min)
sliderminmax.Font = Enum.Font.SourceSans
sliderminmax.TextColor3 = Color3.fromRGB(255,255,255)

local uicorner_11 = Instance.new("UICorner", sliderminmax)
uicorner_11.CornerRadius = UDim.new(0, 6)

sliderbuttonforsl.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
local dragging = true
local playermouse = game.Players.LocalPlayer:GetMouse()
local minitial = input.Position.X
local initial = sliderbuttonforsl.Position.X.Offset
local delta_inbut = sliderbuttonforsl.AbsolutePosition.X - initial
local SlidingFunction
SlidingFunction = game:GetService("RunService").Heartbeat:Connect(function()
if dragging then
local xoffset = playermouse.X - delta_inbut - 3
if xoffset > 165 then
xoffset = 165
elseif xoffset < 0 then
xoffset = 0
end
sliderbuttonforsl.Position = UDim2.new(0, xoffset, 0, -5)
sliderfilled.Size = UDim2.new(0, xoffset + 5 , 0, 10)
sliderminmax.Text = tostring(math.round(min + ((max - min) * xoffset / 165)))
else
SlidingFunction:Disconnect()
end
end)
input.Changed:Connect(function()
if input.UserInputState == Enum.UserInputState.End then
dragging = false
end
end)
end
end)

sliderbuttonforsl.InputChanged:Connect(function(inp)
if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
callback(tonumber(sliderminmax.Text))
end
end)

end

function elements:Toggle(title, callback)
local toggleholder = Instance.new("Frame", tab)
toggleholder.Size = UDim2.new(0, 280, 0, 30)
toggleholder.Position = UDim2.new(0, 0, 0, 0)
toggleholder.BackgroundColor3 = Color3.fromRGB(10,1,1)
toggleholder.BorderColor3 = Color3.fromRGB(23,23,23)
toggleholder.BorderSizePixel = 2
toggleholder.Active = true
toggleholder.Draggable = false

local uicorner_8 = Instance.new("UICorner", toggleholder)
uicorner_8.CornerRadius = UDim.new(0, 6)

local uistroketoggle = Instance.new("UIStroke", toggleholder)
uistroketoggle.Thickness = 2
uistroketoggle.Color = Color3.fromRGB(255,255,255)

local uigradient_6 = Instance.new("UIGradient", uistroketoggle)
uigradient_6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,48,48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,10))}
			
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
hidedtogglebutton.ZIndex = 2

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

hidedtogglebutton.MouseButton1Click:Connect(function()
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
textboxholder.BackgroundColor3 = Color3.fromRGB(10,10,10)
textboxholder.BorderColor3 = Color3.fromRGB(23,23,23)
textboxholder.BorderSizePixel = 2
textboxholder.Active = true
textboxholder.Draggable = false

local uicorner_12 = Instance.new("UICorner", textboxholder)
uicorner_12.CornerRadius = UDim.new(0, 6)

local uistroketextbox = Instance.new("UIStroke", textboxholder)
uistroketextbox.Thickness = 2
uistroketextbox.Color = Color3.fromRGB(255,255,255)

local uigradient_7 = Instance.new("UIGradient", uistroketextbox)
uigradient_7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,48,48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,10))}

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
dropdownholder.BackgroundColor3 = Color3.fromRGB(10,10,10)
dropdownholder.BorderColor3 = Color3.fromRGB(23,23,23)
dropdownholder.BorderSizePixel = 2
dropdownholder.Active = true
dropdownholder.Draggable = false

local uicorner_15 = Instance.new("UICorner", dropdownholder)
uicorner_15.CornerRadius = UDim.new(0, 6)

local uistrokedropb = Instance.new("UIStroke", dropdownholder)
uistrokedropb.Thickness = 2
uistrokedropb.Color = Color3.fromRGB(255,255,255)

local uigradient_99 = Instance.new("UIGradient", uistrokedropb)
uigradient_99.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,48,48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,10))}
			
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
dropdownlist.BackgroundTransparency = 0.75
dropdownlist.BorderColor3 = Color3.fromRGB(10,10,10)
dropdownlist.BorderSizePixel = 1
dropdownlist.Active = true
dropdownlist.Draggable = false
dropdownlist.Visible = false
dropdownlist.CanvasSize = UDim2.new(0, 0, 0, 0)
dropdownlist.AutomaticCanvasSize = Enum.AutomaticSize.Y
dropdownlist.ClipsDescendants = true
dropdownlist.BackgroundTransparency = 1
dropdownlist.ScrollBarThickness = 0

local uilistlayout18 = Instance.new("UIListLayout", dropdownlist)
uilistlayout18.HorizontalAlignment = Enum.HorizontalAlignment.Center
uilistlayout18.SortOrder = Enum.SortOrder.LayoutOrder
uilistlayout18.Padding = UDim.new(0.03, 1)

local uistrokelist = Instance.new("UIStroke", dropdownlist)
uistrokelist.Thickness = 2
uistrokelist.Color = Color3.fromRGB(255,255,255)

local uigradient_9 = Instance.new("UIGradient", uistrokelist)
uigradient_9.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,48,48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,10))}

dropdownbutton.MouseButton1Click:Connect(function()
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
dropdownbuttoninlist.Size = UDim2.new(0, 280, 0, 25)
dropdownbuttoninlist.Position = UDim2.new(0,10,0,0)
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

local uistrokelab = Instance.new("UIStroke", labelholder)
uistrokelab.Thickness = 2
uistrokelab.Color = Color3.fromRGB(255,255,255)

local uigradient_10 = Instance.new("UIGradient", uistrokelab)
uigradient_10.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,48,48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,10))}

local label = Instance.new("TextLabel", labelholder)
label.Size = UDim2.new(0, 250, 0, 20)
label.Position = UDim2.new(0, 15, 0, 5)
label.BackgroundColor3 = Color3.fromRGB(30,30,30)
label.BorderColor3 = Color3.fromRGB(23,23,23)
label.BorderSizePixel = 1
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
