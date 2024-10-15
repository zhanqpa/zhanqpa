game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Died.SoundId = "rbxassetid://8491769438"

local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "海豚中心",
    Text = "非常有实力好吧！！！",
    Duration = 5, 
})
print("反挂机开启")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)

local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
  LastIteration = tick()
  for Index = #FrameUpdateTable, 1, -1 do
FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
  end
  FrameUpdateTable[1] = LastIteration
  local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
CurrentFPS = CurrentFPS - CurrentFPS % 1
  FpsLabel.Text = ("沈阳时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local OrionLib = loadstring(game:HttpGet('https://pastebin.com/raw/XVZvnLwG'))()

local Window = OrionLib:MakeWindow({Name = "海豚中心1.3", HidePremium = false, SaveConfig = true,IntroText = "欢迎使用海豚中心！！！", ConfigFolder = "屁眼脚本"})

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "海豚中心1.3"; Text ="祝你玩的开心"; Duration = 4; })

local Tab =Window:MakeTab({

	Name = "公告",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

Tab:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
Tab:AddParagraph("您的注入器:"," "..identifyexecutor().."")
Tab:AddParagraph("您当前服务器的ID"," "..game.GameId.."")

Tab:AddLabel("反挂机海豚脚本已为您开启")

Tab:AddLabel("此脚本为单人制作")

Tab:AddLabel("倒卖的别玩我的脚本！")

Tab:AddLabel("煞笔作者都换好几个UI了")

Tab:AddLabel("特别鸣谢小玄奘XSK，快去b站关注他！")

Tab:AddButton({

	Name = "复制作者QQ",

	Callback = function()

     setclipboard("1504549950")

  	end

})

Tab:AddButton({

	Name = "复制作者VX",

	Callback = function()

     setclipboard("ran8023921")

  	end

})

local Tab = Window:MakeTab({

    Name = "通用",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

local Section = Tab:AddSection({

	Name = "欢迎欢迎"

})
		
Tab:AddTextbox({

	Name = "跳跃高度",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end

})

Tab:AddTextbox({

	Name = "移动速度",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end

})

Tab:AddTextbox({

	Name = "重力设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Workspace.Gravity = Value

	end

})

Tab:AddTextbox({

	Name = "FOV设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)
		game.Workspace.CurrentCamera.FieldOfView = Value

	end

})

Tab:AddToggle({

	Name = "夜视",

	Default = false,

	Callback = function(Value)

		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end

	end

})

Tab:AddButton({

	Name = "穿墙UI",

	Callback = function()

local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Noclip = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local StatusPF = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Plr = Players.LocalPlayer
local Clipon = false

Noclip.Name = "Noclip"
Noclip.Parent = game.CoreGui

BG.Name = "BG"
BG.Parent = Noclip
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
BG.Size = UDim2.new(0, 210, 0, 127)
BG.Active = true
BG.Draggable = true

Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "Noclip"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 30
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0

Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size28
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 25
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0

StatusPF.Name = "StatusPF"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size24
StatusPF.Text = "Status:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 20
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true

Status.Name = "Status"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
Status.Size = UDim2.new(0, 56, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size14
Status.Text = "off"
Status.TextColor3 = Color3.new(0.666667, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left

Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "Created by KingLuna"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0
Credit.TextWrapped = true

Toggle.MouseButton1Click:connect(function()
	if Status.Text == "off" then
		Clipon = true
		Status.Text = "on"
		Status.TextColor3 = Color3.new(0,185,0)
		Stepped = game:GetService("RunService").Stepped:Connect(function()
			if not Clipon == false then
				for a, b in pairs(Workspace:GetChildren()) do
                if b.Name == Plr.Name then
                for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                v.CanCollide = false
                end end end end
			else
				Stepped:Disconnect()
			end
		end)
	elseif Status.Text == "on" then
		Clipon = false
		Status.Text = "off"
		Status.TextColor3 = Color3.new(170,0,0)
	end
end)

end

})

Tab:AddButton({

	Name = "无限跳UI",

	Callback = function()

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

    end
})

Tab:AddButton({

	Name = "工具包",

	Callback = function()

loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()

    end
})

Tab:AddButton({

	Name = "IY指令（汉化版）",

	Callback = function()

     loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,87,97,110,103,122,104,101,104,97,111,104,47,102,108,121,45,97,119,97,121,47,109,97,105,110,47,37,69,54,37,56,67,37,56,55,37,69,52,37,66,66,37,56,65,37,69,52,37,66,56,37,65,68,37,69,54,37,57,54,37,56,55,46,116,120,116})end)())))()
  	end

})

Tab:AddButton({

	Name = "飞行V3（隐藏）",

	Callback = function()

     local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "up"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "down"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "fly"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Fly GUI V3"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.Position =  UDim2.new(0, 0, -1, 27)

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "T"
mini.TextSize = 30
mini.Position = UDim2.new(0, 44, -1, 27)

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "T"
mini2.TextSize = 30
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Fly GUI V3";
	Text = "lnjection succeeded";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5;

Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame
		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false




	else
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)

local tis

up.MouseButton1Down:connect(function()
	tis = up.MouseEnter:connect(function()
		while tis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)

up.MouseLeave:connect(function()
	if tis then
		tis:Disconnect()
		tis = nil
	end
end)

local dis

down.MouseButton1Down:connect(function()
	dis = down.MouseEnter:connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)

down.MouseLeave:connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then


		tpwalking = false
		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
	end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = 'flyno1'
		wait(1)
		speed.Text = speeds
	else
		speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
			tpwalking = false
			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
		end
	end
end)

closebutton.MouseButton1Click:Connect(function()
	main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
	up.Visible = false
	down.Visible = false
	onof.Visible = false
	plus.Visible = false
	speed.Visible = false
	mine.Visible = false
	mini.Visible = false
	mini2.Visible = true
	main.Frame.BackgroundTransparency = 1
	closebutton.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
	up.Visible = true
	down.Visible = true
	onof.Visible = true
	plus.Visible = true
	speed.Visible = true
	mine.Visible = true
	mini.Visible = true
	mini2.Visible = false
	main.Frame.BackgroundTransparency = 0 
	closebutton.Position =  UDim2.new(0, 0, -1, 27)
end)

  	end    

})


Tab:AddButton({

	Name = "天气调节器（超美！！！！！）",

	Callback = function()

loadstring(game:HttpGet(('https://pastefy.app/xXkUxA0P/raw'),true))()

end

})

Tab:AddButton({

	Name = "点击传送工具",

	Callback = function()

mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack

	end

})

Tab:AddButton({

	Name = "甩飞所有人",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()

  	end    

})

Tab:AddButton({

	Name = "玩家透视",

	Callback = function()

     while wait(1) do
local players = game.Players:GetPlayers()

for i,v in pairs(players) do
 local esp = Instance.new("Highlight")
 esp.Name = v.Name
 esp.FillTransparency = 0.5
 esp.FillColor = Color3.new(0, 0, 0)
 esp.OutlineColor = Color3.new(255, 255, 255)
 esp.OutlineTransparency = 0
 esp.Parent = v.Character
end
end

  	end    

})

Tab:AddButton({

	Name = "电脑键盘（最好用！！）",

	Callback = function()

     loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()

  	end    

})

