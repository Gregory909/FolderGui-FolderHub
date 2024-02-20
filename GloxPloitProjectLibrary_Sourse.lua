for i,ui in pairs(game.CoreGui:GetChildren()) do
if ui.Name == "GloxPloit" then
ui:Destroy()
end
end

wait(1)

local library = {}

function library:ToggleUi()
if game.CoreGui.GloxPloit.Enabled then
game.CoreGui.GloxPloit.Enabled = false
else
game.CoreGui.GloxPloit.Enabled = true
end
end

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
titleofmain.Draggable = false
titleofmain.Parent = gui
titleofmain.TextSize = 22
titleofmain.Text = ""
titleofmain.TextTransparency = 0
titleofmain.Font = Enum.Font.Gotham
titleofmain.TextXAlignment = Enum.TextXAlignment.Left
titleofmain.TextColor3 = Color3.fromRGB(255,255,255)
titleofmain.ZIndex = 2
titleofmain.TextTruncate = Enum.TextTruncate.AtEnd

local titlecorn = Instance.new("UICorner", titleofmain)
titlecorn.CornerRadius = UDim.new(0,6)

wait(0.1)
game:GetService("TweenService"):Create(titleofmain, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 525, 0, 2)}):Play()
wait(1)
game:GetService("TweenService"):Create(titleofmain, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 525, 0, 25)}):Play()
wait(1)

local fullText = title
local currentText = ""

function updateText()
    if #currentText < #fullText then
        currentText = string.sub(fullText, 1, #currentText + 1)
        titleofmain.Text = currentText
        wait(0.1)
        updateText()
    end
end

wait(0.1)
updateText()

repeat task.wait() until #currentText == #fullText

wait(0.9)
game:GetService("TweenService"):Create(titleofmain, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = titleofmain.Position + UDim2.new(0,0,0,-120)}):Play()
wait(1)

titleofmain.Draggable = true

local origmain = Instance.new("Frame")
origmain.Name = "GuiScript"
origmain.Size = UDim2.new(0, 525, 0, 270)
origmain.Position = UDim2.new(0,0,0,0)
origmain.BackgroundColor3 = Color3.fromRGB(10,10,10)
origmain.BorderColor3 = Color3.new(0, 0, 0)
origmain.BorderSizePixel = 0
origmain.Active = true
origmain.Draggable = false
origmain.Parent = titleofmain
origmain.ZIndex = 0

local uicorner_2 = Instance.new("UICorner", origmain)
uicorner_2.CornerRadius = UDim.new(0,0.1)

local uistroke = Instance.new("UIStroke", origmain)
uistroke.Thickness = 6
uistroke.Color = Color3.fromRGB(255,255,255)

local uigradient_1 = Instance.new("UIGradient", uistroke)
uigradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,48,48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,10))}

local tabcontainer = Instance.new("ScrollingFrame", origmain)
tabcontainer.Name = "TabContainer"
tabcontainer.Size = UDim2.new(0, 175, 0, 235)
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
hubcontainer.Position = UDim2.new(0, 200, 0, 30)
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

local uilistlayout1 = Instance.new("UIListLayout", tabcontainer)
uilistlayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
uilistlayout1.SortOrder = Enum.SortOrder.LayoutOrder
uilistlayout1.Padding = UDim.new(0.05, 1)

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
	
Grawing = game:GetService("RunService").Heartbeat:Connect(function()
uigradient_1.Rotation += 2
uigradient_2.Rotation += 2
uigradient_3.Rotation += 2
game:GetService("RunService").Heartbeat:Wait()
end)

function library:StopGrawing()
if Grawing then
Grawing:Disconnect()
uigradient_1.Rotation = 0
uigradient_2.Rotation = 0
uigradient_3.Rotation = 0
end
end

function library:StartGrawing()
if uigradient_1.Rotation == 0 and uigradient_2.Rotation == 0 and uigradient_3.Rotation == 0 then
Grawing = game:GetService("RunService").Heartbeat:Connect(function()
uigradient_1.Rotation += 2
uigradient_2.Rotation += 2
uigradient_3.Rotation += 2
game:GetService("RunService").Heartbeat:Wait()
end)
end
end

