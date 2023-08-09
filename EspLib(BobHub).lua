local esplib = {}

local rs = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local cam = Workspace.CurrentCamera
local worldToViewportPoint = cam.worldToViewportPoint

function esplib:addtextobject(obj, color, objadorn, text)
local bill = Instance.new("BillboardGui",obj)
    bill.Name = "BobHubText"
    bill.AlwaysOnTop = true
    bill.Size = UDim2.fromOffset(200,50)
    bill.ExtentsOffset = Vector3.new(0,1.5,0)
    bill.Enabled = true
    bill.Adornee = objadorn
    local textlabel = Instance.new("TextLabel",bill)
    textlabel.TextSize = 20
    textlabel.Text = text
    textlabel.Font = Enum.Font.SourceSans
    textlabel.BackgroundTransparency = 1
    textlabel.Size = UDim2.fromScale(0.5,0.5)
    textlabel.TextColor3 = color
textlabel.TextStrokeTransparency = 0
textlabel.TextYAlignment = Enum.TextYAlignment.Bottom
textlabel.ZIndex = 0
end

function esplib:removetextobject(obj)
for _,obj in pairs(game.Workspace:GetDescendants()) do
if obj:FindFirstChild("BobHubText") then
obj.BobHubText:Destroy()
end
end
end

function esplib:addlineobject(objto, color)
local line = Drawing.new("Line")
line.Thickness = 1
line.Transparency = 0
line.Color = color
line.From = Vector2.new(cam.worldToViewportPoint / 2, cam.worldToViewportPoint / 1)
line.To = objto
local OnScreen = cam:worldToViewportPoint(objto)
if OnScreen then
line.Visible = true
else
line.Visible = false
end
rs.Stepped:Wait(1)
line:Remove()
end

function esplib:removelineonject(obj)
if line.To == obj then
line:Remove()
end
end

return esplib