Tab:AddButton({

	Name = "跑酷FE",

	Callback = function()

     --Emetimex
plr = game.Players.LocalPlayer
local colormansup = 255
local sliding = false

if plr:WaitForChild("PlayerScripts"):FindFirstChild("Player Stuff") then

	plr:WaitForChild("PlayerScripts"):FindFirstChild("Player Stuff"):Destroy()

	end

local camerakill = false
mobile = false
local downeddel= false
local walkingmode = false
char  = plr.Character
if char:FindFirstChild("ClientInputHandler") then
	char:FindFirstChild("ClientInputHandler"):Destroy()
end
if plr:FindFirstChild("Status") then
	plr:FindFirstChild("Status"):Destroy()
end
if game.Workspace:FindFirstChild("Remote") then
if game.Workspace:FindFirstChild("Remote"):FindFirstChild("TeamEvent") then
Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end
end
local downed = false
local combatmusic = Instance.new("Sound",char)
combatmusic.Volume = 0
combatmusic.PlaybackSpeed = 1
combatmusic.Looped = true



local ambience = Instance.new("Sound",char)
ambience.Volume = 0.5
ambience.PlaybackSpeed = 1
ambience.Looped = true

local winder = Instance.new("Sound",char)
winder.SoundId = "rbxassetid://337604103"
winder.Volume = 0
winder.PlaybackSpeed = 1
winder.Looped = true
winder:Play()
local windercloth = Instance.new("Sound",char)
windercloth.SoundId = "rbxassetid://195879271"
windercloth.Volume = 0
windercloth.PlaybackSpeed = 1
windercloth.Looped = true
windercloth:Play()
local explorationmusic = Instance.new("Sound",char)
explorationmusic.Volume = 0
explorationmusic.PlaybackSpeed = 1
explorationmusic.Looped = true

local rannum = math.random(1,11)
if rannum == 1 then
   combatmusic.SoundId = "rbxassetid://4842424057"
explorationmusic.SoundId = "rbxassetid://6092889291"
ambience.SoundId = "rbxassetid://4842514147" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 2 then
   combatmusic.SoundId = "rbxassetid://5167357719"
explorationmusic.SoundId = "rbxassetid://5136807172"
ambience.SoundId = "rbxassetid://5136807172" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 3 then
   combatmusic.SoundId = "rbxassetid://5355007603"
explorationmusic.SoundId = "rbxassetid://5192956194"
ambience.SoundId = "rbxassetid://5192956194" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 4 then
   combatmusic.SoundId = "rbxassetid://1591306349"
explorationmusic.SoundId = "rbxassetid://5246801658"
ambience.SoundId = "rbxassetid://5167384455" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 5 then
   combatmusic.SoundId = "rbxassetid://5356631522"
explorationmusic.SoundId = "rbxassetid://4502246491"
ambience.SoundId = "rbxassetid://4502246491" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 6 then
   combatmusic.SoundId = "rbxassetid://5183689299"
explorationmusic.SoundId = "rbxassetid://538850338"
ambience.SoundId = "rbxassetid://538850338" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 7 then
   combatmusic.SoundId = "rbxassetid://5258344366"
explorationmusic.SoundId = "rbxassetid://5079119831"
ambience.SoundId = "rbxassetid://5079119831" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 8 then
   combatmusic.SoundId = "rbxassetid://5995057631"
explorationmusic.SoundId = "rbxassetid://477207390"
ambience.SoundId = "rbxassetid://477207390" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 9 then
   combatmusic.SoundId = "rbxassetid://4841933336"
explorationmusic.SoundId = "rbxassetid://5114418235"
ambience.SoundId = "rbxassetid://5114418235" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 10 then
   combatmusic.SoundId = "rbxassetid://5132571388"
explorationmusic.SoundId = "rbxassetid://5995060646"
ambience.SoundId = "rbxassetid://5995060646" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 11 then
   combatmusic.SoundId = "rbxassetid://5433879104"
explorationmusic.SoundId = "rbxassetid://4692224051"
ambience.SoundId = "rbxassetid://4692224051" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end

local tricksinarow = 0
local tricktime = 0
local timestanding = 0
local combattime = 0



root = char:WaitForChild("HumanoidRootPart")

local slidingsound = Instance.new("Sound",root)
slidingsound.SoundId = "rbxassetid://4086205029"
slidingsound.PlaybackSpeed = 1.25
slidingsound.Looped = true
slidingsound.Volume = 0.75

local wallrunningsound = Instance.new("Sound",root)
wallrunningsound.SoundId = "rbxassetid://401049343"
wallrunningsound.PlaybackSpeed = 1
wallrunningsound.Looped = true
wallrunningsound.Volume = 0.75


function randomclothrollsound(truth)
	coroutine.resume(coroutine.create(function()
	    if truth ~= nil then
	         local s = Instance.new("Sound",root)
	    s.Volume = 0.8 +math.random(1,6)*0.05
	     s.PlaybackSpeed = 0.8 +math.random(1,6)*0.05
	    
	     local rannum = math.random(1,5)
	     if rannum == 1 then 
	         s.SoundId = "rbxassetid://4086203738"
	         elseif rannum == 2 then
	         s.SoundId = "rbxassetid://4086203442"
	         elseif rannum == 3 then
	             s.SoundId = "rbxassetid://4086203142"
	         elseif rannum == 4 then
                 s.SoundId = "rbxassetid://4086203973"
                 else
	         s.SoundId = "rbxassetid://4307029050"
	         end
	    
	    
	    s:Play()
	     game:GetService("Debris"):AddItem(s,4)
	        else
	         local s = Instance.new("Sound",root)
	    s.Volume = 0.25 +math.random(1,6)*0.05
	     s.PlaybackSpeed = 0.8 +math.random(1,6)*0.05
	    
	     local rannum = math.random(1,7)
	     if rannum == 1 then 
	         s.SoundId = "rbxassetid://3929467229"
	         elseif rannum == 2 then
	         s.SoundId = "rbxassetid://3929467449"
	         elseif rannum == 3 then
	             s.SoundId = "rbxassetid://3929467655"
	         elseif rannum == 4 then
                 s.SoundId = "rbxassetid://3929467888"
                 	         elseif rannum == 5 then
                 s.SoundId = "rbxassetid://4458760046"
                 	         elseif rannum == 6 then
                 s.SoundId = "rbxassetid://4458760518"
                 else
	         s.SoundId = "rbxassetid://4458759938"
	         end
	    
	    
	    s:Play()
	     game:GetService("Debris"):AddItem(s,4)
	        end
	   
	end))
    
    end


local rollingsound = Instance.new("Sound",root)
rollingsound.SoundId = "rbxassetid://2985734522"
rollingsound.PlaybackSpeed = 1
rollingsound.Volume = 0.75

local bodymovesound = Instance.new("Sound",root)
bodymovesound.SoundId = "rbxassetid://152206206"
bodymovesound.PlaybackSpeed = 0.945
bodymovesound.Volume = 2.35


local downedsound = Instance.new("Sound",root)
downedsound.SoundId = "rbxassetid://178088040"
downedsound.PlaybackSpeed = 1
downedsound.Volume = 3



local jumplandsoundthingy = Instance.new("Sound",root)
jumplandsoundthingy.SoundId = "rbxassetid://6079431954"
jumplandsoundthingy.PlaybackSpeed = 0.785
jumplandsoundthingy.Volume = 2

hum = char:WaitForChild("Humanoid")
hum.JumpPower = 50
	local colorparkourkill = Instance.new("ColorCorrectionEffect",game.Lighting)
	colorparkourkill.Saturation = 0
	colorparkourkill.TintColor = Color3.new(1,1,1)
if game.Lighting:FindFirstChild("COLORPARKOURKILL") then
	game.Lighting:FindFirstChild("COLORPARKOURKILL"):Destroy()


end
torso = char:WaitForChild("Torso")
local gyro = Instance.new("BodyGyro",torso)
gyro.D = 200
gyro.P = 1800
local cameratilterman = 0
local springjumpdel  =false
local gobackroll = false
local befpower = gyro.P
gyro.P = befpower
gyro.MaxTorque = Vector3.new(0,0,0)
local runvel = Instance.new("BodyVelocity",root)
runvel.MaxForce = Vector3.new(0,0,0)
runvel.P = 9999999999999999999999
hum.WalkSpeed =20

local flowmax = 35
local flowmin = 16
local dodgedel = false
local crouchspeed = 8
local flow = flowmin
for i,v in pairs(workspace:GetDescendants()) do
	if v.ClassName == "Part" or v.ClassName == "UnionOperation" or v.ClassName == "MeshPart" then
		if v.ClassName == "UnionOperation" then
			v.CollisionFidelity = Enum.CollisionFidelity.PreciseConvexDecomposition
		end
		if v.Transparency == 1 then
			v.CanCollide = false
		end

	end

end
floorpositiony = 0
local UIS = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")

if UIS.TouchEnabled and not UIS.KeyboardEnabled and not UIS.MouseEnabled
	and not UIS.GamepadEnabled and not GuiService:IsTenFootInterface() then

	mobile = true
	jb = plr.PlayerGui:WaitForChild("TouchGui"):WaitForChild("TouchControlFrame"):WaitForChild("JumpButton")
	jb.MouseButton1Down:Connect(function()
		wallrunabletrue()
		wallruncheck()
	end)
end
local leftwallrunanim = Instance.new("Animation",char)
leftwallrunanim.AnimationId = "rbxassetid://180426354"
local leftwallrunanimplay = hum:LoadAnimation(leftwallrunanim)


local downedanim1 = Instance.new("Animation",char)
downedanim1.AnimationId = "rbxassetid://282574440"
local downedanim1play = hum:LoadAnimation(downedanim1)




local rightwallrunanim = Instance.new("Animation",char)
rightwallrunanim.AnimationId = "rbxassetid://180426354"
local rightwallrunanimplay = hum:LoadAnimation(rightwallrunanim)


local verticalwallrunanim = Instance.new("Animation",char)
verticalwallrunanim.AnimationId = "rbxassetid://180426354"
local verticalwallrunanimplay = hum:LoadAnimation(verticalwallrunanim)

local roll = Instance.new("Animation",char)
roll.AnimationId = "rbxassetid://180612465"
local rollplay = hum:LoadAnimation(roll)


local crouching = Instance.new("Animation",char)
crouching.AnimationId = "rbxassetid://287325678"
local crouchingplay = hum:LoadAnimation(crouching)

local springjump = Instance.new("Animation",char)
springjump.AnimationId = "rbxassetid://287325678"
local springjumpplay = hum:LoadAnimation(springjump)


local dodging = Instance.new("Animation",char)
dodging.AnimationId = "rbxassetid://287325678"
local dodgingplay = hum:LoadAnimation(dodging)

local slidinganim = Instance.new("Animation",char)
slidinganim.AnimationId = "rbxassetid://132546884"
local slidingplay = hum:LoadAnimation(slidinganim)
local rollering = false


hum.Died:Connect(function()
if game.Workspace:FindFirstChild("Remote") then
if game.Workspace:FindFirstChild("Remote"):FindFirstChild("TeamEvent") then
Workspace.Remote.TeamEvent:FireServer("Bright orange") 

end
end
	camerakill = true
	colorparkourkill:Destroy()
	for i = 20,1,-1 do
wait()
combatmusic.PlaybackSpeed = combatmusic.PlaybackSpeed-0.05
ambience.PlaybackSpeed = ambience.PlaybackSpeed-0.05
explorationmusic.PlaybackSpeed = explorationmusic.PlaybackSpeed-0.05
end

end)

local tappeda = false
local tappeds = false
local tappedd = false
local tappedw = false
UIS.InputEnded:Connect(function(input,gamestuff)
	if input.KeyCode == Enum.KeyCode.S then
		if gamestuff then return end

		gobackroll  = false
	end
end)


UIS.InputBegan:Connect(function(input,gamestuff)
        	if input.KeyCode == Enum.KeyCode.N then
		if gamestuff then return end

if walkingmode == false then
walkingmode = true
else
walkingmode = false
end
	end
        	if input.KeyCode == Enum.KeyCode.M then
		if gamestuff then return end
		if ambience.PlaybackSpeed ~= 0 then
		    ambience.PlaybackSpeed  = 0
		     combatmusic.PlaybackSpeed  = 0
		      explorationmusic.PlaybackSpeed  = 0
		      else
		      		    ambience.PlaybackSpeed  = 1
		     combatmusic.PlaybackSpeed  = 1
		      explorationmusic.PlaybackSpeed  = 1
		    end
		
		end
    

	if input.KeyCode == Enum.KeyCode.S then
		if gamestuff then return end

		gobackroll  = true
	end
		if downed == true then return end
	if sliding == true then return end
	if input.KeyCode == Enum.KeyCode.A then
		if hitfloor == false then return end
		if gamestuff then return end
		if tappeda == false then
			tappeda = true
			wait(0.25)
			tappeda = false
		else
			if dodgedel == false then
				dodgedel = true
				dodgingplay:Play()
				randomclothrollsound()
				local bv = Instance.new("BodyVelocity",char:WaitForChild("Head"))
				bv.Velocity = root.CFrame.RightVector*-flow*2+Vector3.new(0,flow/2,0)
				bv.MaxForce = Vector3.new(99999,99999,99999)
				bv.P = 99999999999999
				wait(0.1)
				bv:Destroy()
				wait(0.2)
				dodgingplay:Stop()
				dodgedel = false
			end

		end

	end
	if input.KeyCode == Enum.KeyCode.S then
		if hitfloor == false then return end
		if gamestuff then return end
		if tappeds == false then
			tappeds = true
			wait(0.25)
			tappeds = false
		else
			if dodgedel == false then
				dodgedel = true
				dodgingplay:Play()
					randomclothrollsound()
				local bv = Instance.new("BodyVelocity",char:WaitForChild("Head"))
				bv.Velocity = root.CFrame.LookVector*-flow*2+Vector3.new(0,flow/2,0)
				bv.MaxForce = Vector3.new(99999,99999,99999)
				bv.P = 99999999999999
				wait(0.1)
				bv:Destroy()
				wait(0.2)
				dodgingplay:Stop()
				dodgedel = false
			end

		end

	end
	if input.KeyCode == Enum.KeyCode.D then
		if hitfloor == false then return end
		if gamestuff then return end
		if tappedd == false then
			tappedd = true
			wait(0.25)
			tappedd = false
		else
			if dodgedel == false then
				dodgedel = true
				dodgingplay:Play()
					randomclothrollsound()
				local bv = Instance.new("BodyVelocity",char:WaitForChild("Head"))
				bv.Velocity = root.CFrame.RightVector*flow*2+Vector3.new(0,flow/2,0)
				bv.MaxForce = Vector3.new(99999,99999,99999)
				bv.P = 99999999999999
				wait(0.1)
				bv:Destroy()
				wait(0.2)
				dodgingplay:Stop()
				dodgedel = false
			end

		end

	end
	if input.KeyCode == Enum.KeyCode.W then
		if gamestuff then return end
		if hitfloor == false then return end
		if tappedw == false then
			tappedw = true
			wait(0.25)
			tappedw = false
		else
			if dodgedel == false then
				dodgedel = true
				dodgingplay:Play()
					randomclothrollsound()
				local bv = Instance.new("BodyVelocity",char:WaitForChild("Head"))
				bv.Velocity = root.CFrame.LookVector*flow*2+Vector3.new(0,flow/2,0)
				bv.MaxForce = Vector3.new(99999,99999,99999)
				bv.P = 99999999999999
				wait(0.1)
				bv:Destroy()
				wait(0.2)
				dodgingplay:Stop()
				dodgedel = false
			end

		end

	end
end)

hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)

--rollplay:AdjustSpeed(0)
--rollplay.TimePosition = 1

local player = game.Players.LocalPlayer
local character = player.Character
local hum = character:FindFirstChild("Humanoid")
if not character or not character.Parent then
	character = player.CharacterAdded:wait()
	  if camerakill == true then return end
end
local torso = character:WaitForChild("Torso")
local rightShoulder = torso:WaitForChild("Right Shoulder")
local leftShoulder = torso:WaitForChild("Left Shoulder")
local camera = game.Workspace.CurrentCamera

updateSpeed = 0.5/2


local plr = game.Players.LocalPlayer
local char = plr.Character
	local ignorelist = {plr.Character}
	for i,v in pairs(workspace:GetDescendants()) do
	    if v.ClassName == "Part" or v.ClassName == "MeshPart" or v.ClassName == "UnionOperation" then
	        if v.CanCollide == false or v.Transparency == 1 then 
	            
	            ignorelist[#ignorelist+1] = v
	            end
	        end
	    end
leftarm = char:WaitForChild("Left Arm")
rightarm = char:WaitForChild("Right Arm")
leftleg = char:WaitForChild("Left Leg")
if char:FindFirstChild("Head"):FindFirstChild("BillboardGui") then
	char:FindFirstChild("Head"):FindFirstChild("BillboardGui"):Destroy()
end
local flowermax = flowmax-flowmin
local killermancamfov = 0
rightleg = char:WaitForChild("Right Leg")
local hum = char:WaitForChild("Humanoid")

local rootpart,head = char:WaitForChild("HumanoidRootPart"),char:WaitForChild("Head")

game:GetService("RunService"):BindToRenderStep("CameraOffset",Enum.RenderPriority.Character.Value+1,function()
	local offsetman = 1.5	
	if sliding == true then
		offsetman = 0


	end
	if hum.Health == 0 then script:Destroy() end
	local distance = (character.Head.Position - camera.CoordinateFrame.p).magnitude
	if distance <= 1 then
		rightShoulder.C0 = rightShoulder.C0:lerp((camera.CoordinateFrame * CFrame.new(1, -1, 0)):toObjectSpace(torso.CFrame):inverse() * CFrame.Angles(0, math.pi/2, 0), updateSpeed)
		leftShoulder.C0 = leftShoulder.C0:lerp((camera.CoordinateFrame * CFrame.new(-1, -1, 0)):toObjectSpace(torso.CFrame):inverse() * CFrame.Angles(0, -math.pi/2, 0), updateSpeed)
	else
		rightShoulder.C0 = rightShoulder.C0:lerp(CFrame.new(1, 0.5, 0) * CFrame.Angles(0, math.pi/2, 0),updateSpeed)
		leftShoulder.C0 = leftShoulder.C0:lerp(CFrame.new(-1, 0.5, 0) * CFrame.Angles(0, -math.pi/2, 0),updateSpeed)
	end
	hum.CameraOffset = (rootpart.CFrame+Vector3.new(0,offsetman,0)):pointToObjectSpace(head.CFrame.p)
	rightarm.LocalTransparencyModifier = rightarm.Transparency+0.5
	leftarm.LocalTransparencyModifier = leftarm.Transparency+0.5
	leftleg.LocalTransparencyModifier = leftleg.Transparency+0.5
	rightleg.LocalTransparencyModifier = rightleg.Transparency+0.5
	if camerakill == false then
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
		killermancamfov = 20*(flow/flowermax)
		colorparkourkill.TintColor = Color3.new(1,colormansup/255,colormansup/255)
		colormansup = colormansup+5
		if colormansup> 255 then
			colormansup = 255
		end
		cam.FieldOfView = 50+killermancamfov
		cam.CFrame = cam.CFrame*CFrame.Angles(0,0,math.rad(cameratilterman))

	end
end)
local befh = hum.Health




local function round(number, decimalPlaces)
	number = math.round(number * 10^decimalPlaces) * 10^-decimalPlaces
end
local humdowner = false

function downer()
    
     flow = flow-flowmax/10
					        downedanim1play:Play()
					        colormansup = colormansup-60
					        downedsound:play()
					        	randomclothrollsound(true)
					        		randomclothrollsound(true)
					        			randomclothrollsound()
					        			randomclothrollsound()
					        			randomclothrollsound()
downed = true
hum.JumpPower =0
downeddel = true
coroutine.resume(coroutine.create(function()
						
					
					local tiltnumb = 0
					local rannum = math.random(1,4)
					
					if rannum == 1 then
						tiltnumb = 80
						elseif rannum == 2 then
						tiltnumb = 50
					elseif rannum == 3 then
						tiltnumb = -80
						else
						tiltnumb = -50
					end
	
					local cameratilterman2 =tiltnumb*0.2
					



					local cameratiltermax = cameratilterman2
					
					local sinnerman = 1
					local sinnerman2 = 0
					for i = 20,1,-1 do
						game:GetService("RunService").RenderStepped:Wait()
						  if camerakill == true then return end
						sinnerman = sinnerman-0.05
						sinnerman2 = math.sin(sinnerman*1.25)
						print(sinnerman .. " I AM SIN")
						cameratilterman2 = cameratiltermax*sinnerman2
						
						cam.CFrame = cam.CFrame*CFrame.Angles(0,0,math.rad(cameratilterman2))
					end
	wait(1)
				downeddel = false

end))
    end

hum.HealthChanged:Connect(function()
	colorparkourkill.Saturation = -1+hum.Health/hum.MaxHealth
	if hum.Health/hum.MaxHealth < 0.25 then
	    
	    if humdowner == false then
	        humdowner = true
	         downer()
	        end
	    end
	
	
	if hum.Health < befh then
	    combattime = 18
		local damagetiltmax = befh - hum.Health
		round(damagetiltmax,1)
		colormansup = colormansup-damagetiltmax*4.25
		local cameratilterman2 = math.random(damagetiltmax*-20,damagetiltmax*20)
		cameratilterman2 =     cameratilterman2 *0.05

		local cameratilterman3 = math.random(damagetiltmax*-20,damagetiltmax*20)
		cameratilterman3 =     cameratilterman3 *0.0008675


		local cameratiltermax = cameratilterman2
		local cameratiltermax2 = cameratilterman3
		local sinnerman = 1
		local sinnerman2 = 0
		for i = 10,1,-1 do
			game:GetService("RunService").RenderStepped:Wait()
			  
			sinnerman = sinnerman-0.1
			sinnerman2 = math.sin(sinnerman*1.25)
			print(sinnerman .. " I AM SIN")
			cameratilterman2 = cameratiltermax*sinnerman2
			cameratilterman3 = cameratiltermax2*sinnerman2
			cam.CFrame = cam.CFrame*CFrame.Angles(math.rad(cameratilterman3),0,math.rad(cameratilterman2))
		end


	end

	befh = hum.Health        

end)

function tilterepic(maxnumbman,slideringman)
	coroutine.resume(coroutine.create(function()

		if maxnumbman ~= 0 then
			local sinnerman = 0
			local slidingtruth = false
			if slideringman ~= nil then
				if slideringman == true then
					slidingtruth = true
				end
			end
			for i = 20,1,-1 do
				if slidingtruth == false then
					if wallrunning == false then return end      
				end

				if slidingtruth == true then
					if sliding == false then return end
				end

				game:GetService("RunService").RenderStepped:Wait()
				  if camerakill == true then return end
				sinnerman = sinnerman+0.05
				sinnerman = math.sin(sinnerman*1.25)
				print(sinnerman .. " I AM SIN2")
				cameratilterman = maxnumbman*sinnerman
			end
		else
			print("I AM ZERO BOYO")
			local cameratiltermax = cameratilterman

			local sinnerman = 1
			local sinnerman2 = 0
			for i = 10,1,-1 do
				game:GetService("RunService").RenderStepped:Wait()
				  if camerakill == true then return end
				sinnerman = sinnerman-0.1
				sinnerman2 = math.sin(sinnerman*1.25)
				print(sinnerman .. " I AM SIN")
				cameratilterman = cameratiltermax*sinnerman2
			end
			wait()
			cameratilterman = 0
		end
	end))
end


local rolldel =false
function roll()
    
	if sliding == true then return end
	if hitfloor == false then return end
	if wallrunning == true then return end
	if rolldel == true then return end
	rolldel = true
	randomclothrollsound(true)
	rollingsound.TimePosition = 0.3
	rollingsound:Play()
	root.Velocity = Vector3.new(0,0,0)
	local x, y, z = root.CFrame:ToEulerAnglesYXZ()
	rollering = true
tricksinarow = tricksinarow+1
	local rollmancf = CFrame.new(Vector3.new(root.Position.X,floorpositiony+1.5,root.Position.Z))*CFrame.Angles(0, y, 0)

	root.CFrame = rollmancf

	wait()
	root.Velocity = Vector3.new(0,0,0)


	flow  = flow+(flowmax-flowmin)/8
	runvel.Velocity = (root.CFrame.LookVector*hum.WalkSpeed)
	local bp = Instance.new("BodyPosition",torso)
	bp.Position = Vector3.new(0,floorpositiony,0)
	bp.MaxForce = Vector3.new(0,999999999,0)
	bp.P = 25000
	hum.PlatformStand = true
	runvel.MaxForce = Vector3.new(99999,99999,99999)
	gyro.CFrame = rollmancf
	gyro.P = 99999
	gyro.MaxTorque = Vector3.new(99999,99999,99999)
	rollplay:Play()
	local lookcfog = cam.CFrame
	local angle = 0
	rollplay:AdjustSpeed(0)
	rollplay.TimePosition = 1
local rotatenumb = -18
if gobackroll == true then
rotatenumb = 18
end

	for i = 20,1,-1 do
		rs.Heartbeat:Wait()
		  if camerakill == true then return end
runvel.MaxForce = Vector3.new(99999,99999,99999)
runvel.Velocity = rollmancf.LookVector*-rotatenumb*3
		gyro.CFrame =	gyro.CFrame*CFrame.Angles(math.rad(rotatenumb),0,0)
		root.CFrame = gyro.CFrame
	end
runvel.MaxForce = Vector3.new(0,0,0)
	rollplay:Stop()
	hum.PlatformStand = false
	rollering = false
	bp:Destroy()
	gyro.P = befpower
	runvel.MaxForce = Vector3.new(0,0,0)
	gyro.MaxTorque = Vector3.new(0,0,0)
	root.Velocity = Vector3.new(0,0,0)
	root.Velocity = Vector3.new(0,0,0)
	rolldel = false
if rotatenumb  == 18 then
cam.CFrame = lookcfog 
end
	wait()

end


local cdown = false

UIS.InputBegan:Connect(function(input,g)

	if input.KeyCode == Enum.KeyCode.C then
		if g then return end
		cdown = true

	end
	if input.KeyCode == Enum.KeyCode.P then
	    if g then return end
		hum:TakeDamage(1)
	end
end)

UIS.InputEnded:Connect(function(input,g)
	if input.KeyCode == Enum.KeyCode.C then
		if g then return end
		cdown = false
	end
end)

wallrunable = false

wallrunning = false
hitfloor = false
leftwallrunning = false
rightwallrunning = false
onfloor = false
frontwallrunning = false
fronthit = false
rs = game:GetService("RunService")
cam = workspace.CurrentCamera


UIS.InputBegan:Connect(function(input,gamestuff)
	if input.KeyCode == Enum.KeyCode.X then
		if camerakill == true then return end
		if gamestuff then return end
		if camerakill == false then
			for i = 5,1,-1 do
				rs.RenderStepped:Wait()
				  if camerakill == true then return end
				cam.CFrame = cam.CFrame*CFrame.Angles(0,math.rad(35),0)
			end
		end
	end
end)
local rollering = false
coroutine.resume(coroutine.create(function()

	while true do
	      if camerakill == true then return end
		rs.RenderStepped:Wait()

if combattime > 0.05 then
if combatmusic.Volume ~= 0.5 then 
    combatmusic.Volume = 0.5
    ambience.Volume = 0
    explorationmusic.Volume = 0
    combatmusic:Play()
end
combattime = combattime-0.01
else
    combattime = 0
    if combatmusic.Volume == 0.5 then 
    combatmusic.Volume = 0
    ambience.Volume = 0.5
  
    explorationmusic.Volume = 0
end
    end
		if rolldel == true or downed == true  then
if camerakill == true then return end
			cam.CFrame = char:WaitForChild("Head").CFrame

		end
	if camerakill == false then
	    winder.Volume = root.Velocity.Magnitude*0.015
	    if winder.Volume > 5 then
	        winder.Volume = 5
	        end
	    winder.PlaybackSpeed = root.Velocity.Magnitude*0.015
	      if winder.PlaybackSpeed > 4 then
	        winder.PlaybackSpeed = 4
	      end
	    windercloth.Volume = root.Velocity.Magnitude*0.015
	    if windercloth.Volume > 5 then
	        windercloth.Volume = 5
	        end
	    windercloth.PlaybackSpeed = root.Velocity.Magnitude*0.015
	      if windercloth.PlaybackSpeed > 2 then
	        windercloth.PlaybackSpeed = 2
	        end
	    end


		if rolldel == false and wallrunning == false and sliding == false and  downed == false and holding == false then
			hum.AutoRotate = true
			if slidingsound.IsPlaying == true then 
			    slidingsound:Stop()
			end
		    if wallrunningsound.IsPlaying == true then
		        wallrunningsound:Stop()
		        end
		else
			hum.AutoRotate = false
			if wallrunning == true then
			     if wallrunningsound.IsPlaying == false then
		        wallrunningsound:Play()
		        end
			    else
			     if wallrunningsound.IsPlaying == true then
		        wallrunningsound:Stop()
		        end
			    end
			
			
			if sliding == true then
			    		if slidingsound.IsPlaying == false then 
			    slidingsound:Play()
			    		end
		    else
		        			if slidingsound.IsPlaying == true then 
			    slidingsound:Stop()
			    end
			    end
		end

	end

end))
function wallrunabletrue()
	coroutine.resume(coroutine.create(function()
		if hitfloor == true then return end
		wallrunable = true
		wait(0.05)
		wallrunable = false
	end))
end


wallrundel = false
function verticalwallrun(grav2)
	coroutine.resume(coroutine.create(function()
		if wallrundel == true then return end
		if wallrunning == true then return end
		if downed == true then return end
		if cdown == true then return end
		if wallrunable == false then return end

		if fronthit then

			print("Made it 1")
			local rr = Ray.new(root.Position,root.CFrame.LookVector*5)
			local rhit,ray,rpoint = workspace:FindPartOnRayWithIgnoreList(rr,ignorelist)
			if rhit then
				if rhit then
					wallrunning = false
					wait()
					tilterepic(0)
					tricksinarow = tricksinarow+1
					wallrunning = true
					gyro.CFrame = CFrame.new(root.Position,root.Position+rpoint)*CFrame.Angles(math.rad(-22),math.rad(180),0)
					gyro.MaxTorque = Vector3.new(99999,99999,99999)


					local grav = grav2-11
					runvel.Velocity = Vector3.new(0,grav,0)
					print("Made it 2")
					runvel.MaxForce = Vector3.new(99999,99999,99999)
					wallrunable = false
					hum.PlatformStand = true
						randomclothrollsound()
					verticalwallrunanimplay:Play()
					while wallrunning == true do
						rs.RenderStepped:Wait()
						  if camerakill == true then return end

						grav = grav-0.8
						local r2 = Ray.new(root.Position,root.CFrame.LookVector*5)
						local hit,ray,point = workspace:FindPartOnRayWithIgnoreList(r2,ignorelist)
						if hit then
							print("Made it 3")
							if hitfloor then wallrunning = false end
							if cdown == true then wallrunning = false end
							if hit then
								gyro.CFrame = CFrame.new((ray+root.CFrame.LookVector*-2),(ray+root.CFrame.LookVector*-2)+point)*CFrame.Angles(math.rad(-22),math.rad(180),0)
								runvel.Velocity = Vector3.new(0,grav,0)
								gyro.P = befpower
								if wallrunable == true then

									wallrunning = false
									gyro.MaxTorque = Vector3.new(0,0,0)
									hum.PlatformStand = false
									print("Jump")
									randomclothrollsound()
										jumplandsoundthingy:Play()
			local rannum = math.random(1,3)
if rannum == 1 then
jumplandsoundthingy.SoundId = "rbxassetid://6079433272"
elseif rannum == 2 then
jumplandsoundthingy.SoundId = "rbxassetid://6079432684"
else
jumplandsoundthingy.SoundId = "rbxassetid://6079431954"
end
							bodymovesound:Play()
									hum.PlatformStand = false
									runvel.velocity = root.CFrame.LookVector*-hum.WalkSpeed+Vector3.new(0,30,0)
									wait(0.22)
								end

							else

								wallrunning = false

							end
						else

							wallrunning = false


						end
					end
					hum.PlatformStand = false
					verticalwallrunanimplay:Stop()
					gyro.MaxTorque = Vector3.new(0,0,0)
					print("Wall run ended")

					runvel.MaxForce = Vector3.new(0,0,0)
					hum:ChangeState(Enum.HumanoidStateType.Jumping)
					return
				end




			end

		end
	end))
end



function wallruncheck()
    	if downed == true then 
    	    if rolldel == false and downeddel == false then
    	        downedanim1play:Stop()
    	          downed = false
    	          hum.JumpPower = 50
    	        roll()
    	      return
    	        end
    	    
    	     end
	if sliding == true then return end
	if cdown == true then
		if hitfloor == true then
			roll()
		end
	end
	if wallrundel == true then return end
	if wallrunning == true then return end
	if wallrunable == false then return end
	if cdown == true then return end
	if dodgedel == true then return end
	wallrunable = false
	local rr = Ray.new(root.Position,root.CFrame.RightVector*3.5)
	local rhit,ray,rpoint = workspace:FindPartOnRayWithIgnoreList(rr,ignorelist)
	if rhit then
		if rhit then

			wallrunning = true
			gyro.CFrame = CFrame.new(root.Position,root.Position+rpoint)*CFrame.Angles(0,math.rad(-90),math.rad(20))
			gyro.MaxTorque = Vector3.new(99999,99999,99999)
			hum.PlatformStand = true

			local grav = 20
			runvel.Velocity = gyro.CFrame.LookVector*30+Vector3.new(0,grav,0)
			runvel.Velocity = runvel.Velocity + gyro.CFrame.RightVector*5
			runvel.MaxForce = Vector3.new(99999,99999,99999)
			rightwallrunanimplay:Play()
				randomclothrollsound()
			tricksinarow = tricksinarow+1
			tilterepic(35)
			while wallrunning == true do
			    if camerakill == true then return end
				rs.RenderStepped:Wait()
 
				grav = grav-0.95
				local r2 = Ray.new(root.Position,root.CFrame.RightVector*5)
				local hit,ray,point = workspace:FindPartOnRayWithIgnoreList(r2,ignorelist)
				if hit then

					if hitfloor then wallrunning = false end
					if cdown == true then wallrunning = false end
					if fronthit == true then print("Face died") tilterepic(0) wallrunning = false  rightwallrunanimplay:Stop()	gyro.MaxTorque = Vector3.new(0,0,0)
						print("Wall run end")

						runvel.MaxForce = Vector3.new(0,0,0)wallrunable = true verticalwallrun(grav+hum.WalkSpeed)  return end
					if hit then
						gyro.CFrame = CFrame.new((ray+root.CFrame.RightVector*-2),(ray+root.CFrame.RightVector*-2)+point)*CFrame.Angles(0,math.rad(-90),math.rad(20))
						runvel.Velocity = gyro.CFrame.LookVector*hum.WalkSpeed+Vector3.new(0,grav,0)
						gyro.P = befpower
						if wallrunable == true then
							tilterepic(0)
							wallrunning = false
							rightwallrunanimplay:Stop()
							gyro.MaxTorque = Vector3.new(0,0,0)
							hum.PlatformStand = false
										jumplandsoundthingy:Play()
											randomclothrollsound()
			local rannum = math.random(1,3)
if rannum == 1 then
jumplandsoundthingy.SoundId = "rbxassetid://6079433272"
elseif rannum == 2 then
jumplandsoundthingy.SoundId = "rbxassetid://6079432684"
else
jumplandsoundthingy.SoundId = "rbxassetid://6079431954"
end
							bodymovesound:Play()
							runvel.velocity = cam.CFrame.LookVector*hum.WalkSpeed+Vector3.new(0,30,0)
							wait(0.22)
						end

					else

						wallrunning = false

					end
				else

					wallrunning = false


				end
			end
			tilterepic(0)
			hum.PlatformStand = false
			rightwallrunanimplay:Stop()
			gyro.MaxTorque = Vector3.new(0,0,0)
			print("Wall run end")
			runvel.MaxForce = Vector3.new(0,0,0)
			return
		end




	end

	local rl = Ray.new(root.Position,root.CFrame.RightVector*-3.5)
	local lhit,ray,rpoint = workspace:FindPartOnRayWithIgnoreList(rl,ignorelist)
	if lhit then
		if lhit then

			wallrunning = true

			gyro.CFrame = CFrame.new(root.Position,root.Position+rpoint)*CFrame.Angles(0,math.rad(90),math.rad(-20))
			gyro.MaxTorque = Vector3.new(99999,99999,99999)
			gyro.P = 250
			local grav = 20
			runvel.Velocity = (gyro.CFrame.LookVector*30+Vector3.new(0,grav,0))
			runvel.Velocity = runvel.Velocity + gyro.CFrame.RightVector*-5
			hum.PlatformStand = true


			leftwallrunanimplay:Play()
				randomclothrollsound()
			tilterepic(-35)
			tricksinarow = tricksinarow+1
			runvel.MaxForce = Vector3.new(99999,99999,99999)
			
			while wallrunning == true do
  if camerakill == true then return end
				rs.RenderStepped:Wait()

				if hitfloor then wallrunning = false end
				if fronthit == true then print("Face died") 	tilterepic(0) wallrunning = false leftwallrunanimplay:Stop() 	gyro.MaxTorque = Vector3.new(0,0,0)
					print("Wall run end")
					runvel.MaxForce = Vector3.new(0,0,0) wallrunable= true verticalwallrun(grav+hum.WalkSpeed) return end
				rs.RenderStepped:Wait()
				  if camerakill == true then return end
				grav = grav-0.95
				local r2 = Ray.new(root.Position,root.CFrame.RightVector*-5)
				local hit,ray,point = workspace:FindPartOnRayWithIgnoreList(r2,ignorelist)
				if hit then

					if cdown == true then wallrunning = false end
					if hit then
						gyro.CFrame = CFrame.new((ray+root.CFrame.RightVector*2),(ray+root.CFrame.RightVector*2)+point)*CFrame.Angles(0,math.rad(90),math.rad(-20))
						runvel.Velocity = gyro.CFrame.LookVector*hum.WalkSpeed+Vector3.new(0,grav,0)
						gyro.P = befpower

						if wallrunable == true then

							wallrunning = false
							tilterepic(0)
							leftwallrunanimplay:Stop()
							gyro.MaxTorque = Vector3.new(0,0,0)
							hum.PlatformStand = false
										jumplandsoundthingy:Play()
											randomclothrollsound()
			local rannum = math.random(1,3)
if rannum == 1 then
jumplandsoundthingy.SoundId = "rbxassetid://6079433272"
elseif rannum == 2 then
jumplandsoundthingy.SoundId = "rbxassetid://6079432684"
else
jumplandsoundthingy.SoundId = "rbxassetid://6079431954"
end
							bodymovesound:Play()
							runvel.velocity = cam.CFrame.LookVector*hum.WalkSpeed+Vector3.new(0,30,0)
							wait(0.22)
						end

					else

						wallrunning = false

					end
				else

					wallrunning = false


				end
			end
			hum.PlatformStand = false
			leftwallrunanimplay:Stop()
			tilterepic(0)
			gyro.MaxTorque = Vector3.new(0,0,0)
			print("Wall run end")
			runvel.MaxForce = Vector3.new(0,0,0)
			return
		end




	end
	wallrunable = true
	verticalwallrun(hum.WalkSpeed+20)

end






local spacedown = false
local backjumpdel = false
local backhit = false
UIS.InputBegan:Connect(function(inpt,gamestuff)
	if inpt.KeyCode == Enum.KeyCode.Space then
		if gamestuff then return end
				if wallrunning == false then
		    
		    if sliding == false then
		        if backhit == true then
		            if hitfloor == false then
		            	jumplandsoundthingy:Play()
		            randomclothrollsound(false)
		            root.Velocity = root.CFrame.LookVector*120+Vector3.new(0,40,0)
		            end
		            end
		        end
		    
		    end
		wallrunabletrue()
		wallruncheck()
		if sliding == true then

			spacedown = true
			wait(0.1)
			spacedown = false
		end

		wait(0.1)
		if wallrunning == false then
			if rolldel == false then

				if backjumpdel == false then
				    

				end

			end

		end
	end



end)




function slide()
	coroutine.resume(coroutine.create(function()
	    	if downed == true then return end
		if sliding == true then return end
		sliding = true
		randomclothrollsound()
		tilterepic(-15,true)
		hum.PlatformStand = true
		gyro.MaxTorque = Vector3.new(99999,99999,99999)
		gyro.P = befpower*3

		runvel.MaxForce = Vector3.new(99999,99999,99999)
		local ogcf = root.CFrame
		local befrooty = root.Position.Y
		local ogcf = root.CFrame
		gyro.CFrame = ogcf*CFrame.Angles(math.rad(80),0,0)
		print("BEGINSLIDE")
		tricksinarow = tricksinarow+1
		while sliding == true do 
			rs.RenderStepped:Wait()
			  if camerakill == true then return end
			runvel.Velocity = (ogcf.LookVector*flow*1.45)+Vector3.new(0,-70,0)

			slidingplay:Play()
			slidingplay:AdjustSpeed(0)
			if root.Position.Y+0.05 < befrooty then
				flow = flow+flowmax/70
			end

			befrooty = root.Position.Y



			if root.Velocity.Magnitude < 20 then
				sliding = false
				slidingplay:Stop()
				tilterepic(0,true)
				cdown = false
				break
			end

			if cdown == false then
				sliding = false
				slidingplay:Stop()
				tilterepic(0,true)
				break
			else

			end

			flow = flow-flowmax/100



			if spacedown == true then
				sliding = false
				cdown = false
				slidingplay:Stop()
				tilterepic(0,true)
				break
		
			end


			if flow < flowmin+5 then
				sliding = false
				flow = flowmin
				slidingplay:Stop()
				tilterepic(0,true)
				break
			end

		end


		gyro.MaxTorque = Vector3.new(0,0,0)
		gyro.P = befpower

		runvel.MaxForce = Vector3.new(0,0,0)
		hum.PlatformStand = false
		if spacedown == true  and flow < flowmax then
			hum.PlatformStand = true
			sliding = false
			tilterepic(0,true)
			slidingplay:Stop()
			local x, y, z = cam.CFrame:ToEulerAnglesYXZ()
			rollering = true

			root.CFrame = CFrame.new(root.Position)*CFrame.Angles(0, y, 0)
			bodymovesound:Play()
			
			roll()
			return
				
				elseif spacedown == true and flowmax+3 < flow then
			hum.PlatformStand = false
			sliding = false
			tilterepic(0,true)
			slidingplay:Stop()
			runvel.MaxForce = Vector3.new(99999,99999,99999)
			bodymovesound:Play()
			jumplandsoundthingy:Play()
				randomclothrollsound()
			local rannum = math.random(1,3)
if rannum == 1 then
jumplandsoundthingy.SoundId = "rbxassetid://6079433272"
elseif rannum == 2 then
jumplandsoundthingy.SoundId = "rbxassetid://6079432684"
else
jumplandsoundthingy.SoundId = "rbxassetid://6079431954"
end
			runvel.velocity = cam.CFrame.LookVector*flow*2+Vector3.new(0,flow,0)
			coroutine.resume(coroutine.create(function()


				local tiltnumb = 0
				local rannum = math.random(1,4)

				if rannum == 1 then
					tiltnumb = 40
				elseif rannum == 2 then
					tiltnumb = 20
				elseif rannum == 3 then
					tiltnumb = -40
				else
					tiltnumb = -20
				end

				local cameratilterman2 =tiltnumb*0.2




				local cameratiltermax = cameratilterman2

				local sinnerman = 1
				local sinnerman2 = 0
				for i = 10,1,-1 do
					game:GetService("RunService").RenderStepped:Wait()
					  if camerakill == true then return end
					sinnerman = sinnerman-0.1
					sinnerman2 = math.sin(sinnerman*1.25)
					print(sinnerman .. " I AM SIN")
					cameratilterman2 = cameratiltermax*sinnerman2

					cam.CFrame = cam.CFrame*CFrame.Angles(0,0,math.rad(cameratilterman2))
				end


			end))
			wait(0.25)
			runvel.MaxForce = Vector3.new(0,0,0)
			return
				
				else
			hum.PlatformStand = false
			sliding = false
		
			return
		end

	end))
	
end

local sliding = false
local rppos = Vector3.new(0,0,0)
local landed = false
local pressspacebeforeland = false
local landdel = false
local beforelandy = 0
function landdeler()
	coroutine.resume(coroutine.create(function()
		landdel = true
		wait(0.2)
		landdel = false
		pressspacebeforeland = false
		beforelandy = root.Position.Y
	end))
end

UIS.InputBegan:Connect(function(input,gamestuff)
	if springjumpdel == true then return end
	if input.KeyCode == Enum.KeyCode.Space then
		if gamestuff == true then return end
		if hitfloor == true then
			if pressspacebeforeland == false then
				pressspacebeforeland = true
				else
				if root.Position.Y > beforelandy+2 then
					runvel.MaxForce = Vector3.new(99999,99999,99999)
					runvel.Velocity = cam.CFrame.LookVector*flow*2+Vector3.new(0,flow/2,0)
					springjumpdel = true
														randomclothrollsound()
										jumplandsoundthingy:Play()
			local rannum = math.random(1,3)
if rannum == 1 then
jumplandsoundthingy.SoundId = "rbxassetid://6079433272"
elseif rannum == 2 then
jumplandsoundthingy.SoundId = "rbxassetid://6079432684"
else
jumplandsoundthingy.SoundId = "rbxassetid://6079431954"
end
							bodymovesound:Play()
					pressspacebeforeland = false
					springjumpplay:Play()
					tricksinarow = tricksinarow+1
					coroutine.resume(coroutine.create(function()
						
					
					local tiltnumb = 0
					local rannum = math.random(1,4)
					
					if rannum == 1 then
						tiltnumb = 40
						elseif rannum == 2 then
						tiltnumb = 20
					elseif rannum == 3 then
						tiltnumb = -40
						else
						tiltnumb = -20
					end
	
					local cameratilterman2 =tiltnumb*0.2
					



					local cameratiltermax = cameratilterman2
					
					local sinnerman = 1
					local sinnerman2 = 0
					for i = 10,1,-1 do
						game:GetService("RunService").RenderStepped:Wait()
						  if camerakill == true then return end
						sinnerman = sinnerman-0.1
						sinnerman2 = math.sin(sinnerman*1.25)
						print(sinnerman .. " I AM SIN")
						cameratilterman2 = cameratiltermax*sinnerman2
						
						cam.CFrame = cam.CFrame*CFrame.Angles(0,0,math.rad(cameratilterman2))
					end


					end))

			      
					
					wait(0.2)
					springjumpplay:Stop()
					runvel.MaxForce = Vector3.new(0,0,0)
					wait(0.2)
					springjumpdel = false
				end
			end
		
			
		end
	end
end)


local plr = game.Players.LocalPlayer
local Character = plr.Character or plr.CharacterAdded:Wait()
local Root = Character:WaitForChild("HumanoidRootPart")
local Head = Character:WaitForChild("Head")
local Hum = Character:WaitForChild("Humanoid")
local holdingon = Instance.new("Animation",hum)
holdingon.AnimationId = "rbxassetid://148831003"
local climbingstuffs = Instance.new("Animation",hum)
climbingstuffs.AnimationId = "rbxassetid://125750702"
local CA = Hum:LoadAnimation(climbingstuffs)
local HA = Hum:LoadAnimation(holdingon)
local TouchGui = plr:WaitForChild("PlayerGui"):FindFirstChild("TouchGui")
local UIS = game:GetService("UserInputService")

ledgeavailable = true
holding = false




	function climb()
		local Vele = Instance.new("BodyVelocity",Head)
		Root.Anchored = false
		Vele.MaxForce = Vector3.new(1,1,1) * math.huge
		Vele.Velocity = Root.CFrame.LookVector * 10 + Vector3.new(0,30,0)
		HA:Stop() CA:Play()
		game.Debris:AddItem(Vele,.15)
		holding = false
		wait(.0)
		ledgeavailable = true
	end
	
	UIS.InputBegan:Connect(function(Key,Chat)
		if not holding then return end 
		if Key.KeyCode == Enum.KeyCode.Space and not Chat then
			climb()
		end
	end)
	
	if TouchGui then
		TouchGui:WaitForChild("TouchControlFrame"):WaitForChild("JumpButton").MouseButton1Click:Connect(function()
			if not holding then return end climb()
		end)
	end




while true do
	repeat rs.RenderStepped:Wait() until sliding == false
	rs.RenderStepped:Wait()
	local r = Ray.new(root.Position,root.CFrame.LookVector*-6)
	local hit,ray = workspace:FindPartOnRayWithIgnoreList(r,ignorelist)
		if hit then
		backhit = true
	
	else
		backhit = false
	end
	
	  if camerakill == true then return end
	if hum.FloorMaterial == Enum.Material.Air then
		if landed == true then
			landed = false
		end
		else
		if landed == false then
			landed = true
			
			landdeler()
		end
		
	end
	local killx,killy,killz = root.CFrame:ToEulerAnglesYXZ()
	local nobadcf = CFrame.new(root.Position)*CFrame.Angles(0,killy,0)
	local rclimber = Ray.new(Head.CFrame.p, nobadcf.LookVector * 6)
	
	local killclimberray =  Ray.new(Head.CFrame.p+Vector3.new(0,0.5,0), nobadcf.LookVector * 9)
	
	local killmansraypart,killmansposition workspace:FindPartOnRayWithIgnoreList(killclimberray,ignorelist)
	
	local part,position = workspace:FindPartOnRayWithIgnoreList(rclimber,ignorelist)
	if not killmansraypart then
	    
	    
	if part and ledgeavailable and not holding and not killmansraypart  then
		if part.Size.Y >= 4 and part.CanCollide == true and killmansraypart == nil and  part.Transparency ~= 1  then
			if Head.Position.Y >= (part.Position.Y + (part.Size.Y / 2)) - 1 and Head.Position.Y <= part.Position.Y + (part.Size.Y / 2) and Hum.FloorMaterial == Enum.Material.Air and sliding == false and downed == false and wallrunning == true then
			if HA.IsPlaying == false then
			    wallrunning = false
			    root.CFrame = nobadcf
			    randomclothrollsound(false)
			    HA:Play() 
			    wallrunning = false
			    HA:AdjustSpeed(0)
			    HA.TimePosition = 1.3
			end
		    
				Root.Anchored = true holding = true ledgeavailable = false
			end
		end
	end
	end
	local r = Ray.new(root.Position,Vector3.new(0,1,0).Unit*-5.5)
	local hit,ray = workspace:FindPartOnRayWithIgnoreList(r,ignorelist)
	if hit then
		floorpositiony = ray.Y
		if	hitfloor == false then
			hitfloor = true
			if root.Velocity.Y < -60 then
				if cdown == true then
					root.Velocity = Vector3.new(root.Velocity.X,-10,root.Velocity.Z)
					cdown = false

					roll()
					else
					    if root.Velocity.Y < -90  then
					       downer()
			
					        end

				end
			end
		end

	else
		if	hitfloor == true then
			hitfloor = false
		end
	end
	local r = Ray.new(root.Position,root.CFrame.LookVector*1.8)
	local hit,ray,rp = workspace:FindPartOnRayWithIgnoreList(r,ignorelist)
	if hit then
		fronthit = true
		rppos = rp
	else
		fronthit = false
	end
	if hitfloor == true then

		if cdown == true then
			if flow < flowmin+5 then

				if flow ~= crouchspeed then
					flow = crouchspeed
				end
				if crouchingplay.IsPlaying == false then
					crouchingplay:Play()
					randomclothrollsound()
				end
			else
				if landed == true then
					slide()	
				end
				
			end
		end

	end
	if cdown == false then
		if crouchingplay.IsPlaying == true then
			crouchingplay:Stop()
		end
		if walkingmode == false  and hum.MoveDirection ~= Vector3.new(0,0,0)  or wallrunning == true then
			flow = flow+flowmax/70
		
			
			if tricksinarow > 8 then
			    			if combatmusic.Volume ~= 0.5 then
			    combatmusic.Volume = 0
			    ambience.Volume = 0
			    explorationmusic.Volume =0.5
			    end
			    end
			
			if timestanding ~= 0 then
			    timestanding = 0
			    end
			if flow > flowmax then
				flow = flowmax
			end
		else
			flow = flow-flowmax/23
			if combatmusic.Volume ~= 0.5 then
			    timestanding = timestanding+0.05
			end
		   
			if timestanding > 18 then
			    timestanding = 0
			    tricksinarow = 0
			   if combatmusic.Volume ~= 0.5 then
			       if ambience.Volume ~= 0.5 then
			           ambience.Volume = 0.5
			           explorationmusic.Volume = 0
			           combatmusic.Volume = 0
			           
			           end
			       
			       end
			    end
			if flow < flowmin then
				flow = flowmin
			end
		end



	end
	if downed == false then
	    	hum.WalkSpeed = flow
	    	else
	    	    hum.WalkSpeed = 1
	    end

end

  	end    

})