function library:ChangeStrokeColor(col1)
uigradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, col1), ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,10))}
uigradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, col1), ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,10))}
uigradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, col1), ColorSequenceKeypoint.new(1, Color3.fromRGB(10,10,10))}
end

local tabs = {}

function tabs:Tab(title)

local tabname = Instance.new("TextLabel")
tabname.Name = title.."s Tab Button"
tabname.Size = UDim2.new(0, 165, 0, 30)
tabname.Position = UDim2.new(0, 5, 0, 0)
tabname.BackgroundColor3 = Color3.fromRGB(27,27,27)
tabname.BorderColor3 = Color3.fromRGB(23,23,23)
tabname.BorderSizePixel = 1
tabname.Active = true
tabname.Draggable = false
tabname.Parent = tabcontainer
tabname.TextSize = 22
tabname.Text = title
tabname.Font = Enum.Font.GothamBold
tabname.TextXAlignment = Enum.TextXAlignment.Left
tabname.TextColor3 = Color3.fromRGB(255,255,255)
tabname.TextTruncate = Enum.TextTruncate.AtEnd

local tabbuttonhiden = Instance.new("TextButton")
tabbuttonhiden.Name = "ButtonScript"
tabbuttonhiden.Size = UDim2.new(0, 165, 0, 30)
tabbuttonhiden.Position = UDim2.new(0, 5, 0, 0)
tabbuttonhiden.BackgroundTransparency = 1
tabbuttonhidenBorderColor3 = Color3.fromRGB(23,23,23)
tabbuttonhiden.BorderSizePixel = 0
tabbuttonhiden.Active = true
tabbuttonhiden.Draggable = false
tabbuttonhiden.Parent = tabname
tabbuttonhiden.Text = ""
tabbuttonhiden.TextColor3 = Color3.fromRGB(255,255,255)

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
uilistlayout2.Padding = UDim.new(0.05, 1)

Opening = false
tabbuttonhiden.MouseButton1Click:Connect(function()
if not Opening then
Opening = true
for i,c in pairs(tabcontainer:GetChildren()) do
if c.Name ~= title.."s Tab Button" and c.ClassName ~= "UICorner" and c.ClassName ~= "UIStroke" and c.ClassName ~= "UIListLayout" and c.BackgroundColor3 == Color3.fromRGB(40,40,40) then
game:GetService("TweenService"):Create(c, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(27,27,27)}):Play()
end
end
game:GetService("TweenService"):Create(tabname, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(40,40,40)}):Play()
for i,v in pairs(hubcontainer:GetChildren()) do
if v.Name ~= title.."s Tab" and v.ClassName ~= "UICorner" and v.ClassName ~= "UIStroke" and v.Size == UDim2.new(0,300,0,235) then
game:GetService("TweenService"):Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 300, 0, 0)}):Play()
wait(0.3)
v.Visible = false
v.Size = UDim2.new(0,0,0,235)
end 
end
tab.Visible = true
game:GetService("TweenService"):Create(tab, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 300, 0, 235)}):Play()
wait(0.1)
Opening = false
end
end)

local elements = {}

function elements:Button(text, callback)
local buttonholder = Instance.new("Frame", tab)
buttonholder.Size = UDim2.new(0, 280, 0, 35)
buttonholder.Position = UDim2.new(0, 0, 0, 0)
buttonholder.BackgroundColor3 = Color3.fromRGB(30,30,30)
buttonholder.BorderColor3 = Color3.fromRGB(0,0,0)
buttonholder.BorderSizePixel = 2
buttonholder.Active = true
buttonholder.Draggable = false

local uicorner_6 = Instance.new("UICorner", buttonholder)
uicorner_6.CornerRadius = UDim.new(0,6)

local buttontext = Instance.new("TextLabel", buttonholder)
buttontext.Size = UDim2.new(0, 210, 0, 25)
buttontext.Position = UDim2.new(0, 10, 0, 5)
buttontext.BackgroundColor3 = Color3.fromRGB(25,25,25)
buttontext.BorderColor3 = Color3.fromRGB(23,23,23)
buttontext.BorderSizePixel = 1
buttontext.Active = true
buttontext.Draggable = false
buttontext.TextSize = 20
buttontext.Text = text
buttontext.Font = Enum.Font.GothamBold
buttontext.TextColor3 = Color3.fromRGB(255,255,255)
buttontext.TextTruncate = Enum.TextTruncate.AtEnd

