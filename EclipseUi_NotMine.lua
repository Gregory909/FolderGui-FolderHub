--Made by sexy man: https://github.com/D3v0nt3

for _, v in pairs(game.CoreGui:GetChildren()) do

	if v.Name == "EclipseUI" then		v:Destroy()

	end

end

local Library = {TabCount = 0, OptionCount = 1}

function Library:Main(title, kbind)

	local EclipseUI = Instance.new("ScreenGui")

	local Top = Instance.new("Frame")

	local UICorner = Instance.new("UICorner")

	local Main = Instance.new("Frame")

	local TabHolder = Instance.new("ScrollingFrame")

	local UIListLayout = Instance.new("UIListLayout")

	local HubHolder = Instance.new("Frame")

	local UICorner_3 = Instance.new("UICorner")

	local UICorner_13 = Instance.new("UICorner")

	local Title = Instance.new("TextLabel")

	local Minimize = Instance.new("ImageButton")

	EclipseUI.Name = "EclipseUI"

	EclipseUI.Parent = game.CoreGui

	Top.Name = "Top"

	Top.Parent = EclipseUI

	Top.Active = true

	Top.AnchorPoint = Vector2.new(0.5, 0.5)

	Top.BackgroundColor3 = Color3.fromRGB(0,0,0)

	Top.Position = UDim2.new(0.5, 0, 0.358816326, 0)

	Top.Size = UDim2.new(0, 517, 0, 28)

	Top.ZIndex = 2

	Top.Active = true

	UICorner.CornerRadius = UDim.new(0, 3)

	UICorner.Parent = Top

	Main.Name = "Main"

	Main.Parent = Top

	Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

	Main.BorderSizePixel = 0

	Main.ClipsDescendants = true

	Main.Position = UDim2.new(0, 0, 0.89399749, 0)

	Main.Size = UDim2.new(0, 517, 0, 237)

	TabHolder.Name = "TabHolder"

	TabHolder.Parent = Main

	TabHolder.Active = true

	TabHolder.BackgroundColor3 = Color3.fromRGB(28, 28, 28)

	TabHolder.BackgroundTransparency = 1.000

	TabHolder.Position = UDim2.new(0, 0, 0.0548523217, 0)

	TabHolder.Size = UDim2.new(0, 131, 0, 224)

	TabHolder.ScrollBarThickness = 0

	TabHolder.CanvasSize = UDim2.new(0, 0, 1, 0)

	UIListLayout.Parent = TabHolder

	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	HubHolder.Name = "HubHolder"

	HubHolder.Parent = Main

	HubHolder.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

	HubHolder.Position = UDim2.new(0.257253379, 0, 0.0548523217, 0)

	HubHolder.Size = UDim2.new(0, 377, 0, 216)

	UICorner_3.CornerRadius = UDim.new(0, 2)

	UICorner_3.Parent = HubHolder

	UICorner_13.CornerRadius = UDim.new(0, 4)

	UICorner_13.Parent = Main

	Title.Name = "Title"

	Title.Parent = Top

	Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

	Title.BackgroundTransparency = 1.000

	Title.Position = UDim2.new(0.0270793028, 0, 0, 0)

	Title.Size = UDim2.new(0, 471, 0, 27)

	Title.ZIndex = 2

	Title.Font = Enum.Font.SourceSansSemibold

	Title.Text = title

	Title.TextColor3 = Color3.fromRGB(255, 255, 255)

	Title.TextScaled = true

	Title.TextSize = 14.000

	Title.TextWrapped = true

	Title.TextXAlignment = Enum.TextXAlignment.Left

	Minimize.Name = "Minimize"

	Minimize.Parent = Top

	Minimize.BackgroundTransparency = 1.000

	Minimize.Position = UDim2.new(0.938104451, 0, 0.0370370373, 0)

	Minimize.Size = UDim2.new(0, 25, 0, 25)

	Minimize.ZIndex = 2

	Minimize.Image = "rbxassetid://3926305904"

	Minimize.ImageRectOffset = Vector2.new(564, 284)

	Minimize.ImageRectSize = Vector2.new(36, 36)

	local function PKACQ_fake_script() -- Minimize.Script 

		local script = Instance.new('Script', Minimize)

		script.Parent.MouseButton1Click:Connect(function()

			if script.Parent.Parent.Main.Size == UDim2.new(0, 517,0, 237) then

				script.Parent.Parent.Main:TweenSize(UDim2.new(0, 517,0, 0), "InOut", "Sine", 0.2, true)

				game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 90}):Play();

			else

				script.Parent.Parent.Main:TweenSize(UDim2.new(0, 517,0, 237), "InOut", "Sine", 0.2, true)

				game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play();

			end

		end)

	end

	coroutine.wrap(PKACQ_fake_script)()

	

	function dragify(Frame)

		dragToggle = nil

		dragSpeed = nil -- You can edit this.

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

	dragify(Top)

	

	local player = game.Players.LocalPlayer

    local mouse = player:GetMouse()

	mouse.KeyDown:connect(function(key)

	    if key == kbind  then

	        Top.Visible = not Top.Visible

	    end

	end)

	

	local TabHolded = {}

	function TabHolded:Tab(name)

		local Tab = Instance.new("TextButton")

		local UICorner_2 = Instance.new("UICorner")

		local TabName = Instance.new("TextLabel")

		local Hub = Instance.new("ScrollingFrame")

		local UIListLayout_2 = Instance.new("UIListLayout")

		local UIPadding = Instance.new("UIPadding")

		

		Tab.Name = "Tab"

		Tab.Parent = TabHolder

		Tab.BackgroundColor3 = Library.TabCount == 0 and Color3.fromRGB(45, 45, 45) or Color3.fromRGB(30, 30, 30)

		Tab.BorderSizePixel = 0

		Tab.Position = UDim2.new(0.0381679386, 0, 0, 0)

		Tab.Size = UDim2.new(0, 121, 0, 25)

		Tab.AutoButtonColor = false

		Tab.Font = Enum.Font.SourceSans

		Tab.Text = ""

		Tab.TextColor3 = Color3.fromRGB(0, 0, 0)

		Tab.TextSize = 14.000

		UICorner_2.CornerRadius = UDim.new(0, 2)

		UICorner_2.Parent = Tab

		TabName.Name = "TabName"

		TabName.Parent = Tab

		TabName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

		TabName.BackgroundTransparency = 1.000

		TabName.Position = UDim2.new(-0.00563768111, 0, 0.0340740755, 0)

		TabName.Size = UDim2.new(0, 121, 0, 22)

		TabName.Font = Enum.Font.SourceSansSemibold

		TabName.Text = name

		TabName.TextColor3 = Color3.fromRGB(255, 255, 255)

		TabName.TextScaled = true

		TabName.TextSize = 14.000

		TabName.TextWrapped = true

		

		Hub.Name = "Hub"

		Hub.Parent = HubHolder

		Hub.Active = true

		Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

		Hub.BackgroundTransparency = 1.000

		Hub.BorderSizePixel = 0

		Hub.Size = UDim2.new(0, 377, 0, 216)

		Hub.BottomImage = ""

		Hub.CanvasSize = UDim2.new(0, 0, 4, 0)

		Hub.ScrollBarThickness = 0

		Hub.TopImage = ""

		Hub.Visible = Library.TabCount == 0 and true or false

		UIListLayout_2.Parent = Hub

		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center

		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

		UIListLayout_2.Padding = UDim.new(0, 4)

		UIPadding.Parent = Hub

		UIPadding.PaddingTop = UDim.new(0, 5)

		Tab.MouseButton1Click:Connect(function()

			for i,v in pairs(TabHolder:GetDescendants()) do

				if v.Name == "Tab" then

					game:GetService("TweenService"):Create(v, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()

				end

			end

			game:GetService("TweenService"):Create(Tab, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}):Play()

			for i,v in pairs(HubHolder:GetChildren()) do

				if v.Name == "Hub" then

					v.Visible = false

				end

			end

			Hub.Visible = true

		end)

		

		Library.TabCount = Library.TabCount + 1

		

		local Lib = {}

		

		function Lib:Button(name, callback)

			local Button = Instance.new("TextButton")

			local UICorner_4 = Instance.new("UICorner")

			local ButtonName = Instance.new("TextLabel")

			

			Button.Name = "Button"

			Button.Parent = Hub

			Button.BackgroundColor3 = Color3.fromRGB(35,35,35)

			Button.Position = UDim2.new(0.234748006, 0, 0, 0)

			Button.Size = UDim2.new(0, 364, 0, 25)

			Button.AutoButtonColor = false

			Button.Font = Enum.Font.SourceSans

			Button.Text = ""

			Button.TextColor3 = Color3.fromRGB(0, 0, 0)

			Button.TextSize = 14.000

			UICorner_4.CornerRadius = UDim.new(0, 2)

			UICorner_4.Parent = Button

			ButtonName.Name = "ButtonName"

			ButtonName.Parent = Button

			ButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			ButtonName.BackgroundTransparency = 1.000

			ButtonName.Position = UDim2.new(0, 0, 0.0340734869, 0)

			ButtonName.Size = UDim2.new(0, 364, 0, 22)

			ButtonName.Font = Enum.Font.SourceSansSemibold

			ButtonName.Text = name

			ButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)

			ButtonName.TextScaled = true

			ButtonName.TextSize = 14.000

			ButtonName.TextWrapped = true

			Button.MouseButton1Down:Connect(function()

				game:GetService("TweenService"):Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(54,54,54)}):Play()

			end)

			Button.MouseButton1Up:Connect(function()

				game:GetService("TweenService"):Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(35,35,35)}):Play()

			end)

			

			Button.MouseButton1Down:Connect(function()

				callback()

			end)

		end

		

		function Lib:Toggle(name, callback)

			local ToggleBack = Instance.new("Frame")

			local UICorner_5 = Instance.new("UICorner")

			local ToggleName = Instance.new("TextLabel")

			local ToggleIcon = Instance.new("Frame")

			local UICorner_6 = Instance.new("UICorner")

			local Toggle = Instance.new("TextButton")

			

			ToggleBack.Name = "ToggleBack"

			ToggleBack.Parent = Hub

			ToggleBack.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

			ToggleBack.Position = UDim2.new(0.0172413792, 0, 0.166666672, 0)

			ToggleBack.Size = UDim2.new(0, 364, 0, 25)

			UICorner_5.CornerRadius = UDim.new(0, 2)

			UICorner_5.Parent = ToggleBack

			ToggleName.Name = "ToggleName"

			ToggleName.Parent = ToggleBack

			ToggleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			ToggleName.BackgroundTransparency = 1.000

			ToggleName.Position = UDim2.new(0, 0, -0.00592652708, 0)

			ToggleName.Size = UDim2.new(0, 337, 0, 22)

			ToggleName.ZIndex = 2

			ToggleName.Font = Enum.Font.SourceSansSemibold

			ToggleName.Text = name

			ToggleName.TextColor3 = Color3.fromRGB(255, 255, 255)

			ToggleName.TextScaled = true

			ToggleName.TextSize = 14.000

			ToggleName.TextWrapped = true

			ToggleIcon.Name = "ToggleIcon"

			ToggleIcon.Parent = ToggleBack

			ToggleIcon.BackgroundColor3 = Color3.fromRGB(255,48,48)

			ToggleIcon.Position = UDim2.new(0.92900002, 0, 0.0399999991, 0)

			ToggleIcon.Size = UDim2.new(0, 25, 0, 23)

			ToggleIcon.ZIndex = 2

			UICorner_6.CornerRadius = UDim.new(0, 2)

			UICorner_6.Parent = ToggleIcon

			Toggle.Name = "Toggle"

			Toggle.Parent = ToggleBack

			Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			Toggle.BackgroundTransparency = 1.000

			Toggle.Position = UDim2.new(0.925824165, 0, 0.0399999991, 0)

			Toggle.Size = UDim2.new(0, 27, 0, 20)

			Toggle.Font = Enum.Font.SourceSans

			Toggle.Text = ""

			Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)

			Toggle.TextSize = 14.000

			

			local IsToggled = false

			Toggle.MouseButton1Click:Connect(function()

				if IsToggled == false then

					IsToggled = true

					game:GetService("TweenService"):Create(ToggleIcon, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(48,255,48)}):Play()

				else

					IsToggled = false

					game:GetService("TweenService"):Create(ToggleIcon, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(255, 48, 48)}):Play()

				end

				callback(IsToggled)

			end)

		end

		

		function Lib:Slider(name, min, max, start, callback)

			local SliderBack = Instance.new("Frame")

			local UICorner_10 = Instance.new("UICorner")

			local Slider = Instance.new("Frame")

			local UICorner_11 = Instance.new("UICorner")

			local SliderName = Instance.new("TextLabel")

			local SliderValue = Instance.new("TextLabel")

			local dragging = false

			

			SliderBack.Name = "SliderBack"

			SliderBack.Parent = Hub

			SliderBack.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

			SliderBack.Position = UDim2.new(0.0172413792, 0, 0.42592594, 0)

			SliderBack.Size = UDim2.new(0, 364, 0, 25)

			UICorner_10.CornerRadius = UDim.new(0, 2)

			UICorner_10.Parent = SliderBack

			Slider.Name = "Slider"

			Slider.Parent = SliderBack

			Slider.BackgroundColor3 = Color3.fromRGB(181,181,181)

			Slider.Size = UDim2.new(0, 60, 0, 25)

			UICorner_11.CornerRadius = UDim.new(0, 3)

			UICorner_11.Parent = Slider

			SliderName.Name = "SliderName"

			SliderName.Parent = SliderBack

			SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			SliderName.BackgroundTransparency = 1.000

			SliderName.Position = UDim2.new(0, 0, 0.0400000066, 0)

			SliderName.Size = UDim2.new(0, 315, 0, 22)

			SliderName.Font = Enum.Font.SourceSansSemibold

			SliderName.Text = name

			SliderName.TextColor3 = Color3.fromRGB(255, 255, 255)

			SliderName.TextScaled = true

			SliderName.TextSize = 14.000

			SliderName.TextWrapped = true

			SliderValue.Name = "SliderValue"

			SliderValue.Parent = SliderBack

			SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			SliderValue.BackgroundTransparency = 1.000

			SliderValue.Position = UDim2.new(0.865384638, 0, 0, 0)

			SliderValue.Size = UDim2.new(0, 47, 0, 25)

			SliderValue.Font = Enum.Font.Highway

			SliderValue.Text = tostring(start .. "/" .. max)

			SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)

			SliderValue.TextScaled = true

			SliderValue.TextSize = 14.000

			SliderValue.TextWrapped = true

			

			local function slide(input)

				local pos = UDim2.new(math.clamp((input.Position.X - SliderBack.AbsolutePosition.X) / SliderBack.AbsoluteSize.X, 0, 1), 0, 1, 0);

				Slider:TweenSize(pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true);

				local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min);

				SliderValue.Text = tostring(value) .. "/" .. max;

				callback(value);

			end;

			SliderBack.InputBegan:Connect(function(input)

				if input.UserInputType == Enum.UserInputType.MouseButton1 then

					dragging = true;

				end;

			end);

			SliderBack.InputEnded:Connect(function(input)

				if input.UserInputType == Enum.UserInputType.MouseButton1 then

					dragging = false;

				end;

			end);

			SliderBack.InputBegan:Connect(function(input)

				if input.UserInputType == Enum.UserInputType.MouseButton1 then

					slide(input);

				end;

			end);

			game:GetService("UserInputService").InputChanged:Connect(function(input)

				if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then

					slide(input);

				end;

			end);

		end

		

		function Lib:Dropdown(name, options, callback)

			local DropBack = Instance.new("Frame")

			local UICorner_7 = Instance.new("UICorner")

			local DropHubBack = Instance.new("Frame")

			local UICorner_8 = Instance.new("UICorner")

			local DropHub = Instance.new("ScrollingFrame")

			local UIListLayout_3 = Instance.new("UIListLayout")

			local UIPadding_2 = Instance.new("UIPadding")

			local DropName = Instance.new("TextLabel")

			local DropArrow = Instance.new("ImageButton")

			

			DropBack.Name = "DropBack"

			DropBack.Parent = Hub

			DropBack.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

			DropBack.Size = UDim2.new(0, 364, 0, 25)

			UICorner_7.CornerRadius = UDim.new(0, 2)

			UICorner_7.Parent = DropBack

			DropHubBack.Name = "DropHubBack"

			DropHubBack.Parent = DropBack

			DropHubBack.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

			DropHubBack.ClipsDescendants = true

			DropHubBack.Position = UDim2.new(0, 0, 0.959999979, 0)

			DropHubBack.Size = UDim2.new(0, 364, 0, 0)

			DropHubBack.Visible = false

			DropHubBack.ZIndex = 4

			UICorner_8.CornerRadius = UDim.new(0, 2)

			UICorner_8.Parent = DropHubBack

			DropHub.Name = "DropHub"

			DropHub.Parent = DropHubBack

			DropHub.Active = true

			DropHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			DropHub.BackgroundTransparency = 1.000

			DropHub.BorderSizePixel = 0

			DropHub.Size = UDim2.new(0, 361, 0, 122)

			DropHub.ZIndex = 4

			DropHub.CanvasSize = UDim2.new(0, 0, 1, 0)

			DropHub.ScrollBarThickness = 0

			UIListLayout_3.Parent = DropHub

			UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center

			UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

			UIListLayout_3.Padding = UDim.new(0, 4)

			UIPadding_2.Parent = DropHub

			UIPadding_2.PaddingLeft = UDim.new(0, 4)

			UIPadding_2.PaddingTop = UDim.new(0, 4)

			DropName.Name = "DropName"

			DropName.Parent = DropBack

			DropName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			DropName.BackgroundTransparency = 1.000

			DropName.Position = UDim2.new(0, 0, 0.0340734869, 0)

			DropName.Size = UDim2.new(0, 338, 0, 22)

			DropName.Font = Enum.Font.SourceSansSemibold

			DropName.Text = name

			DropName.TextColor3 = Color3.fromRGB(255, 255, 255)

			DropName.TextScaled = true

			DropName.TextSize = 14.000

			DropName.TextWrapped = true

			DropArrow.Name = "DropArrow"

			DropArrow.Parent = DropBack

			DropArrow.BackgroundTransparency = 1.000

			DropArrow.Position = UDim2.new(0.92711544, 0, -0.00296296179, 0)

			DropArrow.Rotation = 90.000

			DropArrow.Size = UDim2.new(0, 25, 0, 25)

			DropArrow.ZIndex = 2

			DropArrow.Image = "rbxassetid://3926305904"

			DropArrow.ImageRectOffset = Vector2.new(564, 284)

			DropArrow.ImageRectSize = Vector2.new(36, 36)

			DropArrow.MouseButton1Click:Connect(function()

				if DropHubBack.Size == UDim2.new(0, 364,0, 0) then

					DropHubBack.Visible = true

					DropHubBack:TweenSize(UDim2.new(0, 364,0, 122), "InOut", "Sine", 0.2, true)

					game:GetService("TweenService"):Create(DropArrow, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play();

				else

					DropHubBack:TweenSize(UDim2.new(0, 364,0, 0), "InOut", "Sine", 0.2, true)

					game:GetService("TweenService"):Create(DropArrow, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 90}):Play();

					wait(.2)

					DropHubBack.Visible = false

				end

			end)

			

			for _, v in pairs(options) do

				local DropButton = Instance.new("TextButton")

				local UICorner_9 = Instance.new("UICorner")

				local DropButtonName = Instance.new("TextLabel")

				

				DropButton.Name = "DropButton"

				DropButton.Parent = DropHub

				DropButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

				DropButton.Position = UDim2.new(0.0166204982, 0, 0.0588235296, 0)

				DropButton.Size = UDim2.new(0, 355, 0, 25)

				DropButton.ZIndex = 4

				DropButton.AutoButtonColor = false

				DropButton.Font = Enum.Font.SourceSans

				DropButton.Text = ""

				DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)

				DropButton.TextSize = 14.000

				UICorner_9.CornerRadius = UDim.new(0, 2)

				UICorner_9.Parent = DropButton

				DropButtonName.Name = "DropButtonName"

				DropButtonName.Parent = DropButton

				DropButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				DropButtonName.BackgroundTransparency = 1.000

				DropButtonName.Position = UDim2.new(0, 0, 0.0340734869, 0)

				DropButtonName.Size = UDim2.new(0, 364, 0, 22)

				DropButtonName.ZIndex = 4

				DropButtonName.Font = Enum.Font.SourceSansSemibold

				DropButtonName.Text = tostring(v)

				DropButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)

				DropButtonName.TextScaled = true

				DropButtonName.TextSize = 14.000

				DropButtonName.TextWrapped = true

				

				DropButton.MouseButton1Down:Connect(function()

					game:GetService("TweenService"):Create(DropButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(255, 129, 3)}):Play()

				end)

				DropButton.MouseButton1Up:Connect(function()

					game:GetService("TweenService"):Create(DropButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}):Play()

				end)

				DropButton.MouseButton1Click:Connect(function()

					callback(v)

					if DropHubBack.Size == UDim2.new(0, 364,0, 122) then

						DropHubBack:TweenSize(UDim2.new(0, 364,0, 0), "InOut", "Sine", 0.2, true)

						game:GetService("TweenService"):Create(DropArrow, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 90}):Play();

						wait(.2)

						DropHubBack.Visible = false

						DropName.Text = DropButtonName.Text

					end

				end)

			Library.OptionCount = Library.OptionCount + 1

			if Library.OptionCount >= 3 then

				DropHub.CanvasSize = UDim2.new(0, 0, Library.OptionCount, 0)

				end

			end

		end

		

		

		function Lib:Box(name, callback)

			local Box = Instance.new("TextBox")

			local UICorner_12 = Instance.new("UICorner")

			local BoxName = Instance.new("TextLabel")

			

			Box.Name = "Box"

			Box.Parent = Hub

			Box.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

			Box.ClipsDescendants = true

			Box.Position = UDim2.new(-0.190981433, 0, 0.0069444445, 0)

			Box.Size = UDim2.new(0, 364, 0, 25)

			Box.Font = Enum.Font.SourceSansSemibold

			Box.Text = ""

			Box.TextColor3 = Color3.fromRGB(255, 255, 255)

			Box.TextSize = 20.000

			UICorner_12.CornerRadius = UDim.new(0, 2)

			UICorner_12.Parent = Box

			BoxName.Name = "BoxName"

			BoxName.Parent = Box

			BoxName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			BoxName.BackgroundTransparency = 1.000

			BoxName.Position = UDim2.new(0, 0, 0.0340734869, 0)

			BoxName.Size = UDim2.new(0, 364, 0, 22)

			BoxName.Font = Enum.Font.SourceSansSemibold

			BoxName.Text = name

			BoxName.TextColor3 = Color3.fromRGB(100, 100, 100)

			BoxName.TextScaled = true

			BoxName.TextSize = 14.000

			BoxName.TextWrapped = true

			Box.Focused:Connect(function()

				for i=1, 10 do

					BoxName.TextTransparency = BoxName.TextTransparency + 1

					wait()

				end

			end)

			Box.FocusLost:Connect(function()

				if Box.Text == "" then

					for i=1, 10 do

						BoxName.TextTransparency = BoxName.TextTransparency - 1

						wait()

					end

				end

				callback(Box.Text)

			end)

		end

		

		function Lib:Label(text)

			local Label = Instance.new("TextLabel")

			

			Label.Name = "Label"

			Label.Parent = Hub

			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			Label.BackgroundTransparency = 1.000

			Label.Size = UDim2.new(0, 364, 0, 22)

			Label.Font = Enum.Font.SourceSansSemibold

			Label.Text = text

			Label.TextColor3 = Color3.fromRGB(255, 255, 255)

			Label.TextScaled = true

			Label.TextSize = 14.000

			Label.TextWrapped = true

		end

		

		return Lib

		

	end

	

	return TabHolded

	

end

return Library