Tab:AddButton({

	Name = "shiftlock",

	Callback = function()

    -- Gui to Lua
-- Version: 3.2

-- Instances:

local ShiftlockStarterGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")

--Properties:

ShiftlockStarterGui.Name = "Shiftlock (StarterGui)"
ShiftlockStarterGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ShiftlockStarterGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ShiftlockStarterGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.921914339, 0, 0.552375436, 0)
ImageButton.Size = UDim2.new(0.0636147112, 0, 0.0661305636, 0)
ImageButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
ImageButton.Image = "http://www.roblox.com/asset/?id=182223762"

-- Scripts:

local function TLQOYN_fake_script() -- ImageButton.ShiftGUI 
	local script = Instance.new('LocalScript', ImageButton)

	local MobileCameraFramework = {}
	local players = game:GetService("Players")
	local runservice = game:GetService("RunService")
	local CAS = game:GetService("ContextActionService")
	local player = players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local root = character:WaitForChild("HumanoidRootPart")
	local humanoid = character.Humanoid
	local camera = workspace.CurrentCamera
	local button = script.Parent
	
	--Visiblity
	uis = game:GetService("UserInputService")
	ismobile = uis.TouchEnabled
	button.Visible = ismobile
	
	local states = {
		OFF = "rbxasset://textures/ui/mouseLock_off@2x.png",
		ON = "rbxasset://textures/ui/mouseLock_on@2x.png"
	}
	local MAX_LENGTH = 900000
	local active = false
	local ENABLED_OFFSET = CFrame.new(1.7, 0, 0)
	local DISABLED_OFFSET = CFrame.new(-1.7, 0, 0)
	local function UpdateImage(STATE)
		button.Image = states[STATE]
	end
	local function UpdateAutoRotate(BOOL)
		humanoid.AutoRotate = BOOL
	end
	local function GetUpdatedCameraCFrame(ROOT, CAMERA)
		return CFrame.new(root.Position, Vector3.new(CAMERA.CFrame.LookVector.X * MAX_LENGTH, root.Position.Y, CAMERA.CFrame.LookVector.Z * MAX_LENGTH))
	end
	local function EnableShiftlock()
		UpdateAutoRotate(false)
		UpdateImage("ON")
		root.CFrame = GetUpdatedCameraCFrame(root, camera)
		camera.CFrame = camera.CFrame * ENABLED_OFFSET
	end
	local function DisableShiftlock()
		UpdateAutoRotate(true)
		UpdateImage("OFF")
		camera.CFrame = camera.CFrame * DISABLED_OFFSET
		pcall(function()
			active:Disconnect()
			active = nil
		end)
	end
	UpdateImage("OFF")
	active = false
	function ShiftLock()
		if not active then
			active = runservice.RenderStepped:Connect(function()
				EnableShiftlock()
			end)
		else
			DisableShiftlock()
		end
	end
	local ShiftLockButton = CAS:BindAction("ShiftLOCK", ShiftLock, false, "On")
	CAS:SetPosition("ShiftLOCK", UDim2.new(0.8, 0, 0.8, 0))
	button.MouseButton1Click:Connect(function()
		if not active then
			active = runservice.RenderStepped:Connect(function()
				EnableShiftlock()
			end)
		else
			DisableShiftlock()
		end
	end)
	return MobileCameraFramework
	
end
coroutine.wrap(TLQOYN_fake_script)()
local function OMQRQRC_fake_script() -- ShiftlockStarterGui.LocalScript 
	local script = Instance.new('LocalScript', ShiftlockStarterGui)

	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	local Settings = UserSettings()
	local GameSettings = Settings.GameSettings
	local ShiftLockController = {}
	while not Players.LocalPlayer do
		wait()
	end
	local LocalPlayer = Players.LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
	local ScreenGui, ShiftLockIcon, InputCn
	local IsShiftLockMode = true
	local IsShiftLocked = true
	local IsActionBound = false
	local IsInFirstPerson = false
	ShiftLockController.OnShiftLockToggled = Instance.new("BindableEvent")
	local function isShiftLockMode()
		return LocalPlayer.DevEnableMouseLock and GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch and LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.ClickToMove and GameSettings.ComputerMovementMode ~= Enum.ComputerMovementMode.ClickToMove and LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.Scriptable
	end
	if not UserInputService.TouchEnabled then
		IsShiftLockMode = isShiftLockMode()
	end
	local function onShiftLockToggled()
		IsShiftLocked = not IsShiftLocked
		ShiftLockController.OnShiftLockToggled:Fire()
	end
	local initialize = function()
		print("enabled")
	end
	function ShiftLockController:IsShiftLocked()
		return IsShiftLockMode and IsShiftLocked
	end
	function ShiftLockController:SetIsInFirstPerson(isInFirstPerson)
		IsInFirstPerson = isInFirstPerson
	end
	local function mouseLockSwitchFunc(actionName, inputState, inputObject)
		if IsShiftLockMode then
			onShiftLockToggled()
		end
	end
	local function disableShiftLock()
		if ScreenGui then
			ScreenGui.Parent = nil
		end
		IsShiftLockMode = false
		Mouse.Icon = ""
		if InputCn then
			InputCn:disconnect()
			InputCn = nil
		end
		IsActionBound = false
		ShiftLockController.OnShiftLockToggled:Fire()
	end
	local onShiftInputBegan = function(inputObject, isProcessed)
		if isProcessed then
			return
		end
		if inputObject.UserInputType ~= Enum.UserInputType.Keyboard or inputObject.KeyCode == Enum.KeyCode.LeftShift or inputObject.KeyCode == Enum.KeyCode.RightShift then
		end
	end
	local function enableShiftLock()
		IsShiftLockMode = isShiftLockMode()
		if IsShiftLockMode then
			if ScreenGui then
				ScreenGui.Parent = PlayerGui
			end
			if IsShiftLocked then
				ShiftLockController.OnShiftLockToggled:Fire()
			end
			if not IsActionBound then
				InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
				IsActionBound = true
			end
		end
	end
	GameSettings.Changed:connect(function(property)
		if property == "ControlMode" then
			if GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch then
				enableShiftLock()
			else
				disableShiftLock()
			end
		elseif property == "ComputerMovementMode" then
			if GameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove then
				disableShiftLock()
			else
				enableShiftLock()
			end
		end
	end)
	LocalPlayer.Changed:connect(function(property)
		if property == "DevEnableMouseLock" then
			if LocalPlayer.DevEnableMouseLock then
				enableShiftLock()
			else
				disableShiftLock()
			end
		elseif property == "DevComputerMovementMode" then
			if LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.ClickToMove or LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.Scriptable then
				disableShiftLock()
			else
				enableShiftLock()
			end
		end
	end)
	LocalPlayer.CharacterAdded:connect(function(character)
		if not UserInputService.TouchEnabled then
			initialize()
		end
	end)
	if not UserInputService.TouchEnabled then
		initialize()
		if isShiftLockMode() then
			InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
			IsActionBound = true
		end
	end
	enableShiftLock()
	return ShiftLockController
	
end
coroutine.wrap(OMQRQRC_fake_script)()

  	end    

})