local uicorner_4639 = Instance.new("UICorner", buttontext)
uicorner_4639.CornerRadius = UDim.new(0, 6)

local button = Instance.new("TextButton", buttonholder)
button.Size = UDim2.new(0, 40, 0, 25)
button.Position = UDim2.new(0, 235, 0, 5)
button.BackgroundColor3 = Color3.fromRGB(100,100,100)
button.BorderColor3 = Color3.fromRGB(23,23,23)
button.BorderSizePixel = 1
button.Active = true
button.Draggable = false
button.Text = ""

local uicorner_7 = Instance.new("UICorner", button)
uicorner_7.CornerRadius = UDim.new(0, 6)

button.MouseButton1Click:Connect(function()
callback()
end)

end

function elements:Slider(title, min,max,callback)
local sliderholder = Instance.new("Frame", tab)
sliderholder.Size = UDim2.new(0, 280, 0, 50)
sliderholder.Position = UDim2.new(0, 0, 0, 0)
sliderholder.BackgroundColor3 = Color3.fromRGB(30,30,30)
sliderholder.BorderColor3 = Color3.fromRGB(23,23,23)
sliderholder.BorderSizePixel = 2
sliderholder.Active = true
sliderholder.Draggable = false

local uicorner_29 = Instance.new("UICorner", sliderholder)
uicorner_29.CornerRadius = UDim.new(0, 6)

local sliderholdertext = Instance.new("Frame", sliderholder)
sliderholdertext.Size = UDim2.new(0, 100, 0, 20)
sliderholdertext.Position = UDim2.new(0, 10, 0, 2)
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
slidertext.TextTruncate = Enum.TextTruncate.AtEnd

local uicorner_11 = Instance.new("UICorner", slidertext)
uicorner_11.CornerRadius = UDim.new(0, 6)

local slidernotfilled = Instance.new("Frame", sliderholder)
slidernotfilled.Size = UDim2.new(0, 260, 0, 15)
slidernotfilled.Position = UDim2.new(0, 10, 0, 30)
slidernotfilled.BackgroundColor3 = Color3.fromRGB(5,5,5)
slidernotfilled.BorderColor3 = Color3.fromRGB(10, 10 ,10)
slidernotfilled.BorderSizePixel = 0
slidernotfilled.Active = true
slidernotfilled.Draggable = false

local uicorner_10 = Instance.new("UICorner", slidernotfilled)
uicorner_10.CornerRadius = UDim.new(0, 20)

local sliderfilled = Instance.new("Frame", slidernotfilled)
sliderfilled.Size = UDim2.new(0, 1, 0, 15)
sliderfilled.Position = UDim2.new(0, 0, 0, 0)
sliderfilled.BackgroundColor3 = Color3.fromRGB(0,255,255)
sliderfilled.BorderColor3 = Color3.fromRGB(10, 10 ,10)
sliderfilled.BorderSizePixel = 0
sliderfilled.Active = true
sliderfilled.Draggable = false

local uicorner_10 = Instance.new("UICorner", sliderfilled)
uicorner_10.CornerRadius = UDim.new(0, 20)

local sliderbuttonforsl = Instance.new("TextButton", sliderfilled)
sliderbuttonforsl.Size = UDim2.new(0, 15, 0, 20)
sliderbuttonforsl.Position = UDim2.new(0, (sliderfilled.Size.X.Offset) * ((260 - min) / (max - min)), 0, -5)
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

local uicorner_999 = Instance.new("UICorner", sluderbuttonforsl)
uicorner_999.CornerRadius = UDim.new(0, 50)

local sliderminmax = Instance.new("TextLabel", sliderholder)
sliderminmax.Size = UDim2.new(0, 50, 0, 16)
sliderminmax.Position = UDim2.new(0, 225, 0, 5)
sliderminmax.BackgroundColor3 = Color3.fromRGB(10,10,10)
sliderminmax.BorderColor3 = Color3.fromRGB(23,23,23)
sliderminmax.BorderSizePixel = 0
sliderminmax.Active = true
sliderminmax.Draggable = false
sliderminmax.TextSize = 25
sliderminmax.Text = tonumber(min)
sliderminmax.Font = Enum.Font.SourceSans
sliderminmax.TextColor3 = Color3.fromRGB(255,255,255)
sliderminmax.TextTruncate = Enum.TextTruncate.AtEnd

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
if xoffset > 260 then
xoffset = 260
elseif xoffset < 0 then
xoffset = 0
end
sliderbuttonforsl.Position = UDim2.new(0, xoffset, 0, -5)
sliderfilled.Size = UDim2.new(0, xoffset + 10, 0, 15)
sliderminmax.Text = tostring(math.round(min + ((max - min) * xoffset / 260)))
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