local MusicTab = Window:MakeTab({

    Name = "音乐🎶",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})
MusicTab:AddButton({

	Name = "音乐ID自定义UI",

	Callback = function()

local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Background Frame
local background = Instance.new("Frame")
background.Size = UDim2.new(0, 200, 0, 100)
background.BackgroundColor3 = Color3.new(0, 0, 1)
background.BorderColor3 = Color3.new(1, 1, 1)
background.BackgroundTransparency = 0.5
background.Position = UDim2.new(0.5, -100, 0.5, -50)
background.Active = true
background.Draggable = true
background.Parent = gui

-- Song ID Input Box
local idBox = Instance.new("TextBox")
idBox.Size = UDim2.new(0.5, 0, 0.2, 0)
idBox.Position = UDim2.new(0.25, 0, 0.2, 0)
idBox.Text = "Enter Song ID"
idBox.Parent = background

-- Play Button
local playButton = Instance.new("TextButton")
playButton.Size = UDim2.new(0.4, 0, 0.2, 0)
playButton.Position = UDim2.new(0.05, 0, 0.5, 0)
playButton.Text = "Play"
playButton.Parent = background

-- Stop Button
local stopButton = Instance.new("TextButton")
stopButton.Size = UDim2.new(0.4, 0, 0.2, 0)
stopButton.Position = UDim2.new(0.55, 0, 0.5, 0)
stopButton.Text = "Stop"
stopButton.Parent = background

-- Audio Instance
local audio = Instance.new("Sound")
audio.Parent = game.Workspace

-- Side Notification
local notification = Instance.new("TextLabel")
notification.Size = UDim2.new(0, 200, 0, 20)
notification.Position = UDim2.new(1, 0, 0.5, -10)
notification.BackgroundColor3 = Color3.new(1, 1, 1)
notification.BackgroundTransparency = 0.5
notification.TextColor3 = Color3.new(0, 0, 0)
notification.Text = "Credits to SUPERSONIC GAMERZ"
notification.Parent = gui

-- Play Button Functionality
playButton.MouseButton1Click:Connect(function()
    local id = tonumber(idBox.Text)
    if id then
        audio.SoundId = "rbxassetid://"..id
        audio:Play()
    end
end)

-- Stop Button Functionality
stopButton.MouseButton1Click:Connect(function()
    audio:Stop()
end)

    end
})
MusicTab:AddButton({

	Name = "color",

	Callback = function()

local audioPlayer : AudioPlayer = Instance.new("AudioPlayer")
audioPlayer.Parent = workspace
audioPlayer.AssetId = "rbxassetid://7023828725"

local deviceOutput = Instance.new("AudioDeviceOutput")
deviceOutput.Parent = workspace

local wire = Instance.new("Wire")
wire.Parent = workspace

wire.SourceInstance = audioPlayer
wire.TargetInstance = deviceOutput

audioPlayer:Play()

    end
})
MusicTab:AddButton({

	Name = "happy song",

	Callback = function()

local audioPlayer : AudioPlayer = Instance.new("AudioPlayer")
audioPlayer.Parent = workspace
audioPlayer.AssetId = "rbxassetid://1843404009"

local deviceOutput = Instance.new("AudioDeviceOutput")
deviceOutput.Parent = workspace

local wire = Instance.new("Wire")
wire.Parent = workspace

wire.SourceInstance = audioPlayer
wire.TargetInstance = deviceOutput

audioPlayer:Play()

    end
})

MusicTab:AddButton({

	Name = "World-Hang up",

	Callback = function()

local audioPlayer : AudioPlayer = Instance.new("AudioPlayer")
audioPlayer.Parent = workspace
audioPlayer.AssetId = "rbxassetid://5410084188"

local deviceOutput = Instance.new("AudioDeviceOutput")
deviceOutput.Parent = workspace

local wire = Instance.new("Wire")
wire.Parent = workspace

wire.SourceInstance = audioPlayer
wire.TargetInstance = deviceOutput

audioPlayer:Play()

    end
})

MusicTab:AddButton({

	Name = "雨中牛郎",

	Callback = function()

local audioPlayer : AudioPlayer = Instance.new("AudioPlayer")
audioPlayer.Parent = workspace
audioPlayer.AssetId = "rbxassetid://16831108393"

local deviceOutput = Instance.new("AudioDeviceOutput")
deviceOutput.Parent = workspace

local wire = Instance.new("Wire")
wire.Parent = workspace

wire.SourceInstance = audioPlayer
wire.TargetInstance = deviceOutput

audioPlayer:Play()

end
})

local Tab = Window:MakeTab({

    Name = "僵尸生存加里",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "就只有这一个",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/MadbukScripts/Scripts/main/Obfuscated%20Zombie%20Survival%20Garry%20Mod.lua"))()

  	end    

})