sliderminmax:GetPropertyChangedSignal("Text"):Connect(function()
callback(tonumber(sliderminmax.Text))
end)

end

function elements:Toggle(title, callback)
local toggleholder = Instance.new("Frame", tab)
toggleholder.Size = UDim2.new(0, 280, 0, 30)
toggleholder.Position = UDim2.new(0, 0, 0, 0)
toggleholder.BackgroundColor3 = Color3.fromRGB(30,30,30)
toggleholder.BorderColor3 = Color3.fromRGB(23,23,23)
toggleholder.BorderSizePixel = 2
toggleholder.Active = true
toggleholder.Draggable = false

local uicorner_8 = Instance.new("UICorner", toggleholder)
uicorner_8.CornerRadius = UDim.new(0, 6)
			
local toggletext1 = Instance.new("Frame", toggleholder)
toggletext1.Size = UDim2.new(0, 180, 0, 20)
toggletext1.Position = UDim2.new(0, 10, 0, 5)
toggletext1.BackgroundColor3 = Color3.fromRGB(30,30,30)
toggletext1.BorderColor3 = Color3.fromRGB(23,23,23)
toggletext1.BorderSizePixel = 0
toggletext1.Active = true
toggletext1.Draggable = false

local uicorner_10 = Instance.new("UICorner", toggletext1)
uicorner_10.CornerRadius = UDim.new(0, 6)

local toggletext = Instance.new("TextLabel", toggletext1)
toggletext.Size = UDim2.new(0, 180, 0, 20)
toggletext.Position = UDim2.new(0, 5, 0, 0)
toggletext.BackgroundColor3 = Color3.fromRGB(30,30,30)
toggletext.BorderColor3 = Color3.fromRGB(23,23,23)
toggletext.BorderSizePixel = 0
toggletext.Active = true
toggletext.Draggable = false
toggletext.TextSize = 21.5
toggletext.Text = title
toggletext.TextXAlignment = Enum.TextXAlignment.Left
toggletext.Font = Enum.Font.GothamBold
toggletext.TextColor3 = Color3.fromRGB(255,255,255)
toggletext.TextTruncate = Enum.TextTruncate.AtEnd

local uicorner_11 = Instance.new("UICorner", toggletext)
uicorner_11.CornerRadius = UDim.new(0, 6)

local togglebutton = Instance.new("TextLabel", toggleholder)
togglebutton.Size = UDim2.new(0, 80, 0, 20)
togglebutton.Position = UDim2.new(0, 195, 0, 5)
togglebutton.BackgroundColor3 = Color3.fromRGB(10, 10 ,10)
togglebutton.BorderColor3 = Color3.fromRGB(10, 10 ,10)
togglebutton.BorderSizePixel = 2
togglebutton.Active = true
togglebutton.Draggable = false
togglebutton.Text = ""

local uicorner_12 = Instance.new("UICorner", togglebutton)
uicorner_12.CornerRadius = UDim.new(0, 2.5)

local hidedtogglebutton = Instance.new("TextButton", togglebutton)
hidedtogglebutton.Size = UDim2.new(0, 80, 0, 20)
hidedtogglebutton.Position = UDim2.new(0, 0, 0, 0)
hidedtogglebutton.BackgroundTransparency = 1
hidedtogglebutton.BorderColor3 = Color3.fromRGB(10, 10 ,10)
hidedtogglebutton.BorderSizePixel = 0
hidedtogglebutton.Active = true
hidedtogglebutton.Draggable = false
hidedtogglebutton.Text = ""
hidedtogglebutton.ZIndex = 2

local uicorner_57 = Instance.new("UICorner", hidedtogglebutton)
uicorner_57.CornerRadius = UDim.new(0, 2.5)