local Tab = Window:MakeTab({

    Name = "Doors",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "MSHUB(无汉化更稳定)",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/mspaint/main/main.lua"))()

  	end

})

Tab:AddButton({

	Name = "blackking",

	Callback = function()

    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()

  	end    

})

Tab:AddButton({

	Name = "doors2,卡密nrty（还行）",

	Callback = function()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/ZS%20III", true))()

  	end    

})

Tab:AddButton({

	Name = "doors2,NB制作（超好用）",

	Callback = function()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/ZS%20III", true))()

  	end    

})

Tab:AddButton({

	Name = "自动rooms",

	Callback = function()

if game.PlaceId ~= 6839171747 or game.ReplicatedStorage.GameData.Floor.Value ~= "Rooms" then
	game.StarterGui:SetCore("SendNotification", { Title = "Invalid Place"; Text = "The game detected appears to not be rooms. Please execute this while in rooms!" })
	
	local Sound = Instance.new("Sound")
	Sound.Parent = game.SoundService
	Sound.SoundId = "rbxassetid://550209561"
	Sound.Volume = 5
	Sound.PlayOnRemove = true
	Sound:Destroy()
	
	return
elseif workspace:FindFirstChild("PathFindPartsFolder") then
	game.StarterGui:SetCore("SendNotification", { Title = "Warning"; Text = "If you are having issues and the bot is broken, please contact me! geodude#2619" })
	
	local Sound = Instance.new("Sound")
	Sound.Parent = game.SoundService
	Sound.SoundId = "rbxassetid://550209561"
	Sound.Volume = 5
	Sound.PlayOnRemove = true
	Sound:Destroy()

	return
end

local PathfindingService = game:GetService("PathfindingService")
local VirtualInputManager = game:GetService('VirtualInputManager')
local LocalPlayer = game.Players.LocalPlayer
local LatestRoom = game.ReplicatedStorage.GameData.LatestRoom

local Cooldown = false

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = ScreenGui

TextLabel.Size = UDim2.new(0,350,0,100)
TextLabel.TextSize = 48
TextLabel.TextStrokeColor3 = Color3.new(1,1,1)
TextLabel.TextStrokeTransparency = 0
TextLabel.BackgroundTransparency = 1

local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
end

local Folder = Instance.new("Folder")
Folder.Parent = workspace
Folder.Name = "PathFindPartsFolder"

if LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules:FindFirstChild("A90") then
    LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.A90.Name = "lol" -- Fuck you A90
end

function getLocker()
    local Closest

    for i,v in pairs(workspace.CurrentRooms:GetDescendants()) do
        if v.Name == "Rooms_Locker" then
            if v:FindFirstChild("Door") and v:FindFirstChild("HiddenPlayer") then
                if v.HiddenPlayer.Value == nil then
                    if v.Door.Position.Y > -3 then -- Prevents going to the lower lockers in the room with the bridge 
                        if Closest == nil then
                            Closest = v.Door
                        else
                            if (LocalPlayer.Character.HumanoidRootPart.Position - v.Door.Position).Magnitude < (Closest.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
                                Closest = v.Door
                            end
                        end
                    end
                end
            end
        end
    end
    return Closest
end

function getPath()
    local Part
	
    local Entity = workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120")
    if Entity and Entity.Main.Position.Y > -4 then
        Part = getLocker()
    else
        Part = workspace.CurrentRooms[LatestRoom.Value].Door.Door
    end
    return Part
end

LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
    TextLabel.Text = "Room: "..math.clamp(LatestRoom.Value, 1,1000)

    if LatestRoom.Value ~= 1000 then
        LocalPlayer.DevComputerMovementMode = Enum.DevComputerMovementMode.Scriptable
    else
        LocalPlayer.DevComputerMovementMode = Enum.DevComputerMovementMode.KeyboardMouse
	
        Folder:ClearAllChildren()
    
        local Sound = Instance.new("Sound")
        Sound.Parent = game.SoundService
        Sound.SoundId = "rbxassetid://4590662766"
        Sound.Volume = 3
        Sound.PlayOnRemove = true
        Sound:Destroy()
        
        game.StarterGui:SetCore("SendNotification", { Title = "youtube.com/geoduude"; Text = "Thank you for using my script!" })
        return
    end
end)

game:GetService("RunService").RenderStepped:connect(function()
    LocalPlayer.Character.HumanoidRootPart.CanCollide = false
    LocalPlayer.Character.Collision.CanCollide = false
    LocalPlayer.Character.Collision.Size = Vector3.new(8,LocalPlayer.Character.Collision.Size.Y,8)

    LocalPlayer.Character.Humanoid.WalkSpeed = 21

    local Path = getPath()
    
    local Entity = workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120")
    if Entity then
        if Path then
            if Path.Parent.Name == "Rooms_Locker" then
                if Entity.Main.Position.Y > -4 then
                    if (LocalPlayer.Character.HumanoidRootPart.Position - Path.Position).Magnitude < 2 then
                        if LocalPlayer.Character.HumanoidRootPart.Anchored == false then
                            fireproximityprompt(Path.Parent.HidePrompt)
                        end
                    end
                end
            end
        end
        if Entity.Main.Position.Y < -4 then
            if LocalPlayer.Character.HumanoidRootPart.Anchored == true then
                LocalPlayer.Character:SetAttribute("Hiding", false)
            end
        end
    else
        if LocalPlayer.Character.HumanoidRootPart.Anchored == true then
            LocalPlayer.Character:SetAttribute("Hiding", false)
        end
    end
end)

while true do

    local Destination = getPath()

    local path = PathfindingService:CreatePath({ WaypointSpacing = 1, AgentRadius = 0.1, AgentCanJump = false })
    path:ComputeAsync(LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,2,0), Destination.Position)
    local Waypoints = path:GetWaypoints()

    if path.Status ~= Enum.PathStatus.NoPath then

        Folder:ClearAllChildren()

        for _, Waypoint in pairs(Waypoints) do
            local part = Instance.new("Part")
            part.Size = Vector3.new(1,1,1)
            part.Position = Waypoint.Position
            part.Shape = "Cylinder"
            part.Rotation = Vector3.new(0,0,90)
            part.Material = "SmoothPlastic"
            part.Anchored = true
            part.CanCollide = false
            part.Parent = Folder
        end

        for _, Waypoint in pairs(Waypoints) do
            if LocalPlayer.Character.HumanoidRootPart.Anchored == false then
                LocalPlayer.Character.Humanoid:MoveTo(Waypoint.Position)
                LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
            end
        end
    end
end

    end
})

local Tab = Window:MakeTab({

    Name = "破坏者谜团2",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "这个针不戳！！",

	Callback = function()

     loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
  	end

})

Tab:AddButton({

	Name = "阿龙修改",

	Callback = function()

loadstring(game:HttpGet('https://pastebin.com/raw/24BWMQBC'))()

    end
})

local Tab = Window:MakeTab({

    Name = "evade",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "还行",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
  	end

})

Tab:AddButton({

	Name = "这个超级nb",

	Callback = function()

loadstring(game:HttpGet('https://raw.githubusercontent.com/Unknownproooolucky/Unknown-Hub-X-Universal-Games/main/Games/Evade'))()

    end
})

local Tab = Window:MakeTab({

    Name = "彩虹朋友",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "没试过，感觉可以",

	Callback = function()

     local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Rainbow Friends", "BloodTheme")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("ESP")
Section:NewButton("Monsters", ".", function()
    -- Settings --

local settings = {

	fillcolor = Color3.fromRGB(0, 255, 255),
	filltransparency = 0.75,

	outlinecolor = Color3.fromRGB(0, 255, 255),
	outlinetransparency = 0,
}

-- Script --

local plr = game.Players.LocalPlayer
local highlights = Instance.new("Folder", game:service("CoreGui"))

local function addhighlight(object)
	local highlight = Instance.new("Highlight", highlights)
	highlight.Adornee = object

	highlight.FillColor = settings.fillcolor
	highlight.FillTransparency = settings.filltransparency

	highlight.OutlineColor = settings.outlinecolor
	highlight.OutlineTransparency = settings.outlinetransparency

	highlight.Adornee.Changed:Connect(function()
		if not highlight.Adornee or not highlight.Adornee.Parent then
			highlight:Destroy()
		end
	end)

	return highlight
end

local function addto(object)
	if object:IsA("Model") then
		addhighlight(object)
	end
end

for _, v in pairs(workspace.Monsters:GetDescendants()) do
	addto(v)
end

workspace.Monsters.DescendantAdded:Connect(function(v)
	addto(v)
end)

end)
Section:NewButton("Items", "ButtonInfo", function()
    local itemsOfInterest = Instance.new("Model", workspace)
itemsOfInterest.Name = "Items of Interest"

for i, v in pairs (workspace:GetChildren()) do
if v.Name == "Battery" or (v.Name:find("^Block") and v:IsA("Model")) or (v.Name:find("^Food") and v:IsA("Model")) or (v.Name:find("^Fuse") and v:IsA("Model")) then
v.Parent = itemsOfInterest
end
end

local highlight = Instance.new("Highlight")
highlight.Parent = itemsOfInterest
highlight.Adornee = itemsOfInterest
highlight.FillColor = Color3.new(0, 255, 0)
highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
highlight.FillTransparency = 0.75
end)
Section:NewButton("Player", ".", function()
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
_G.EnemyColor = Color3.fromRGB(255, 0, 0)
_G.UseTeamColor = true

--------------------------------------------------------------------
local Holder = Instance.new("Folder", game.CoreGui)
Holder.Name = "ESP"

local Box = Instance.new("BoxHandleAdornment")
Box.Name = "nilBox"
Box.Size = Vector3.new(1, 2, 1)
Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Box.Transparency = 0.7
Box.ZIndex = 0
Box.AlwaysOnTop = false
Box.Visible = false

local NameTag = Instance.new("BillboardGui")
NameTag.Name = "nilNameTag"
NameTag.Enabled = false
NameTag.Size = UDim2.new(0, 200, 0, 50)
NameTag.AlwaysOnTop = true
NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
local Tag = Instance.new("TextLabel", NameTag)
Tag.Name = "Tag"
Tag.BackgroundTransparency = 1
Tag.Position = UDim2.new(0, -50, 0, 0)
Tag.Size = UDim2.new(0, 300, 0, 20)
Tag.TextSize = 15
Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
Tag.TextStrokeTransparency = 0.4
Tag.Text = "nil"
Tag.Font = Enum.Font.SourceSansBold
Tag.TextScaled = false

local LoadCharacter = function(v)
	repeat wait() until v.Character ~= nil
	v.Character:WaitForChild("Humanoid")
	local vHolder = Holder:FindFirstChild(v.Name)
	vHolder:ClearAllChildren()
	local b = Box:Clone()
	b.Name = v.Name .. "Box"
	b.Adornee = v.Character
	b.Parent = vHolder
	local t = NameTag:Clone()
	t.Name = v.Name .. "NameTag"
	t.Enabled = true
	t.Parent = vHolder
	t.Adornee = v.Character:WaitForChild("Head", 5)
	if not t.Adornee then
		return UnloadCharacter(v)
	end
	t.Tag.Text = v.Name
	b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
	t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
	local Update
	local UpdateNameTag = function()
		if not pcall(function()
			v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
			local maxh = math.floor(v.Character.Humanoid.MaxHealth)
			local h = math.floor(v.Character.Humanoid.Health)
		end) then
			Update:Disconnect()
		end
	end
	UpdateNameTag()
	Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
end

local UnloadCharacter = function(v)
	local vHolder = Holder:FindFirstChild(v.Name)
	if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
		vHolder:ClearAllChildren()
	end
end

local LoadPlayer = function(v)
	local vHolder = Instance.new("Folder", Holder)
	vHolder.Name = v.Name
	v.CharacterAdded:Connect(function()
		pcall(LoadCharacter, v)
	end)
	v.CharacterRemoving:Connect(function()
		pcall(UnloadCharacter, v)
	end)
	v.Changed:Connect(function(prop)
		if prop == "TeamColor" then
			UnloadCharacter(v)
			wait()
			LoadCharacter(v)
		end
	end)
	LoadCharacter(v)
end

local UnloadPlayer = function(v)
	UnloadCharacter(v)
	local vHolder = Holder:FindFirstChild(v.Name)
	if vHolder then
		vHolder:Destroy()
	end
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	spawn(function() pcall(LoadPlayer, v) end)
end

game:GetService("Players").PlayerAdded:Connect(function(v)
	pcall(LoadPlayer, v)
end)

game:GetService("Players").PlayerRemoving:Connect(function(v)
	pcall(UnloadPlayer, v)
end)

game:GetService("Players").LocalPlayer.NameDisplayDistance = 0

if _G.Reantheajfdfjdgs then
    return
end

_G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"

local players = game:GetService("Players")
local plr = players.LocalPlayer

function esp(target, color)
    if target.Character then
        if not target.Character:FindFirstChild("GetReal") then
            local highlight = Instance.new("Highlight")
            highlight.RobloxLocked = true
            highlight.Name = "GetReal"
            highlight.Adornee = target.Character
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = color
            highlight.Parent = target.Character
        else
            target.Character.GetReal.FillColor = color
        end
    end
end

while task.wait() do
    for i, v in pairs(players:GetPlayers()) do
        if v ~= plr then
            esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
        end
    end
end
end)
local Section = Tab:NewSection("Fullbright")
Section:NewButton("Click", ".", function()
    if not _G.FullBrightExecuted then

	_G.FullBrightEnabled = false

	_G.NormalLightingSettings = {
		Brightness = game:GetService("Lighting").Brightness,
		ClockTime = game:GetService("Lighting").ClockTime,
		FogEnd = game:GetService("Lighting").FogEnd,
		GlobalShadows = game:GetService("Lighting").GlobalShadows,
		Ambient = game:GetService("Lighting").Ambient
	}

	game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
		if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
			_G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Brightness = 1
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
		if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
			_G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").ClockTime = 12
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
		if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
			_G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").FogEnd = 786543
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
			_G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").GlobalShadows = false
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
		if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
			_G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		end
	end)

	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 786543
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

	local LatestValue = true
	spawn(function()
		repeat
			wait()
		until _G.FullBrightEnabled
		while wait() do
			if _G.FullBrightEnabled ~= LatestValue then
				if not _G.FullBrightEnabled then
					game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
					game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
					game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
					game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
					game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
				else
					game:GetService("Lighting").Brightness = 1
					game:GetService("Lighting").ClockTime = 12
					game:GetService("Lighting").FogEnd = 786543
					game:GetService("Lighting").GlobalShadows = false
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
				LatestValue = not LatestValue
			end
		end
	end)
end

_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled
end)
local Section = Tab:NewSection("Item")
Section:NewButton("Get Item", ".", function()
    for i,v in pairs(game.workspace.Map_C1.ItemSpawns:GetDescendants()) do
   if v.name == "ItemSpawn" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
   wait(0.1)
   end
end
end)
Section:NewButton("Send Item", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(371.54364013671875, 45.604129791259766, 132.65687561035156)
end)
local Tab = Window:NewTab("Credit")
local Section = Tab:NewSection("By Tora IsMe")
  	end

})