local togglecircus = Instance.new("TextLabel", togglebutton)
togglecircus.Size = UDim2.new(0, 30, 0, 16.25)
togglecircus.Position = UDim2.new(0, 5, 0, 2.5)
togglecircus.BackgroundColor3 = Color3.fromRGB(255,48,48)
togglecircus.BorderColor3 = Color3.fromRGB(10, 10 ,10)
togglecircus.BorderSizePixel = 0
togglecircus.Active = true
togglecircus.Draggable = false
togglecircus.Text = ""

local uicorner_61 = Instance.new("UICorner", togglecircus)
uicorner_61.CornerRadius = UDim.new(0, 2.5)

local ToggleEnabled = false
local Toggling = false

hidedtogglebutton.MouseButton1Click:Connect(function()
if ToggleEnabled == false then
if Toggling == false then
Toggling = true
game:GetService("TweenService"):Create(togglecircus, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(48,255,48)}):Play()
game:GetService("TweenService"):Create(togglecircus, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, 45, 0, 2.5)}):Play()
ToggleEnabled = true
wait(0.3)
Toggling = false
end
else
if Toggling == false then
Toggling = true
game:GetService("TweenService"):Create(togglecircus, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(255,48,48)}):Play()
game:GetService("TweenService"):Create(togglecircus, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, 5, 0, 2.5)}):Play()
ToggleEnabled = false
wait(0.3)
Toggling = false
end
end
callback(ToggleEnabled)
return ToggleEnabled
end)
end

function elements:Textbox(title, funct)
local textboxholder = Instance.new("Frame", tab)
textboxholder.Size = UDim2.new(0, 280, 0, 30)
textboxholder.Position = UDim2.new(0, 0, 0, 0)
textboxholder.BackgroundColor3 = Color3.fromRGB(30,30,30)
textboxholder.BorderColor3 = Color3.fromRGB(23,23,23)
textboxholder.BorderSizePixel = 2
textboxholder.Active = true
textboxholder.Draggable = false

local uicorner_12 = Instance.new("UICorner", textboxholder)
uicorner_12.CornerRadius = UDim.new(0, 6)

local textboxtext1 = Instance.new("Frame", textboxholder)
textboxtext1.Size = UDim2.new(0, 175, 0, 20)
textboxtext1.Position = UDim2.new(0, 10, 0, 5)
textboxtext1.BackgroundColor3 = Color3.fromRGB(30,30,30)
textboxtext1.BorderColor3 = Color3.fromRGB(23,23,23)
textboxtext1.BorderSizePixel = 0
textboxtext1.Active = true
textboxtext1.Draggable = false

local uicorner_13 = Instance.new("UICorner", textboxtext1)
uicorner_13.CornerRadius = UDim.new(0, 6)

local textboxtext = Instance.new("TextLabel", textboxtext1)
textboxtext.Size = UDim2.new(0, 175, 0, 20)
textboxtext.Position = UDim2.new(0, 0, 0, 0)
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
textboxtext.TextTruncate = Enum.TextTruncate.AtEnd

local uicorner_14 = Instance.new("UICorner", textboxtext)
uicorner_14.CornerRadius = UDim.new(0, 6)

local textbox = Instance.new("TextBox", textboxholder)
textbox.Size = UDim2.new(0, 90, 0, 20)
textbox.Position = UDim2.new(0, 180, 0, 5)
textbox.BackgroundColor3 = Color3.fromRGB(9,9,9)
textbox.BorderColor3 = Color3.fromRGB(23,23,23)
textbox.BorderSizePixel = 0
textbox.Active = true
textbox.Draggable = false
textbox.TextSize = 14
textbox.Text = ""
textbox.Font = Enum.Font.GothamBold
textbox.TextXAlignment = Enum.TextXAlignment.Left
textbox.TextColor3 = Color3.fromRGB(255,255,255)
textbox.TextTruncate = Enum.TextTruncate.AtEnd