local Tab = Window:MakeTab({

    Name = "PETAPETA",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "真好！",

	Callback = function()

loadstring(game:HttpGet('https://pastebin.com/raw/4C18FTrU'))()

    end

})
local DONGGANTab = Window:MakeTab({

    Name = "动感星期五",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

DONGGANTab:AddButton({

	Name = "真好",

	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Nadir3709/RandomScript/main/FunkyFridayMobile"))()

    end
})

local Tab = Window:MakeTab({

    Name = "the mimic",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "需要秘钥（加速器不好可能闪退）",

	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Python/main/Main.lua"))()

    end
})

local Tab = Window:MakeTab({

    Name = "柱子追逐2",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "经典小绿",

	Callback = function()

loadstring(game:HttpGet('https://raw.githubusercontent.com/dqvh/dqvh/main/pillar%20chase%202.lua'))()

    end
})

Tab:AddButton({

	Name = "需要秘钥，得秘钥discord官方在下面",

	Callback = function()

local owner = "ritualrblx"
local repository = "ritual"
local server = "discord.gg/ritualrblx"

local link = string.format("https://raw.githubusercontent.com/%s/%s/%s/script", owner, repository, server)

loadstring(game:HttpGet(link))()

    end
})

Tab:AddButton({

	Name = "点击复制脚本官方DC",

	Callback = function()

setclipboard("https://discord.com/invite/ritualrblx")

    end
})

local Tab = Window:MakeTab({

    Name = "战斗战士",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "最好的",

	Callback = function()

loadstring(game:HttpGet("https://pastefy.app/50B4Z9UK/raw"))()

    end
})

local Tab = Window:MakeTab({

    Name = "rooms&Doors",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "情云（覆盖）",

	Callback = function()

loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,34,41,41,40,41})end)()))()

    end
})
local Tab = Window:MakeTab({

    Name = "后悔电梯",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "真好这个真不错",

	Callback = function()

loadstring(game:HttpGet('https://raw.githubusercontent.com/wasduiop/Regret-This-Hub/refs/heads/main/script.lua'))()

    end
})
Tab:AddButton({

	Name = "自动刷金币？",

	Callback = function()

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("Farm")
local b = w:CreateFolder("CoinsFarm")

b:Toggle("Farm All Coins",function(bool)
    shared.Farm = bool
    print(shared.Farm)
end)

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end


function findAnyTouchInsertInPart(part)
    for _, child in ipairs(part:GetChildren()) do
        if child:IsA("TouchInterest") then
            firetouchinterest(child, getRoot(game.Players.LocalPlayer.Character), 0)
            task.wait(.4)
            firetouchinterest(child, getRoot(game.Players.LocalPlayer.Character), 1)
        end
    end
end

function findAnyClickDetectorInPart(part)
    --if not part or not part:IsA("BasePart") then
    --    warn("Argument Invalid, Not Found")
    --    return
    --end

    for _, child in ipairs(part:GetChildren()) do
        if child:IsA("ClickDetector") then
            fireclickdetector(child, 0, "MouseClick") 
        end
    end
end

while true do
    wait(0.2)
    if shared.Farm == true then
        for i,v in pairs(workspace:GetDescendants()) do
            if not workspace:FindFirstChild("TNTRun") then
                if v.Name == "Coin" or v.Name == "Coins" and v:IsA("BasePart")then
                    v.CFrame = getRoot(game.Players.LocalPlayer.Character).CFrame
                end
                if v.Name == "ThingButton" and v:IsA("ProximityPrompt") then
                    fireproximityprompt(v)
                    --v.Parent.CFrame = getRoot(game.Players.LocalPlayer.Character).CFrame
                end
                if v.Name == "Rock" then
                    findAnyClickDetectorInPart(v)
                end
                if v.Name == "Clicker" then
                    findAnyClickDetectorInPart(v)
                end
                if v.Name == "Objects" then
                    findAnyClickDetectorInPart(v)
                end
                if v.Name == "SillyGreenBall" then
                    findAnyTouchInsertInPart(v)
                end
            end
        end
	end
end

    end
})

local Tab = Window:MakeTab({

    Name = "刀刃球",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

local Tab = Window:MakeTab({

    Name = "刀刃球",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "红圈",

	Callback = function()

getgenv().visualizer = true

loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/RedCircleBlock"))()

    end
})

Tab:AddButton({

	Name = "UI要秘钥",

	Callback = function()

getgenv().visualizer = true

loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()

    end
})