local uicorner_14 = Instance.new("UICorner", textbox)
uicorner_14.CornerRadius = UDim.new(0, 6)
			textbox.FocusLost:Connect(function()
			    funct(textbox.Text)
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
dropdownholder.BackgroundColor3 = Color3.fromRGB(30,30,30)
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
dropdowntext.Font = Enum.Font.GothamBold
dropdowntext.TextXAlignment = Enum.TextXAlignment.Left
dropdowntext.TextColor3 = Color3.fromRGB(255,255,255)
dropdowntext.TextTruncate = Enum.TextTruncate.AtEnd

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
dropdownbutton.Font = Enum.Font.GothamBold
dropdownbutton.TextColor3 = Color3.fromRGB(255,255,255)
dropdownbutton.ZIndex = 1

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
uilistlayout18.Padding = UDim.new(0.02, 1)

local uistrokelist = Instance.new("UIStroke", dropdownlist)
uistrokelist.Thickness = 2
uistrokelist.Color = Color3.fromRGB(255,255,255)

local nowsize = 0

dropdownbutton.MouseButton1Click:Connect(function()
if dropdownlist.Size == UDim2.new(0, 300,0, 0) then
					dropdownlist.Visible = true
					dropdownlist:TweenSize(UDim2.new(0, 300,0, nowsize), "InOut", "Sine", 0.2, true)
					game:GetService("TweenService"):Create(dropdownbutton, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 90}):Play()
					wait(0.2)
					tab.CanvasSize = UDim2.new(0, 0, 0, 0)
					tab.AutomaticCanvasSize = Enum.AutomaticSize.Y
				else
					dropdownlist:TweenSize(UDim2.new(0, 300,0, 0), "InOut", "Sine", 0.2, true)
					game:GetService("TweenService"):Create(dropdownbutton, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play()
					wait(0.1)
					dropdownlist.Visible = false
					tab.CanvasSize = UDim2.new(0, 0, 0, 0)
					tab.AutomaticCanvasSize = Enum.AutomaticSize.Y
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
dropdownbuttoninlist.TextSize = 20
dropdownbuttoninlist.Font = Enum.Font.GothamBold

local uicorner_19 = Instance.new("UICorner", dropdownbuttoninlist)
uicorner_19.CornerRadius = UDim.new(0, 6)

nowsize += 25

dropdownbuttoninlist.MouseButton1Click:Connect(function()
callback(but)
dropdowntext.Text = title.." [-"..dropdownbuttoninlist.Text.."-]"
if dropdownlist.Size == UDim2.new(0, 300,0, nowsize) then
					dropdownlist:TweenSize(UDim2.new(0, 300,0, 0), "InOut", "Sine", 0.2, true)
					game:GetService("TweenService"):Create(dropdownbutton, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play()
					wait(.2)
					dropdownlist.Visible = false
				end
end)

end
end

function elements:Line(color, color2)
local lineholder = Instance.new("Frame", tab)
lineholder.Size = UDim2.new(0, 280, 0, 10)
lineholder.Position = UDim2.new(0, 0, 0, 0)
lineholder.BackgroundColor3 = color
lineholder.BorderColor3 = Color3.fromRGB(23,23,23)
lineholder.BorderSizePixel = 0
lineholder.Active = true
lineholder.Draggable = false
local uicorn83 = Instance.new("UICorner", lineholder)
uicorn83.CornerRadius = UDim.new(0,6)
local uistroke_68 = Instance.new("UIStroke", lineholder)
uistroke_68.Thickness = 5
uistroke_68.Color = color2
end

function elements:Label(text, color)
local labelholder = Instance.new("Frame", tab)
labelholder.Size = UDim2.new(0, 280, 0, 30)
labelholder.Position = UDim2.new(0, 0, 0, 0)
labelholder.BackgroundColor3 = Color3.fromRGB(30,30,30)
labelholder.BorderColor3 = Color3.fromRGB(23,23,23)
labelholder.BorderSizePixel = 2
labelholder.Active = true
labelholder.Draggable = false

local uicorner_4 = Instance.new("UICorner", labelholder)
uicorner_4.CornerRadius = UDim.new(0, 6)

local label = Instance.new("TextLabel", labelholder)
label.Size = UDim2.new(0, 270, 0, 25)
label.Position = UDim2.new(0, 5, 0, 2.5)
label.BackgroundColor3 = Color3.fromRGB(30,30,30)
label.BorderColor3 = Color3.fromRGB(23,23,23)
label.BorderSizePixel = 1
label.Active = true
label.Draggable = false
label.TextSize = 22
label.Text = text
label.Font = Enum.Font.GothamBold
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
