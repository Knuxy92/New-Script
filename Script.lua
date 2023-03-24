pcall(function ()
	local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-libraries/main/drawing/void/source.lua"))()
	local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	local playerName = game.Players.LocalPlayer.Name
	setfpscap(120)
	Old_World = false
	New_World = false
	Three_World = false
	local placeId = game.PlaceId
	if placeId == 2753915549 then
		Old_World = true
	elseif placeId == 4442272183 then
		New_World = true
	elseif placeId == 7449423635 then
		Three_World = true
	end
	local mouse = game.Players.LocalPlayer:GetMouse()
	local guiservice = game.GetService(game, "GuiService")
	local players = game.GetService(game, "Players")
	local localPlayer = players.LocalPlayer
	local currentCamera = game.GetService(game, "Workspace").CurrentCamera
	local circle = Drawing.new("Circle")
	local Foder_SaveSpeedBoat = Instance.new("Folder")
	local Foder_WebHook = Instance.new("Folder")
	Foder_SaveSpeedBoat.Name = "SaveSpeedBoat"
	Foder_SaveSpeedBoat.Parent = game.Workspace

	Foder_WebHook.Name = "WebHook"
	Foder_WebHook.Parent = game.Workspace

	_G.AutoFarmOF          = false
	_G.AutoWorldTwo        = false
	_G.AutoThirdSea        = false
	_G.AutoFarmCandy       = false
	_G.AutoFarmBones       = false
	_G.AutoFarmFishTail    = false
	_G.AutoFarmDragonScale = false
	_G.WeaponSelect        = ""
	_G.UpStats             = ""
	_G.AutoStats_Melee     = false
	_G.AutoStats_Defense   = false
	_G.AutoStats_Sword     = false
	_G.AutoStats_Gun       = false
	_G.AutoStats_Fruit     = false
	_G.AutoStats           = false
	_G.StatsPoint          = 1
	_G.AutoStats_Epa       = false
	_G.FastAttack          = true
	_G.BypassTp            = false
	_G.FastTween           = false
	_G.AutoCakePrince      = false
	_G.AutoEliteHunter     = false
	_G.AutoYama            = false
	_G.AutoHoolow          = false
	_G.AutoSurprise        = false
	_G.FastAttackSpeed = false
	_G.Bringmob = true
	_G.Jobid = ""
	_G.BoatSped = 1
	_G.SelectDun = ""
	_G.Kill_Aura = false
	_G.AutoSniperFrit = ""
	_G.Fruits_Sniper = false
	_G.AutoEat_Fuit = false
	_G.Auto_Store_Fruits = false
	_G.Auto_Random_Fruit = false
	_G.Auto_Bring_Fruits = false
	_G.AutoRejoin = false

	task.spawn(function()
		while wait() do
			pcall(function()
				if HideDmg then
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
				else
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
				end
			end)
		end
	end)

	task.spawn(function()
		while task.wait() do

			for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
				if v.Name == "Dust" or v.Name == "eff" or v.Name == "CurvedRing" or v.Name == "SwordSlash" or v.Name == "Sounds" or v.Name == "SlashHit" then
					v:Destroy() 
				end
			end

		end
	end)

	task.spawn(function()
		while wait() do

			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if v.ClassName == "MeshPart" then
						v.Transparency = 0.5
					end
				end
				for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if v.Name == "Head" then
						v.Transparency = 0.5
					end
				end
				for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if v.ClassName == "Accessory" then
						v.Handle.Transparency = 0.5
					end
				end
				for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if v.ClassName == "Decal" then
						v.Transparency = 0.5
					end
				end
			end)
		end

	end)

	if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
		game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
	end
	if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
		game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
	end

	function click()
		game:GetService'VirtualUser':CaptureController()
		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
	end

	function AutoHaki()
		if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
		end
	end
	function Equip(ToolX)
		if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ToolX) then
			getgenv().Tol = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ToolX)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tol)
		end
	end
	-- [CheckMasteryWeapon]

	function CheckMasteryWeapon(NameWe,MasNum)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
			if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
				return "true DownTo"
			elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
				return "true UpTo"
			end
		end
		if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
			if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
				return "true DownTo"
			elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
				return "true UpTo"
			end
		end
		return "else"
	end


	-- [CheckMaterial]

	local function CheckMaterial(v1)
		if Old_World then 
			if (v1=="Magma Ore") then 
				MaterialMob={"Military Soldier [Lv. 300]","Military Spy [Lv. 325]"};
				CFrameMon=CFrame.new( -5815,84,8820);
			elseif ((v1=="Leather") or (v1=="Scrap Metal")) then 
				MaterialMob={"Brute [Lv. 45]"};
				CFrameMon=CFrame.new( -1145,15,4350);
			elseif (v1=="Angel Wings") then 
				MaterialMob={"God's Guard [Lv. 450]"};
				CFrameMon=CFrame.new( -4698,845, -1912);
			elseif (v1=="Fish Tail") then 
				MaterialMob={"Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]"};
				CFrameMon=CFrame.new(61123,19,1569);
			end 
		end 
		if New_World then 
			if (v1=="Magma Ore") then 
				MaterialMob={"Magma Ninja [Lv. 1175]"};
				CFrameMon=CFrame.new( -5428,78, -5959);
			elseif (v1=="Scrap Metal") then
				MaterialMob={"Swan Pirate [Lv. 775]"};
				CFrameMon=CFrame.new(878,122,1235);
			elseif (v1=="Radioactive Material") then 
				MaterialMob={"Factory Staff [Lv. 800]"};
				CFrameMon=CFrame.new(295,73, -56);
			elseif (v1=="Vampire Fang") then 
				MaterialMob={"Vampire [Lv. 975]"};
				CFrameMon=CFrame.new( -6033,7, -1317);
			elseif (v1=="Mystic Droplet") then 
				MaterialMob={"Water Fighter [Lv. 1450]","Sea Soldier [Lv. 1425]"};
				CFrameMon=CFrame.new( -3385,239, -10542);
			end 
		end 
		if Three_World then 
			if (v1=="Mini Tusk") then 
				MaterialMob={"Mythological Pirate [Lv. 1850]"};
				CFrameMon=CFrame.new( -13545,470, -6917);
			elseif (v1=="Fish Tail") then 
				MaterialMob={"Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]"};
				CFrameMon=CFrame.new( -10993,332, -8940);
			elseif (v1=="Scrap Metal") then 
				MaterialMob={"Jungle Pirate [Lv. 1900]"};
				CFrameMon=CFrame.new( -12107,332, -10549);
			elseif (v1=="Dragon Scale") then 
				MaterialMob={"Dragon Crew Archer [Lv. 1600]","Dragon Crew Warrior [Lv. 1575]"};
				CFrameMon=CFrame.new(6594,383,139);
			elseif (v1=="Conjured Cocoa") then 
				MaterialMob={"Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"};
				CFrameMon=CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625);
			elseif (v1=="Demonic Wisp") then MaterialMob={"Demonic Soul [Lv. 2025]"};
				CFrameMon=CFrame.new( -9507,172,6158);
			elseif (v1=="Gunpowder") then MaterialMob={"Pistol Billionaire [Lv. 1525]"};
				CFrameMon=CFrame.new( -469,74,5904);
			end 
		end 
	end
	--AutoFarm
	function CheckQuest()
		local MyLevel = game.Players.LocalPlayer.Data.Level.Value
		if Old_World then
			if MyLevel == 1 or MyLevel <= 9 then -- Bandit
				LevelFarm = 1

				Name = "Bandit [Lv. 5]"
				QuestName = "BanditQuest1"

				LevelQuest = 1
				NameMon = "Bandit"

				CFrameMon = CFrame.new(1145, 17, 1634)
				VectorMon = Vector3.new(1145, 17, 1634)

				CFrameQuest = CFrame.new(1060, 17, 1547)
				VectorQuest = Vector3.new(1060, 17, 1547)
			elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
				LevelFarm = 2

				Name = "Monkey [Lv. 14]"
				QuestName = "JungleQuest"

				LevelQuest = 1
				NameMon = "Monkey"

				CFrameMon = CFrame.new(-1496, 39, 35)
				VectorMon = Vector3.new(-1496, 39, 35)

				CFrameQuest = CFrame.new(-1602, 37, 152)
				VectorQuest = Vector3.new(-1602, 37, 152)
			elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
				LevelFarm = 3

				Name = "Gorilla [Lv. 20]"
				QuestName = "JungleQuest"

				LevelQuest = 2
				NameMon = "Gorilla"

				CFrameMon = CFrame.new(-1237, 6, -486)
				VectorMon = Vector3.new(-1237, 7, -486)

				CFrameQuest = CFrame.new(-1602, 37, 152)
				VectorQuest = Vector3.new(-1602, 37, 152)
			elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
				LevelFarm = 4

				Name = "Pirate [Lv. 35]"
				QuestName = "BuggyQuest1"

				LevelQuest = 1
				NameMon = "Pirate"

				CFrameMon = CFrame.new(-1115, 14, 3938)
				VectorMon = Vector3.new(-1115, 14, 3938)

				CFrameQuest = CFrame.new(-1140, 5, 3828)
				VectorQuest = Vector3.new(-1140, 5, 3828)
			elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
				LevelFarm = 5

				Name = "Brute [Lv. 45]"
				QuestName = "BuggyQuest1"

				LevelQuest = 2
				NameMon = "Brute"

				CFrameMon = CFrame.new(-1145, 15, 4350)
				VectorMon = Vector3.new(-1146, 15, 4350)

				CFrameQuest = CFrame.new(-1140, 5, 3828)
				VectorQuest = Vector3.new(-1140, 5, 3828)
			elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
				LevelFarm = 6

				Name = "Desert Bandit [Lv. 60]"
				QuestName = "DesertQuest"

				LevelQuest = 1
				NameMon = "Desert Bandit"

				CFrameMon = CFrame.new(932, 7, 4484)
				VectorMon = Vector3.new(932, 7, 4484)

				CFrameQuest = CFrame.new(897, 7, 4388)
				VectorQuest = Vector3.new(897, 7, 4388)
			elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
				LevelFarm = 7

				Name = "Desert Officer [Lv. 70]"
				QuestName = "DesertQuest"

				LevelQuest = 2
				NameMon = "Desert Officer"

				CFrameMon = CFrame.new(1572, 10, 4373)
				VectorMon = Vector3.new(1572, 10, 4373)

				CFrameQuest = CFrame.new(897, 7, 4388)
				VectorQuest = Vector3.new(897, 7, 4388)
			elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
				LevelFarm = 8

				Name = "Snow Bandit [Lv. 90]"
				QuestName = "SnowQuest"

				LevelQuest = 1
				NameMon = "Snow Bandits"

				CFrameMon = CFrame.new(1289, 150, -1442)
				VectorMon = Vector3.new(1289, 106, -1442)

				CFrameQuest = CFrame.new(1386, 87, -1297)
				VectorQuest = Vector3.new(1386, 87, -1297)
			elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
				LevelFarm = 9

				Name = "Snowman [Lv. 100]"
				QuestName = "SnowQuest"

				LevelQuest = 2
				NameMon = "Snowman"

				CFrameMon = CFrame.new(1289, 150, -1442)
				VectorMon = Vector3.new(1289, 106, -1442)

				CFrameQuest = CFrame.new(1386, 87, -1297)
				VectorQuest = Vector3.new(1386, 87, -1297)
			elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
				LevelFarm = 10

				Name = "Chief Petty Officer [Lv. 120]"
				QuestName = "MarineQuest2"

				LevelQuest = 1
				NameMon = "Chief Petty Officer"

				CFrameMon = CFrame.new(-4855, 23, 4308)
				VectorMon = Vector3.new(-4855, 23, 4308)

				CFrameQuest = CFrame.new(-5036, 29, 4325)
				VectorQuest = Vector3.new(-5036, 29, 4325)
			elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
				LevelFarm = 11

				Name = "Sky Bandit [Lv. 150]"
				QuestName = "SkyQuest"

				LevelQuest = 1
				NameMon = "Sky Bandit"

				CFrameMon = CFrame.new(-4981, 278, -2830)
				VectorMon = Vector3.new(-4981, 278, -2830)

				CFrameQuest = CFrame.new(-4842, 718, -2623)
				VectorQuest = Vector3.new(-4842, 718, -2623)
			elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
				LevelFarm = 12

				Name = "Dark Master [Lv. 175]"
				QuestName = "SkyQuest"

				LevelQuest = 2
				NameMon = "Dark Master"

				CFrameMon = CFrame.new(-5250, 389, -2272)
				VectorMon = Vector3.new(-5250, 389, -2272)

				CFrameQuest = CFrame.new(-4842, 718, -2623)
				VectorQuest = Vector3.new(-4842, 718, -2623)
			elseif MyLevel == 190 or MyLevel <= 209 then -- Dark Master
				LevelFarm = 13

				Name = "Prisoner [Lv. 190]"
				QuestName = "PrisonerQuest"

				LevelQuest = 1
				NameMon = "Prisoner"

				CFrameMon = CFrame.new(5411, 96, 690)
				VectorMon = Vector3.new(5411, 96, 690)

				CFrameQuest = CFrame.new(5308, 2, 474)
				VectorQuest = Vector3.new(5308, 2, 474)
			elseif MyLevel == 210 or MyLevel <= 249 then -- Dark Master
				LevelFarm = 14

				Name = "Dangerous Prisoner [Lv. 210]"
				QuestName = "PrisonerQuest"

				LevelQuest = 2
				NameMon = "Dangerous Prisoner"

				CFrameMon = CFrame.new(5411, 96, 690)
				VectorMon = Vector3.new(5411, 96, 690)

				CFrameQuest = CFrame.new(5308, 2, 474)
				VectorQuest = Vector3.new(5308, 2, 474)
			elseif MyLevel == 250 or MyLevel <= 299 then -- Toga Warrior
				LevelFarm = 15

				Name = "Toga Warrior [Lv. 250]"
				QuestName = "ColosseumQuest"

				LevelQuest = 1
				NameMon = "Toga Warrior"

				CFrameMon = CFrame.new(-1824, 50, -2743)
				VectorMon = Vector3.new(-1824, 50, -2743)

				CFrameQuest = CFrame.new(-1576, 8, -2985)
				VectorQuest = Vector3.new(-1576, 8, -2985)
			elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
				LevelFarm = 16

				Name = "Military Soldier [Lv. 300]"
				QuestName = "MagmaQuest"

				LevelQuest = 1
				NameMon = "Military Soldier"

				CFrameMon = CFrame.new(-5408, 11, 8447)
				VectorMon = Vector3.new(-5408, 11, 8447)

				CFrameQuest = CFrame.new(-5316, 12, 8517)
				VectorQuest = Vector3.new(-5316, 12, 8517)
			elseif MyLevel == 330 or MyLevel <= 374 then -- Military Spy
				LevelFarm = 17

				Name = "Military Spy [Lv. 325]"
				QuestName = "MagmaQuest"

				LevelQuest = 2
				NameMon = "Military Spy"

				CFrameMon = CFrame.new(-5815, 84, 8820)
				VectorMon = Vector3.new(-5815, 84, 8820)

				CFrameQuest = CFrame.new(-5316, 12, 8517)
				VectorQuest = Vector3.new(-5316, 12, 8517)
			elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
				LevelFarm = 18

				Name = "Fishman Warrior [Lv. 375]"
				QuestName = "FishmanQuest"

				LevelQuest = 1
				NameMon = "Fishman Warrior"

				CFrameMon = CFrame.new(60859, 19, 1501)
				VectorMon = Vector3.new(60859, 19, 1501)

				CFrameQuest = CFrame.new(61123, 19, 1569)
				VectorQuest = Vector3.new(61123, 19, 1569)
				if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				end
			elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
				LevelFarm = 19

				Name = "Fishman Commando [Lv. 400]"
				QuestName = "FishmanQuest"

				LevelQuest = 2
				NameMon = "Fishman Commando"

				CFrameMon = CFrame.new(61891, 19, 1470)
				VectorMon = Vector3.new(61891, 19, 1470)

				CFrameQuest = CFrame.new(61123, 19, 1569)
				VectorQuest = Vector3.new(61123, 19, 1569)
				if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				end
			elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
				LevelFarm = 20

				Name = "God's Guard [Lv. 450]"
				QuestName = "SkyExp1Quest"

				LevelQuest = 1
				NameMon = "God's Guards"

				CFrameMon = CFrame.new(-4698, 845, -1912)
				VectorMon = Vector3.new(-4698, 845, -1912)

				CFrameQuest = CFrame.new(-4722, 845, -1954)
				VectorQuest = Vector3.new(-4722, 846, -1954)
				if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				end
			elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
				LevelFarm = 21

				Name = "Shanda [Lv. 475]"
				QuestName = "SkyExp1Quest"

				LevelQuest = 2
				NameMon = "Shandas"

				CFrameMon = CFrame.new(-7685, 5567, -502)
				VectorMon = Vector3.new(-7685, 5567, -502)

				CFrameQuest = CFrame.new(-7862, 5546, -380)
				VectorQuest = Vector3.new(-7862, 5546, -380)
				if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				end
			elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
				LevelFarm = 22

				Name = "Royal Squad [Lv. 525]"
				QuestName = "SkyExp2Quest"

				LevelQuest = 1
				NameMon = "Royal Squad"

				CFrameMon = CFrame.new(-7670, 5607, -1460)
				VectorMon = Vector3.new(-7670, 5607, -1460)

				CFrameQuest = CFrame.new(-7904, 5636, -1412)
				VectorQuest = Vector3.new(-7904, 5636, -1412)
			elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
				LevelFarm = 23

				Name = "Royal Soldier [Lv. 550]"
				QuestName = "SkyExp2Quest"

				LevelQuest = 2
				NameMon = "Royal Soldier"

				CFrameMon = CFrame.new(-7828, 5607, -1744)
				VectorMon = Vector3.new(-7828, 5607, -1744)

				CFrameQuest = CFrame.new(-7904, 5636, -1412)
				VectorQuest = Vector3.new(-7904, 5636, -1412)
			elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
				LevelFarm = 24

				Name = "Galley Pirate [Lv. 625]"
				QuestName = "FountainQuest"

				LevelQuest = 1
				NameMon = "Galley Pirate"

				CFrameMon = CFrame.new(5589, 45, 3996)
				VectorMon = Vector3.new(5589, 45, 3996)

				CFrameQuest = CFrame.new(5256, 39, 4050)
				VectorQuest = Vector3.new(5256, 39, 4050)
			elseif MyLevel >= 650 then -- Galley Captain
				LevelFarm = 25

				Name = "Galley Captain [Lv. 650]"
				QuestName = "FountainQuest"

				LevelQuest = 2
				NameMon = "Galley Captain"

				CFrameMon = CFrame.new(5649, 39, 4936)
				VectorMon = Vector3.new(5649, 39, 4936)

				CFrameQuest = CFrame.new(5256, 39, 4050)
				VectorQuest = Vector3.new(5256, 39, 4050)
			end
		end
		if New_World then
			if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
				LevelFarm = 1

				Name = "Raider [Lv. 700]"
				QuestName = "Area1Quest"

				LevelQuest = 1
				NameMon = "Raider"

				CFrameQuest = CFrame.new(-425, 73, 1837)
				VectorQuest = Vector3.new(-425, 73, 1837)

				CFrameMon = CFrame.new(-746, 39, 2390)
				VectorMon = Vector3.new(-746, 39, 2389)
			elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
				LevelFarm = 2

				Name = "Mercenary [Lv. 725]"
				QuestName = "Area1Quest"

				LevelQuest = 2
				NameMon = "Mercenary"

				CFrameQuest = CFrame.new(-425, 73, 1837)
				VectorQuest = Vector3.new(-425, 73, 1837)

				CFrameMon = CFrame.new(-874, 141, 1312)
				VectorMon = Vector3.new(-874, 141, 1312)
			elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
				LevelFarm = 3

				Name = "Swan Pirate [Lv. 775]"
				QuestName = "Area2Quest"

				LevelQuest = 1
				NameMon = "Swan Pirate"

				CFrameQuest = CFrame.new(634, 73, 918)
				VectorQuest = Vector3.new(634, 73, 918)

				CFrameMon = CFrame.new(878, 122, 1235)
				VectorMon = Vector3.new(878, 122, 1235)
			elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
				LevelFarm = 4

				Name = "Factory Staff [Lv. 800]"
				QuestName = "Area2Quest"

				LevelQuest = 2
				NameMon = "Factory Staff"

				CFrameQuest = CFrame.new(634, 73, 918)
				VectorQuest = Vector3.new(634, 73, 918)

				CFrameMon = CFrame.new(295, 73, -56)
				VectorMon = Vector3.new(295, 73, -56)
			elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
				LevelFarm = 5

				Name = "Marine Lieutenant [Lv. 875]"
				QuestName = "MarineQuest3"

				LevelQuest = 1
				NameMon = "Marine Lieutenant"

				CFrameMon = CFrame.new(-2806, 73, -3038)
				VectorMon = Vector3.new(-2806, 73, -3038)

				CFrameQuest = CFrame.new(-2443, 73, -3219)
				VectorQuest = Vector3.new(-2443, 73, -3219)
			elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
				LevelFarm = 6

				Name = "Marine Captain [Lv. 900]"
				QuestName = "MarineQuest3"

				LevelQuest = 2
				NameMon = "Marine Captain"

				CFrameMon = CFrame.new(-1869, 73, -3320)
				VectorMon = Vector3.new(-1869, 73, -3320)

				CFrameQuest = CFrame.new(-2443, 73, -3219)
				VectorQuest = Vector3.new(-2443, 73, -3219)
			elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
				LevelFarm = 7

				Name = "Zombie [Lv. 950]"
				QuestName = "ZombieQuest"

				LevelQuest = 1
				NameMon = "Zombie"

				CFrameMon = CFrame.new(-5736, 126, -728)
				VectorMon = Vector3.new(-5736, 126, -728)

				CFrameQuest = CFrame.new(-5494, 49, -795)
				VectorQuest = Vector3.new(-5494, 49, -794)
			elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
				LevelFarm = 8

				Name = "Vampire [Lv. 975]"
				QuestName = "ZombieQuest"

				LevelQuest = 2
				NameMon = "Vampire"

				CFrameMon = CFrame.new(-6033, 7, -1317)
				VectorMon = Vector3.new(-6033, 7, -1317)

				CFrameQuest = CFrame.new(-5494, 49, -795)
				VectorQuest = Vector3.new(-5494, 49, -795)
			elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
				LevelFarm = 9

				Name = "Snow Trooper [Lv. 1000]"
				QuestName = "SnowMountainQuest"

				LevelQuest = 1
				NameMon = "Snow Trooper"

				CFrameMon = CFrame.new(478, 402, -5362)
				VectorMon = Vector3.new(478, 402, -5362)

				CFrameQuest = CFrame.new(605, 402, -5371)
				VectorQuest = Vector3.new(605, 402, -5371)
			elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
				LevelFarm = 10

				Name = "Winter Warrior [Lv. 1050]"
				QuestName = "SnowMountainQuest"

				LevelQuest = 2
				NameMon = "Winter Warrior"

				CFrameMon = CFrame.new(1157, 430, -5188)
				VectorMon = Vector3.new(1157, 430, -5188)

				CFrameQuest = CFrame.new(605, 402, -5371)
				VectorQuest = Vector3.new(605, 402, -5371)
			elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
				LevelFarm = 11

				Name = "Lab Subordinate [Lv. 1100]"
				QuestName = "IceSideQuest"

				LevelQuest = 1
				NameMon = "Lab Subordinate"

				CFrameMon = CFrame.new(-5782, 42, -4484)
				VectorMon = Vector3.new(-5782, 42, -4484)

				CFrameQuest = CFrame.new(-6060, 16, -4905)
				VectorQuest = Vector3.new(-6060, 16, -4905)
			elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
				LevelFarm = 12

				Name = "Horned Warrior [Lv. 1125]"
				QuestName = "IceSideQuest"

				LevelQuest = 2
				NameMon = "Horned Warrior"

				CFrameMon = CFrame.new(-6406, 24, -5805)
				VectorMon = Vector3.new(-6406, 24, -5805)

				CFrameQuest = CFrame.new(-6060, 16, -4905)
				VectorQuest = Vector3.new(-6060, 16, -4905)
			elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
				LevelFarm = 13

				Name = "Magma Ninja [Lv. 1175]"
				QuestName = "FireSideQuest"
				LevelQuest = 1
				NameMon = "Magma Ninja"

				CFrameMon = CFrame.new(-5428, 78, -5959)
				VectorMon = Vector3.new(-5428, 78, -5959)

				CFrameQuest = CFrame.new(-5430, 16, -5295)
				VectorQuest = Vector3.new(-5430, 16, -5296)
			elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
				LevelFarm = 14

				Name = "Lava Pirate [Lv. 1200]"
				QuestName = "FireSideQuest"

				LevelQuest = 2
				NameMon = "Lava Pirate"

				CFrameMon = CFrame.new(-5270, 42, -4800)
				VectorMon = Vector3.new(-5270, 42, -4800)

				CFrameQuest = CFrame.new(-5430, 16, -5295)
				VectorQuest = Vector3.new(-5430, 16, -5296)
			elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
				LevelFarm = 15

				Name = "Ship Deckhand [Lv. 1250]"
				QuestName = "ShipQuest1"

				LevelQuest = 1
				NameMon = "Ship Deckhand"

				CFrameMon = CFrame.new(1198, 126, 33031)
				VectorMon = Vector3.new(1198, 126, 33031)

				CFrameQuest = CFrame.new(1038, 125, 32913)
				VectorQuest = Vector3.new(1038, 125, 32913)
			elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
				LevelFarm = 16

				Name = "Ship Engineer [Lv. 1275]"
				QuestName = "ShipQuest1"

				LevelQuest = 2
				NameMon = "Ship Engineer"

				CFrameMon = CFrame.new(918, 44, 32787)
				VectorMon = Vector3.new(918, 44, 32787)

				CFrameQuest = CFrame.new(1038, 125, 32913)
				VectorQuest = Vector3.new(1038, 125, 32913)
			elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
				LevelFarm = 17

				Name = "Ship Steward [Lv. 1300]"
				QuestName = "ShipQuest2"

				LevelQuest = 1
				NameMon = "Ship Steward"

				CFrameMon = CFrame.new(915, 130, 33419)
				VectorMon = Vector3.new(915, 130, 33419)

				CFrameQuest = CFrame.new(969, 125, 33245)
				VectorQuest = Vector3.new(969, 125, 33245)
			elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
				LevelFarm = 18

				Name = "Ship Officer [Lv. 1325]"
				QuestName = "ShipQuest2"

				LevelQuest = 2
				NameMon = "Ship Officer"

				CFrameMon = CFrame.new(916, 181, 33335)
				VectorMon = Vector3.new(916, 181, 33335)

				CFrameQuest = CFrame.new(969, 125, 33245)
				VectorQuest = Vector3.new(969, 125, 33245)
			elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
				LevelFarm = 19

				Name = "Arctic Warrior [Lv. 1350]"
				QuestName = "FrostQuest"

				LevelQuest = 1
				NameMon = "Arctic Warrior"

				CFrameMon = CFrame.new(6038, 29, -6231)
				VectorMon = Vector3.new(6038, 29, -6231)

				VectorQuest = Vector3.new(5669, 28, -6482)
				CFrameQuest = CFrame.new(5669, 28, -6482)
			elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
				LevelFarm = 20

				Name = "Snow Lurker [Lv. 1375]"
				QuestName = "FrostQuest"

				LevelQuest = 2
				NameMon = "Snow Lurker"

				CFrameMon = CFrame.new(5560, 42, -6826)
				VectorMon = Vector3.new(5560, 42, -6826)

				VectorQuest = Vector3.new(5669, 28, -6482)
				CFrameQuest = CFrame.new(5669, 28, -6482)
			elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
				LevelFarm = 21
				Name = "Sea Soldier [Lv. 1425]"
				QuestName = "ForgottenQuest"

				LevelQuest = 1
				NameMon = "Sea Soldier"

				CFrameMon = CFrame.new(-3022, 16, -9722)
				VectorMon = Vector3.new(-3022, 16, -9722)

				CFrameQuest = CFrame.new(-3054, 237, -10148)
				VectorQuest = Vector3.new(-3054, 237, -10148)
			elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
				LevelFarm = 22
				Name = "Water Fighter [Lv. 1450]"
				QuestName = "ForgottenQuest"

				LevelQuest = 2
				NameMon = "Water Fighter"

				CFrameMon = CFrame.new(-3385, 239, -10542)
				VectorMon = Vector3.new(-3385, 239, -10542)

				CFrameQuest = CFrame.new(-3054, 237, -10148)
				VectorQuest = Vector3.new(-3054, 237, -10148)
			end
		end
		if Three_World then
			if MyLevel == 1500 or MyLevel <= 1524 then
				LevelFarm = 1

				Name = "Pirate Millionaire [Lv. 1500]"
				QuestName = "PiratePortQuest"

				LevelQuest = 1
				NameMon = "Pirate"

				CFrameMon = CFrame.new(-373, 75, 5550)
				VectorMon = Vector3.new(-373, 75, 5550)

				CFrameQuest = CFrame.new(-288, 44, 5576)
				VectorQuest = Vector3.new(-288, 44, 5576)
			elseif MyLevel == 1525 or MyLevel <= 1574 then
				LevelFarm = 2

				Name = "Pistol Billionaire [Lv. 1525]"
				QuestName = "PiratePortQuest"

				LevelQuest = 2
				NameMon = "Pistol"

				CFrameMon = CFrame.new(-469, 74, 5904)
				VectorMon = Vector3.new(-469, 74, 5904)

				CFrameQuest = CFrame.new(-288, 44, 5576)
				VectorQuest = Vector3.new(-288, 44, 5576)
			elseif MyLevel == 1575 or MyLevel <= 1599 then
				LevelFarm = 3

				Name = "Dragon Crew Warrior [Lv. 1575]"
				QuestName = "AmazonQuest"

				LevelQuest = 1
				NameMon = "Warrior"

				CFrameMon = CFrame.new(6339, 52, -1213)
				VectorMon = Vector3.new(6338, 52, -1213)

				CFrameQuest = CFrame.new(5835, 52, -1105)
				VectorQuest = Vector3.new(5835, 52, -1105)
			elseif MyLevel == 1600 or MyLevel <= 1624 then
				LevelFarm = 4

				Name = "Dragon Crew Archer [Lv. 1600]"
				QuestName = "AmazonQuest"

				LevelQuest = 2
				NameMon = "Archer"

				CFrameMon = CFrame.new(6594, 383, 139)
				VectorMon = Vector3.new(6594, 383, 139)

				CFrameQuest = CFrame.new(5835, 52, -1105)
				VectorQuest = Vector3.new(5835, 52, -1105)
			elseif MyLevel == 1625 or MyLevel <= 1649 then
				LevelFarm = 5

				Name = "Female Islander [Lv. 1625]"
				QuestName = "AmazonQuest2"

				LevelQuest = 1
				NameMon = "Female"

				CFrameMon = CFrame.new(5308, 819, 1047)
				VectorMon = Vector3.new(5308, 819, 1047)

				CFrameQuest = CFrame.new(5443, 602, 751)
				VectorQuest = Vector3.new(5443, 602, 751)
			elseif MyLevel == 1650 or MyLevel <= 1699 then
				LevelFarm = 6

				Name = "Giant Islander [Lv. 1650]"
				QuestName = "AmazonQuest2"

				LevelQuest = 2
				NameMon = "Giant Islanders"

				CFrameMon = CFrame.new(4951, 602, -68)
				VectorMon = Vector3.new(4951, 602, -68)

				CFrameQuest = CFrame.new(5443, 602, 751)
				VectorQuest = Vector3.new(5443, 602, 751)
			elseif MyLevel == 1700 or MyLevel <= 1724 then
				LevelFarm = 7

				Name = "Marine Commodore [Lv. 1700]"
				QuestName = "MarineTreeIsland"

				LevelQuest = 1
				NameMon = "Marine Commodore"

				CFrameMon = CFrame.new(2447, 73, -7470)
				VectorMon = Vector3.new(2447, 73, -7470)

				CFrameQuest = CFrame.new(2180, 29, -6737)
				VectorQuest = Vector3.new(2180, 29, -6737)
			elseif MyLevel == 1725 or MyLevel <= 1774 then
				LevelFarm = 8

				Name = "Marine Rear Admiral [Lv. 1725]"
				QuestName = "MarineTreeIsland"

				LevelQuest = 2
				NameMon = "Marine Rear Admiral"

				CFrameMon = CFrame.new(3671, 161, -6932)
				VectorMon = Vector3.new(3671, 161, -6932)

				CFrameQuest = CFrame.new(2180, 29, -6737)
				VectorQuest = Vector3.new(2180, 29, -6737)
			elseif MyLevel == 1775 or MyLevel <= 1800 then
				LevelFarm = 9

				Name = "Fishman Raider [Lv. 1775]"
				QuestName = "DeepForestIsland3"

				LevelQuest = 1
				NameMon = "Fishman Raider"

				CFrameMon = CFrame.new(-10560, 332, -8466)
				VectorMon = Vector3.new(-10560, 332, -8466)

				CFrameQuest = CFrame.new(-10584, 332, -8758)
				VectorQuest = Vector3.new(-10584, 332, -8758)
			elseif MyLevel == 1800 or MyLevel <= 1824 then
				LevelFarm = 10

				Name = "Fishman Captain [Lv. 1800]"
				QuestName = "DeepForestIsland3"

				LevelQuest = 2
				NameMon = "Fishman Captain"

				CFrameMon = CFrame.new(-10993, 332, -8940)
				VectorMon = Vector3.new(-10993, 332, -8940)

				CFrameQuest = CFrame.new(-10584, 332, -8758)
				VectorQuest = Vector3.new(-10584, 332, -8758)
			elseif MyLevel == 1825 or MyLevel <= 1849 then
				LevelFarm = 11

				Name = "Forest Pirate [Lv. 1825]"
				QuestName = "DeepForestIsland"

				LevelQuest = 1
				NameMon = "Forest Pirate"

				CFrameMon = CFrame.new(-13479, 333, -7905)
				VectorMon = Vector3.new(-13479, 333, -7905)

				CFrameQuest = CFrame.new(-13232, 333, -7627)
				VectorQuest = Vector3.new(-13232, 333, -7627)
			elseif MyLevel == 1850 or MyLevel <= 1899 then
				LevelFarm = 12

				Name = "Mythological Pirate [Lv. 1850]"
				QuestName = "DeepForestIsland"

				LevelQuest = 2
				NameMon = "Mythological Pirate"

				CFrameMon = CFrame.new(-13545, 470, -6917)
				VectorMon = Vector3.new(-13545, 470, -6917)

				CFrameQuest = CFrame.new(-13232, 333, -7627)
				VectorQuest = Vector3.new(-13232, 333, -7627)
			elseif MyLevel == 1900 or MyLevel <= 1924 then
				LevelFarm = 13

				Name = "Jungle Pirate [Lv. 1900]"
				QuestName = "DeepForestIsland2"

				LevelQuest = 1
				NameMon = "Jungle Pirate"

				CFrameMon = CFrame.new(-12107, 332, -10549)
				VectorMon = Vector3.new(-12106, 332, -10549)

				CFrameQuest = CFrame.new(-12684, 391, -9902)
				VectorQuest = Vector3.new(-12684, 391, -9902)
			elseif MyLevel == 1925 or MyLevel <= 1974 then
				LevelFarm = 14

				Name = "Musketeer Pirate [Lv. 1925]"
				QuestName = "DeepForestIsland2"

				LevelQuest = 2
				NameMon = "Musketeer Pirate"

				CFrameMon = CFrame.new(-13286, 392, -9769)
				VectorMon = Vector3.new(-13286, 392, -9768)

				CFrameQuest = CFrame.new(-12684, 391, -9902)
				VectorQuest = Vector3.new(-12684, 391, -9902)
			elseif MyLevel == 1975 or MyLevel <= 1999 then
				LevelFarm = 15
				Name = "Reborn Skeleton [Lv. 1975]"
				QuestName = "HauntedQuest1"

				LevelQuest = 1
				NameMon = "Reborn Skeleton"

				CFrameMon = CFrame.new(-8760, 142, 6039)
				VectorMon = Vector3.new(-8760, 142, 6039)

				CFrameQuest = CFrame.new(-9482, 142, 5567)
				VectorQuest = Vector3.new(-9482, 142, 5567)
			elseif MyLevel == 2000 or MyLevel <= 2024 then
				LevelFarm = 16

				Name = "Living Zombie [Lv. 2000]"
				QuestName = "HauntedQuest1"

				LevelQuest = 2
				NameMon = "Living Zombie"

				CFrameMon = CFrame.new(-10144, 140, 5932)
				VectorMon = Vector3.new(-10144, 140, 5932)

				CFrameQuest = CFrame.new(-9482, 142, 5567)
				VectorQuest = Vector3.new(-9482, 142, 5567)
			elseif MyLevel == 2025 or MyLevel <= 2049 then
				LevelFarm = 17

				Name = "Demonic Soul [Lv. 2025]"
				QuestName = "HauntedQuest2"

				LevelQuest = 1
				NameMon = "Demonic Soul"

				CFrameMon = CFrame.new(-9507, 172, 6158)
				VectorMon = Vector3.new(-9506, 172, 6158)

				CFrameQuest = CFrame.new(-9513, 172, 6079)
				VectorQuest = Vector3.new(-9513, 172, 6079)
			elseif MyLevel == 2050 or MyLevel <= 2074 then
				LevelFarm = 18

				Name = "Posessed Mummy [Lv. 2050]"
				QuestName = "HauntedQuest2"

				LevelQuest = 2
				NameMon = "Posessed Mummy"

				CFrameMon = CFrame.new(-9577, 6, 6223)
				VectorMon = Vector3.new(-9577, 6, 6223)

				CFrameQuest = CFrame.new(-9513, 172, 6079)
				VectorQuest = Vector3.new(-9513, 172, 6079)

			elseif MyLevel == 2075 or MyLevel <= 2099 then
				LevelFarm = 19

				Name = "Peanut Scout [Lv. 2075]"
				QuestName = "NutsIslandQuest"

				LevelQuest = 1
				NameMon = "Peanut Scout"

				CFrameMon = CFrame.new(-2124, 123, -10435)
				VectorMon = Vector3.new(-2124, 123, -10435)

				CFrameQuest = CFrame.new(-2104, 38, -10192)
				VectorQuest = Vector3.new(-2104, 38, -10192)
			elseif MyLevel == 2100 or MyLevel <= 2124 then
				LevelFarm = 20

				Name = "Peanut President [Lv. 2100]"
				QuestName = "NutsIslandQuest"

				LevelQuest = 2
				NameMon = "Peanut President"

				CFrameMon = CFrame.new(-2124, 123, -10435)
				VectorMon = Vector3.new(-2124, 123, -10435)

				CFrameQuest = CFrame.new(-2104, 38, -10192)
				VectorQuest = Vector3.new(-2104, 38, -10192)
			elseif MyLevel == 2125 or MyLevel <= 2149 then
				LevelFarm = 21

				Name = "Ice Cream Chef [Lv. 2125]"
				QuestName = "IceCreamIslandQuest"

				LevelQuest = 1
				NameMon = "Ice Cream Chef"

				CFrameMon = CFrame.new(-641, 127, -11062)
				VectorMon = Vector3.new(-641, 127, -11062)

				CFrameQuest = CFrame.new(-822, 66, -10965)
				VectorQuest = Vector3.new(-822, 66, -10965)
			elseif MyLevel == 2150 or MyLevel <= 2199 then
				LevelFarm = 22

				Name = "Ice Cream Commander [Lv. 2150]"
				QuestName = "IceCreamIslandQuest"

				LevelQuest = 2
				NameMon = "Ice Cream Commander"

				CFrameMon = CFrame.new(-641, 127, -11062)
				VectorMon = Vector3.new(-641, 127, -11062)

				CFrameQuest = CFrame.new(-822, 66, -10965)
				VectorQuest = Vector3.new(-822, 66, -10965)
				---------------------------------------------------------------
			elseif MyLevel == 2200 or MyLevel <= 2224 then
				LevelFarm = 23

				Name = "Cookie Crafter [Lv. 2200]"
				QuestName = "CakeQuest1"

				LevelQuest = 1
				NameMon = "Cookie Crafter"

				CFrameMon = CFrame.new(-2365, 38, -12099)
				VectorMon = Vector3.new(-2365, 38, -12099)

				CFrameQuest = CFrame.new(-2020, 38, -12025)
				VectorQuest = Vector3.new(-2020, 38, -12025)
			elseif MyLevel == 2225 or MyLevel <= 2249 then
				LevelFarm = 24

				Name = "Cake Guard [Lv. 2225]"
				QuestName = "CakeQuest1"

				LevelQuest = 2
				NameMon = "Cake Guard"

				CFrameMon = CFrame.new(-1651, 38, -12308)
				VectorMon = Vector3.new(-1651, 38, -12308)

				CFrameQuest = CFrame.new(-2020, 38, -12025)
				VectorQuest = Vector3.new(-2020, 38, -12025)
			elseif MyLevel == 2250 or MyLevel <= 2274 then
				LevelFarm = 25

				Name = "Baking Staff [Lv. 2250]"
				QuestName = "CakeQuest2"

				LevelQuest = 1
				NameMon = "Baking Staff"

				CFrameMon = CFrame.new(-1870, 38, -12938)
				VectorMon = Vector3.new(-1870, 38, -12938)

				CFrameQuest = CFrame.new(-1926, 38, -12850)
				VectorQuest = Vector3.new(-1926, 38, -12850)
			elseif MyLevel == 2275 or MyLevel <= 2299 then
				LevelFarm = 26

				Name = "Head Baker [Lv. 2275]"
				QuestName = "CakeQuest2"

				LevelQuest = 2
				NameMon = "Head Baker"

				CFrameMon = CFrame.new(-1926, 88, -12850)
				VectorMon = CFrame.new(-1870, 38, -12938)

				CFrameQuest = CFrame.new(-1926, 38, -12850)
				VectorQuest = Vector3.new(-1926, 38, -12850)
				---------------------------------------------------------------
			elseif MyLevel == 2300 or MyLevel <= 2324 then
				LevelFarm = 27

				Name = "Cocoa Warrior [Lv. 2300]"
				QuestName = "ChocQuest1"

				LevelQuest = 1
				NameMon = "Cocoa Warrior"

				CFrameMon = CFrame.new(231, 23, -12194)
				VectorMon = CFrame.new(231, 23, -12194)

				CFrameQuest = CFrame.new(231, 23, -12194)
				VectorQuest = Vector3.new(231, 23, -12194)
			elseif MyLevel == 2325 or MyLevel <= 2349 then
				LevelFarm = 28

				Name = "Chocolate Bar Battler [Lv. 2325]"
				QuestName = "ChocQuest1"

				LevelQuest = 2
				NameMon = "Chocolate Bar Battler"

				CFrameMon = CFrame.new(231, 23, -12194)
				VectorMon = CFrame.new(231, 23, -12194)

				CFrameQuest = CFrame.new(231, 23, -12194)
				VectorQuest = Vector3.new(231, 23, -12194)
			elseif MyLevel == 2350 or MyLevel <= 2374 then
				LevelFarm = 29

				Name = "Sweet Thief [Lv. 2350]"
				QuestName = "ChocQuest2"

				LevelQuest = 1
				NameMon = "Sweet Thief"

				CFrameMon = CFrame.new(71, 77, -12632)
				VectorMon = CFrame.new(71, 77, -12632)

				CFrameQuest = CFrame.new(151, 23, -12774)
				VectorQuest = Vector3.new(151, 23, -12774)
			elseif MyLevel == 2375 or MyLevel <= 2400 then
				LevelFarm = 30

				Name = "Candy Rebel [Lv. 2375]"
				QuestName = "ChocQuest2"

				LevelQuest = 2
				NameMon = "Candy Rebel"

				CFrameMon = CFrame.new(134, 77, -12882)
				VectorMon = CFrame.new(134, 77, -12882)

				CFrameQuest = CFrame.new(151, 23, -12774)
				VectorQuest = Vector3.new(151, 23, -12774)
			elseif MyLevel == 2400 or MyLevel <= 2425 then
				LevelFarm = 31

				Name = "Candy Pirate [Lv. 2400]"
				QuestName = "CandyQuest1"

				LevelQuest = 1
				NameMon = "Candy Pirate"

				CFrameMon = CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.17216943e-08, -0.432239741, 7.81264475e-08, 1, -2.60746162e-08, 0.432239741, -1.02563433e-08, 0.90175873)
				VectorQuest = Vector3.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.17216943e-08, -0.432239741, 7.81264475e-08, 1, -2.60746162e-08, 0.432239741, -1.02563433e-08, 0.90175873)

				CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
				VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
			elseif MyLevel >= 2425 then
				LevelFarm = 32

				Name = "Snow Demon [Lv. 2425]"
				QuestName = "CandyQuest1"

				LevelQuest = 2
				NameMon = "Snow Demon"

				CFrameMon = CFrame.new(-777.070862, 23.5809536, -14453.0078, 0.33384338, 0, -0.942628562, 0, 1, 0, 0.942628562, 0, 0.33384338)
				VectorQuest = Vector3.new(-777.070862, 23.5809536, -14453.0078, 0.33384338, 0, -0.942628562, 0, 1, 0, 0.942628562, 0, 0.33384338)

				CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
				VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
			end
		end
	end


	function TP(P)
		local Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
		local Speed = 300 -- ความเร็วของมึง
		tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
		tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = P})
		tween:Play()
	end
	function TPER(P)
		local Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
		local Speed = 400-- ความเร็วของมึง
		tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
		tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = P})
		tween:Play()
	end
	function TP2(P)
		local Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
		local Speed = 999999999999999999 -- ความเร็วของมึง
		tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
		tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = P})
		tween:Play()
	end
	function TP3(P)
		CheckQuest()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
		wait(0.1)
		tween:cancel()
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
		wait(0)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
		tween:cancel()
	end
	------- Zone In Ui
	local watermark = library:Watermark("Manake Hub Premium script | 60 fps | ")

	getgenv().AutoOpen = {
		AutoFarmLevel = true,
		AutoSecond_Sea = false,
		Autohird_Sea = false,
		AutoFarmCandy = false,
		AutoFarmBones = false,
		AutoFarmFishTail = false,
		AutoFarmDragonScale = false
	}


	local main = library:Load {
		Name = "Manake Hub Premium script | " .. os.date("%A, %B %d %Y"),
		SizeX = 650,
		SizeY = 650,
		Theme = "Midnight",
		Extension = "json", -- config file extension
		Folder = "Manake Hub Premium script" -- config folder name
	}

	local Main_Farm = main:Tab(" Main Farm ")
	local Player_Tap = main:Tab(" Player ")
	local Raids_Tap = main:Tab(" Raids ")
	local Item_Tap = main:Tab(" Item Shop ")
	local Tap_Swor = Item_Tap:Section { Name = " Change Sword  ", Side = "Right" }
	local Tap_Melee = Item_Tap:Section {Name = "Change Melee",Side = "Left"}
	local Tap_Fruit = Raids_Tap:Section { Name = " Fruit ", Side = "Right" }
	local Tap_FakeRace = Player_Tap:Section { Name = "FakeRace", Side = "Right" }
	local Tap_Server = Player_Tap:Section { Name = "Server", Side = "Right" }
	local Tap_Jobid = Player_Tap:Section { Name = "Server jobId", Side = "Right" }
	local Tap_Setting = Main_Farm:Section { Name = "Setting", Side = "Right" }
	local Tap_Stats = Main_Farm:Section { Name = "Stats", Side = "Right" }

	local PlayerL = Player_Tap:Section {
		Name = "Island",
		Side = "Left"
	}

	local section_Farm = Main_Farm:Section {
		Name = "Auto Farm",
		Side = "Left"
	}

	local label_Quest = section_Farm:Label("Quest : ???")
	local label_Mon = section_Farm:Label("Mon : ???")
	local label_Farm = section_Farm:Label("Farming : ???")

	spawn(function()
		while task.wait() do
			CheckQuest()
			label_Mon:Set("Mon : "..Name)
			wait(0)
			label_Quest:Set("Quest : "..QuestName.." | Level "..LevelQuest)

		end
	end)

	function GetMaterial(matname)
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
			if type(v) == "table" then
				if v.Type == "Material" then
					if v.Name == matname then
						return v.Count
					end
				end
			end
		end
		return 0
	end

	spawn(function()
		while task.wait() do
			pcall(function()
				local Bone = GetMaterial("Bones")
				local FishTail = GetMaterial("Fish Tail")
				local DragonScale = GetMaterial("Dragon Scale")
				local Lv = game.Players.LocalPlayer.Data.Level.Value
				if _G.AutoFarmOF then
					label_Farm:Set("Farming : Level")
				elseif _G.AutoFarmBones or _G.SaveSetting.AutoFarmBone == true then
					label_Farm:Set("Farming : Bone")
				elseif _G.AutoFarmFishTail or _G.SaveSetting.AutoFarmFish == true then
					label_Farm:Set("Farming : Fish Tail")
				elseif _G.AutoFarmDragonScale or _G.SaveSetting.AutoFarmDragonScale == true then
					label_Farm:Set("Farming : Dragon Scale")
				elseif _G.AutoCakePrince or _G.SaveSetting.AutoCakePrince == true then
					label_Farm:Set("Farming : Cake Prince")
				elseif _G.AutoFarmCandy or _G.SaveSetting.AutoFarmCandy == true then
					label_Farm:Set("Farming : Candy")
				elseif AutoStartRaid then
					label_Farm:Set("Farming : Raid | "..SelectRaid)
				else 
					label_Farm:Set("Farming : ???")
					tween:cancel()
				end
			end)
		end
	end)


	function InMyNetWork(object)
		if isnetworkowner then
			return isnetworkowner(object)
		else
			if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
				return true
			end
			return false
		end
	end

	-- [Function (Abandoned Quest , Others)]

	function Com(com,...)
		local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
		if Remote:IsA("RemoteEvent") then
			Remote:FireServer(...)
		elseif Remote:IsA("RemoteFunction") then
			Remote:InvokeServer(...)
		end
	end

	-- [Tween Functions]

	local function GetIsLand(...)
		local RealtargetPos = {...}
		local targetPos = RealtargetPos[1]
		local RealTarget
		if type(targetPos) == "vector" then
			RealTarget = targetPos
		elseif type(targetPos) == "userdata" then
			RealTarget = targetPos.Position
		elseif type(targetPos) == "number" then
			RealTarget = CFrame.new(unpack(RealtargetPos))
			RealTarget = RealTarget.p
		end

		local ReturnValue
		local CheckInOut = math.huge;
		if game.Players.LocalPlayer.Team then
			for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
				local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
				if ReMagnitude < CheckInOut then
					CheckInOut = ReMagnitude;
					ReturnValue = v.Name
				end
			end
			if ReturnValue then
				return ReturnValue
			end 
		end
	end

	--BTP

	function BTP(Position)
		game.Players.LocalPlayer.Character.Head:Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait(1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
	end


	-- [Tween Functions (toTarget)]
	local function toTarget(...)
		local RealtargetPos = {...}
		local targetPos = RealtargetPos[1]
		local RealTarget
		if type(targetPos) == "vector" then
			RealTarget = CFrame.new(targetPos)
		elseif type(targetPos) == "userdata" then
			RealTarget = targetPos
		elseif type(targetPos) == "number" then
			RealTarget = CFrame.new(unpack(RealtargetPos))
		end
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then if tween then tween:Cancel() end repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2) end
		local tweenfunc = {}
		local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
		if _G.FastTween then
			if Distance < 400 then
				Speed = 575
			else 
				Speed = 350
			end
		else 
			Speed = 350
		end
		if _G.BypassTp then
			if Distance > 2000 then
				pcall(function()
					tween:Cancel()
					fkwarp = false
					if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
						game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
						wait(0.1)
						repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
					else
						if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
							if fkwarp == false then
								if Three_World then
									if (Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('requestEntrance',Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875))
									end
									tween:cancel()
								end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
								tween:cancel()
							end
							fkwarp = true
						end
						wait(.08)
						game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
						repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
						tween:cancel()
						wait(.1)
						Com("F_","SetSpawnPoint")
						wait(0.2)
						tween:cancel()
					end
					return
				end)
			end
		end

		local tween_s = game:service"TweenService"
		local info = TweenInfo.new((RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
		local tweenw, err = pcall(function()
			tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
			tween:Play()
		end)

		function tweenfunc:Stop()
			tween:Cancel()
		end 

		function tweenfunc:Wait()
			tween.Completed:Wait()
		end 

		return tweenfunc
	end


	function toTargetP(CFgo)
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
		if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
			pcall(function()
				tween:Cancel()

				game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

				return
			end)
		end
		local tween_s = game:service"TweenService"
		local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
		tween:Play()

		local tweenfunc = {}

		function tweenfunc:Stop()
			tween:Cancel()
		end

		return tweenfunc
	end

	local AutoFarmLev = section_Farm:Toggle {
		Name     = "Auto Farm Level",
		Flag     = "AutoFarmLevel",
		Default  = getgenv().AutoOpen.AutoFarmLeve,
		Callback = function(bool)
			AutoFarm = bool
			_G.AutoFarmOF = bool
			if bool == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			spawn(function()
				while wait() do
					if AutoFarm then
						pcall(function()
							CheckQuest()
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								toTarget(CFrameMon)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",QuestName,LevelQuest)
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
											if v.Humanoid.Health > 0 then
												repeat wait()
													_G.PosMon = v.HumanoidRootPart.CFrame
													Equip(WeaponName)
													AutoHaki()
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.CanCaillde = false
													if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
													end
												until AutoFarm == false or v.Humanoid.Health <= 0
											end
										end
									end
								end
							end
						end)
					end
				end
			end)
		end
	}
	if Old_World then
		local AutoFarmLev = section_Farm:Toggle {
			Name     = "AutoFarmSky",
			Flag     = "AutoFarmLevel",
			Default  = getgenv().AutoOpen.AutoFarmLeve,
			Callback = function(bool)
				AutoFarmSky = t
				FastAttackSpeed = t
			end
		}
	end

	local Lvl = game.Players.LocalPlayer.Data.Level.Value

	spawn(function()
		while wait() do
			pcall(function()
				if AutoFarmSky then
					if Lvl == 20 or Lvl <= 120 then
						AutoFarm = false
					else
						AutoFarm = true
						AutoFarmSky = false
						_G.Bringmob = true
					end
					MonPos = CFrame.new(-7685, 5567, -502)
					if AutoFarmSky and (MonPos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
					end
					if game.Workspace.Enemies:FindFirstChild("Shanda [Lv. 475]") then
						_G.Bringmob = true
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == "Shanda [Lv. 475]" and v.Humanoid.Health > 0 then
								if v.Humanoid.Health > 0 then
									repeat wait()
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.CanCaillde = false
									until AutoFarmSky == false or v.Humanoid.Health <= 0
									if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
										AutoFarmSky = false
										wait(0.25)
										AutoFarmSky = true
									end
								end
							end
						end
					end
				end
			end)
		end
	end)

	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			if AutoFarmSky then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
					setfflag("HumanoidParallelRemoveNoPhysics", "False")
					setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
				end
			end
		end)
	end)

	local Auto_NewWorld = section_Farm:Toggle {
		Name     = "Auto New World  Second Sea",
		Flag     = "Auto_NewWorld",
		Default  = getgenv().AutoOpen.AutoSecond_Sea,
		Callback = function(bool)
			_G.AutoWorldTwo = bool
			AutoNewWorld = bool
			task.spawn(function()
				while wait() do
					pcall(function()
						if AutoNewWorld then
							if game.Players.LocalPlayer.Data.Level.Value >= 700 then
								if AutoFarm then
									AutoFarm = false
								end
								if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
									repeat wait() 
										toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488)) 
									until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or notAutoNewWorld
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
									Equip("Key")
								elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
									if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
												repeat task.wait()
													AutoHaki()
													Equip(WeaponName)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
													FastAttackSpeed = true
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
												until v.Humanoid.Health <= 0 or not v.Parent
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
											end
										end
									else
										toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
								end
							end
						end
					end)
				end
			end)
		end
	}



	local AutoThird_Sea = section_Farm:Toggle {
		Name     = "Auto New World Third Sea",
		Flag     = "AutoThird_Sea",
		Default  = getgenv().AutoOpen.Autohird_Sea,
		Callback = function(bool)
			_G.AutoThirdSea = bool
			AutoThirdWorld = bool
			if bool == false then
				wait()
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait()
			end
			task.spawn(function()
				while wait() do
					pcall(function()
						if AutoThirdWorld then
							if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
								if AutoFarm then
									AutoFarm = false
								end
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
										Com("F_","TravelZou")
										if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
											if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then 	
												for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													if v.Name == "rip_indra [Lv. 1500] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
														repeat wait()
															if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
															elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																if Farmtween then Farmtween:Stop() end
																FastAttackSpeed = true
																AutoHaki()
																Equip(WeaponName)
															end
															_G.PosMon = v.HumanoidRootPart.CFrame
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
														until not AutoThirdWorld or not v.Parent or v.Humanoid.Health <= 0 
														wait(.5)
														Check = 2
														repeat wait() Com("F_","TravelZou") until Check == 1
														FastAttackSpeed = false
													end
												end
											else
												Com("F_","ZQuestProgress","Check")
												Com("F_","ZQuestProgress","Begin")
											end
										elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
											Com("F_","TravelZou")
										else
											if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
												for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													if v.Name == "Don Swan [Lv. 1000] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
														repeat wait()
															if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
															elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																if Farmtween then Farmtween:Stop() end
																FastAttackSpeed = true
																AutoHaki()
																Equip(WeaponName)
																_G.PosMon = v.HumanoidRootPart.CFrame
																v.Humanoid.JumpPower = 0
																v.Humanoid.WalkSpeed = 0
																v.HumanoidRootPart.CanCollide = false
																v.Humanoid:ChangeState(11)
																toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
															end
														until not AutoThirdWorld or not v.Parent or v.Humanoid.Health <= 0 
														FastAttackSpeed = false
													end
												end
											else
												TweenDonSwanthireworld = toTarget(CFrame.new(2288.802, 15.1870775, 863.034607).Position,CFrame.new(2288.802, 15.1870775, 863.034607))
												if (CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if TweenDonSwanthireworld then
														TweenDonSwanthireworld:Stop()
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607)
													end
												end
											end
										end
									else
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
											TabelDevilFruitStore = {}
											TabelDevilFruitOpen = {}

											for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
												for i1,v1 in pairs(v) do
													if i1 == "Name" then 
														table.insert(TabelDevilFruitStore,v1)
													end
												end
											end

											for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
												if v.Price >= 1000000 then  
													table.insert(TabelDevilFruitOpen,v.Name)
												end
											end

											for i,DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
												for i1,DevilFruitStore in pairs(TabelDevilFruitStore) do
													if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then    
														if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then   
															Com("F_","LoadFruit",DevilFruitStore)
														else
															Com("F_","TalkTrevor","1")
															Com("F_","TalkTrevor","2")
															Com("F_","TalkTrevor","3")
														end
													end
												end
											end

											Com("F_","TalkTrevor","1")
											Com("F_","TalkTrevor","2")
											Com("F_","TalkTrevor","3")	
										end
									end
								else
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
										if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
											if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
												for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													if v.Name == "Swan Pirate [Lv. 775]" then
														pcall(function()
															repeat wait()
																if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																	Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
																elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																	if Farmtween then Farmtween:Stop() end
																	FastAttackSpeed = true
																	_G.Bringmob = true
																	AutoHaki()
																	Equip(WeaponName)
																	PosMon = v.HumanoidRootPart.CFrame
																	v.Humanoid.JumpPower = 0
																	v.Humanoid.WalkSpeed = 0
																	v.HumanoidRootPart.CanCollide = false
																	v.Humanoid:ChangeState(11)
																	toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
																end
															until not v.Parent or v.Humanoid.Health <= 0 orAutoThirdWorld = false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
															_G.Bringmob = false
															FastAttackSpeed = false
														end)
													end
												end
											else
												Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,CFrame.new(1057.92761, 137.614319, 1242.08069))
												if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Bartilotween then Bartilotween:Stop() end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
												end
											end
										else
											Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
											if ( CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Bartilotween then Bartilotween:Stop() end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-456.28952, 73.0200958, 299.895966)
												Com("F_","StartQuest","BartiloQuest",1)
											end
										end
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
										if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "Jeremy [Lv. 850] [Boss]" then
													repeat wait()
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															if Farmtween then Farmtween:Stop() end
															FastAttackSpeed = true
															AutoHaki()
															Equip(WeaponName)
															PosMon = v.HumanoidRootPart.CFrame
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)															
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
														end
													until not v.Parent or v.Humanoid.Health <= 0 or AutoThirdWorld == false
													FastAttackSpeed = false
												end
											end
										else
											Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
											if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Bartilotween then Bartilotween:Stop() end
												game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
											end
										end
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
										if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
											Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
										elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Bartilotween then Bartilotween:Stop() end
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
											wait(.5)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
											wait(.1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
											wait(.1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
											wait(.1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
											wait(.1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
											wait(.1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
											wait(.1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
											wait(.1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
										end
									end
								end
							end
						end
					end)
				end
			end)
		end
	}



	local Tap_Materials = section_Farm:Separator("Materials")

	local Farm_Candy = section_Farm:Toggle {
		Name     = "AutoFarm Candy",
		Flag     = "FarmCandy",
		Default  = getgenv().AutoOpen.AutoFarmCandy,
		Callback = function(bool)
			_G.AutoFarmCandy = bool
			AutoFarmCandy = bool
			if bool == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			task.spawn(function()
				while wait() do
					pcall(function()
						if AutoFarmCandy then
							if game:GetService("Workspace").Enemies:FindFirstChild("Candy Pirate [Lv. 2400]") or game:GetService("Workspace").Enemies:FindFirstChild("Snow Demon [Lv. 2425]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Candy Pirate [Lv. 2400]" or v.Name == "Snow Demon [Lv. 2425]" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait(_G.Fast_Delay)
												_G.Bringmob = true
												FastAttackSpeed = true
												Equip(WeaponName)
												AutoHaki()
												_G.PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
											until not AutoFarmCandy or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
											_G.Bringmob = false
											FastAttackSpeed = false
										end
									end
								end
							else
								toTarget(CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.17216943e-08, -0.432239741, 7.81264475e-08, 1, -2.60746162e-08, 0.432239741, -1.02563433e-08, 0.90175873))
							end						 
						end
					end)
				end
			end)
		end
	}



	local Farm_Bones = section_Farm:Toggle {
		Name     = "AutoFarm Bones",
		Flag     = "FarmBones",
		Default  = getgenv().AutoOpen.AutoFarmBones,
		Callback = function(bool)
			_G.AutoFarmBones = bool
			AutoFarmBone = bool
			if bool == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			task.spawn(function()
				while wait() do
					pcall(function()
						if AutoFarmBone or _G.AutoFarmBoneForSythe then
							if Three_World then
								if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait(_G.Fast_Delay)
													_G.Bringmob = true
													FastAttackSpeed = true
													Equip(WeaponName)
													AutoHaki()
													_G.PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
												until not AutoFarmBone or _G.AutoFarmBoneForSythe or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
												_G.Bringmob = false
												FastAttackSpeed = false
											end
										end
									end
								else
									toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
							end
						end
					end)
				end
			end)
		end
	}



	local FishTail = section_Farm:Toggle {
		Name     = "AutoFarm FishTail",
		Flag     = "FarmFishTail",
		Default  = getgenv().AutoOpen.AutoFarmFishTail,
		Callback = function(bool)
			_G.AutoFarmFishTail = bool
			AutoFarmFish = bool
			if bool == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			task.spawn(function()
				while wait() do
					pcall(function()
						if AutoFarmFish then
							if Three_World then
								if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain [Lv. 1800]") or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Raider [Lv. 1775]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait(_G.Fast_Delay)
													_G.Bringmob = true
													FastAttackSpeed = true
													Equip(WeaponName)
													AutoHaki()
													_G.PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
												until not AutoFarmFish or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
												_G.Bringmob = false
												FastAttackSpeed = false
											end
										end
									end
								else
									toTarget(CFrame.new( -10993,332, -8940))
								end

							else

								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
							end
						end			
					end)
				end
			end)
		end
	}

	local DragonScale = section_Farm:Toggle {
		Name     = "AutoFarm Dragon Scale",
		Flag     = "FarmDragonScale",
		Default  = getgenv().AutoOpen.AutoFarmDragonScale,
		Callback = function(bool)
			_G.AutoFarmDragonScale = bool
			AutoFarmDragonScale = bool
			if bool == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			task.spawn(function()
				while wait() do
					pcall(function()
						if AutoFarmDragonScale then
							if Three_World then
								if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer [Lv. 1600]") or game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior [Lv. 1575]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Dragon Crew Warrior [Lv. 1575]" or v.Name == "Dragon Crew Archer [Lv. 1600]" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait(_G.Fast_Delay)
													_G.Bringmob = true
													FastAttackSpeed = true
													Equip(WeaponName)
													AutoHaki()
													_G.PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
												until not AutoFarmDragonScale or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
												_G.Bringmob = false
												FastAttackSpeed = false
											end
										end
									end
								else
									toTarget(CFrame.new(6594,383,139))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
							end

						end
					end)
				end
			end)

			-- กันรั่วง
			spawn(function()
				game:GetService("RunService").Heartbeat:Connect(function()
					if AutoFarmBone or AutoFarmDragonScale or AutoFarmFish or AutoFarmCandy then
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
							setfflag("HumanoidParallelRemoveNoPhysics", "False")
							setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
							game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
						end
					end
				end)	
			end)	

		end}

	local Tap_CakePrince = section_Farm:Separator("Cake Prince")

	local label_Kill_Cake = section_Farm:Label("Killed : ???")
	local label_Portal = section_Farm:Label("Portal : Close ")

	task.spawn(function()
		while task.wait(3) do
			pcall(function()
				if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
					label_Kill_Cake:Set("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
				elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
					label_Kill_Cake:Set("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
				elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
					label_Kill_Cake:Set("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
				else
					label_Portal:Set("Portal : Opened ")
				end
			end)
		end
	end)

	local toggle = section_Farm:Toggle {
		Name     = "Auto CakePrince",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			_G.AutoCakePrince = bool
			AutoCakePrince = bool
			if x == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			task.spawn(function()
				while wait() do
					if AutoCakePrince then
						game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
						if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if AutoCakePrince and v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait(_G.Fast_Delay)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												FastAttackSpeed = true
												AutoHaki()
												Equip(WeaponName)
												_G.PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
											end
										until not AutoCakePrince or not v.Parent or v.Humanoid.Health <= 0
										FastAttackSpeed = false
									end
								end
							else
								if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 2000 then
									FastAttackSpeed = false
									Questtween = toTarget(CFrame.new(-2151.82153, 149.315704, -12404.9053))
									if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then Questtween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
										wait(.1)
									end
								end 
							end
						else
							if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												FastAttackSpeed = true
												_G.Bringmob = true
												AutoHaki()
												Equip(WeaponName)
												_G.PosMon = v.HumanoidRootPart.CFrame
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
											end
										until not AutoCakePrince or not v.Parent or v.Humanoid.Health <= 0
										_G.Bringmob = false
										FastAttackSpeed = false
									end
								end
							else
								Questtween = toTarget(CFrame.new(-2077, 252, -12373))
								if (CFrame.new(-2077, 252, -12373).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Questtween then Questtween:Stop() end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
								end
							end
						end
					else
						toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
						break
					end
				end
			end)
		end
	}

	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			if AutoCakePrince then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
					setfflag("HumanoidParallelRemoveNoPhysics", "False")
					setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
				end
			end
		end)
	end)



	local Tap_Elite = section_Farm:Separator("Elite Hunter")

	local label_Kill_Elite = section_Farm:Label("Status : ???")
	local label_Stats_Elite = section_Farm:Label("Elite Process : ???")

	task.spawn(
		function()
			pcall(
				function()
					while wait() do
						label_Stats_Elite:Set("Elite Process : " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
					end
				end
			)
		end
	)

	spawn(function()
		while wait() do
			pcall(function()
				if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
					label_Kill_Elite:Set("Status  : Spawned ")    
				else
					label_Kill_Elite:Set("Status  : Not Spawned   ")    
				end
			end)
		end
	end)

	local toggle = section_Farm:Toggle {
		Name     = "Auto Elite Hunter",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			_G.AutoEliteHunter = bool
			AutoEliteHunter = bool
			task.spawn(function()
				while wait() do
					pcall(function()
						if AutoEliteHunter then
							if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
									for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
										if string.find(v.Name,"Diablo") then
											EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if EliteHunter then
													EliteHunter:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end	
										if string.find(v.Name,"Urban") then
											EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if EliteHunter then
													EliteHunter:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end	
										if string.find(v.Name,"Deandre") then
											EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if EliteHunter then
													EliteHunter:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end	
									end
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if AutoEliteHunter and string.find(v.Name,"Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
													Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													if Farmtween then
														Farmtween:Stop()
													end
													if AttackRandomType == 1 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
													elseif AttackRandomType == 2 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
													elseif AttackRandomType == 3 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
													elseif AttackRandomType == 4 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
													elseif AttackRandomType == 5 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
													else
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
													end
													FastAttackSpeed = true
													Equip(WeaponName)
												end 
											until not AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
											FastAttackSpeed = false
										end
										if AutoEliteHunter and string.find(v.Name,"Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
													Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													if Farmtween then
														Farmtween:Stop()
													end
													if AttackRandomType == 1 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
													elseif AttackRandomType == 2 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
													elseif AttackRandomType == 3 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
													elseif AttackRandomType == 4 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
													elseif AttackRandomType == 5 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
													else
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
													end
													FastAttackSpeed = true
													Equip(WeaponName)
												end 
											until not AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
											FastAttackSpeed = false
										end
										if AutoEliteHunter and string.find(v.Name,"Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
													Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													if Farmtween then
														Farmtween:Stop()
													end
													if AttackRandomType == 1 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
													elseif AttackRandomType == 2 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
													elseif AttackRandomType == 3 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
													elseif AttackRandomType == 4 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
													elseif AttackRandomType == 5 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
													else
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
													end
													FastAttackSpeed = true
													Equip(WeaponName)
												end 
											until not AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
											FastAttackSpeed = false
										end
									end
								else
									local string_1 = "EliteHunter";
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1);
								end
							else
								local string_1 = "EliteHunter";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end
					end)
				end
			end)
		end}




	local Tap_Bones = section_Farm:Separator("Bones")

	local Farm_Bones = section_Farm:Toggle {
		Name     = "AutoFarm Bones",
		Flag     = "FarmBones",
		Default  = getgenv().AutoOpen.AutoFarmBones,
		Callback = function(bool)
			_G.AutoFarmBones = bool
		end
	}

	local toggle = section_Farm:Toggle {
		Name     = "Auto Hoolow Scythe",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			_G.AutoHoolow = bool
			AutoHollow = bool
		end
	}

	spawn(function()
		while task.wait() do
			if AutoHollow then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if string.find(v.Name,"Soul Reaper [Lv. 2100] [Raid Boss]") then
								repeat task.wait()
									AutoHaki()
									FastAttackSpeed = true
									v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									toTarget(v.HumanoidRootPart.CFrame*CFrame.new(5,-50,-29))
									v.HumanoidRootPart.Transparency = 1
									sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
								until v.Humanoid.Health <= 0 or AutoHollow == false
							end
						end
					elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") and not game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
						repeat
							toTarget(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
						until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15                       
						Equip("Hallow Essence")
						if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
							toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,15,0))
						end
					end
				end)
			end
		end
	end)
	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			if AutoHollow then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
					setfflag("HumanoidParallelRemoveNoPhysics", "False")
					setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
				end
			end
		end)
	end)



	local toggle = section_Farm:Toggle {
		Name     = "Auto Random Surprise",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			_G.AutoSurprise = bool
			AutorandomBone = bool
			spawn(function()
				while wait(.1) do
					if AutorandomBone then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
					end
				end
			end)
		end
	}







	local dropdown_Weapon = Tap_Setting:Dropdown {
		Name = "Select Weapon",
		Default = "Melee",
		Scrollable = true,
		ScrollingMax = 5,
		Content = {
			"Melee",
			"Sword",
			"Devil Fruit",
		},
		Flag = "Weapon",
		Callback = function(option)
			_G.WeaponSelect = option
			SelectWeapon = option
		end
	}

	local toggle = Tap_Setting:Toggle {
		Name     = "Fast Attach",
		Flag     = "Stats",
		Default  = true,
		Callback = function(bool)
			_G.FastAttack = bool
		end
	}

	local toggle = Tap_Setting:Toggle {
		Name     = "Auto Attach",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			_G.AutoClick = bool
		end
	}

	local toggle_Bypass = Tap_Setting:Toggle {
		Name     = "Bypass Tp",
		Flag     = "Stats",
		Default  = true,
		Callback = function(bool)
			_G.BypassTp = bool
		end
	}

	local toggle = Tap_Setting:Toggle {
		Name     = "Fast Tween",
		Flag     = "Stats",
		Default  = true,
		Callback = function(bool)
			_G.FastTween = bool
		end
	}

	local toggle = Tap_Setting:Toggle {
		Name     = "Bringmob",
		Flag     = "Stats",
		Default  = true,
		Callback = function(bool)
			_G.Bringmob = bool
			Bringmob = bool
		end
	}

	local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
	local CombatFrameworkR = getupvalues(CombatFramework)[2]
	local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
	local RigControllerR = getupvalues(RigController)[2]

	function CurrentWeapon()
		local ac = CombatFrameworkR.activeController
		local ret = ac.blades[1]
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		pcall(function()
			while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
		end)
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		return ret
	end

	function getAllBladeHitsPlayers(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Characters = game:GetService("Workspace").Characters:GetChildren()
		for i=1,#Characters do local v = Characters[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end

	function getAllBladeHits(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Enemies = game:GetService("Workspace").Enemies:GetChildren()
		for i=1,#Enemies do local v = Enemies[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end

	function DamageAura()
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			for indexincrement = 1, 1 do
				local bladehit = getAllBladeHits(150) local a = getAllBladeHitsPlayers(150)
				if #bladehit or #a > 0 then
					local AcAttack8 = debug.getupvalue(ac.attack, 5)
					local AcAttack9 = debug.getupvalue(ac.attack, 6)
					local AcAttack7 = debug.getupvalue(ac.attack, 4)
					local AcAttack10 = debug.getupvalue(ac.attack, 7)
					local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
					local NumberAc13 = AcAttack7 * 798405
					(function()
						NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
						AcAttack8 = math.floor(NumberAc12 / AcAttack9)
						AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
					end)()
					AcAttack10 = AcAttack10 + 1
					debug.setupvalue(ac.attack, 5, AcAttack8)
					debug.setupvalue(ac.attack, 6, AcAttack9)
					debug.setupvalue(ac.attack, 4, AcAttack7)
					debug.setupvalue(ac.attack, 7, AcAttack10)
					for k, v in pairs(ac.animator.anims.basic) do
						v:Play(0.01,0.01,0.01)
					end                 
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
						game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "") 
					end
				end
			end
		end
	end

	function AttackFunction()
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			for indexincrement = 1, 1 do
				local bladehit = getAllBladeHits(60)
				if #bladehit > 0 then
					local AcAttack8 = debug.getupvalue(ac.attack, 5)
					local AcAttack9 = debug.getupvalue(ac.attack, 6)
					local AcAttack7 = debug.getupvalue(ac.attack, 4)
					local AcAttack10 = debug.getupvalue(ac.attack, 7)
					local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
					local NumberAc13 = AcAttack7 * 798405
					(function()
						NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
						AcAttack8 = math.floor(NumberAc12 / AcAttack9)
						AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
					end)()
					AcAttack10 = AcAttack10 + 1 
					debug.setupvalue(ac.attack, 5, AcAttack8)
					debug.setupvalue(ac.attack, 6, AcAttack9)
					debug.setupvalue(ac.attack, 4, AcAttack7)
					debug.setupvalue(ac.attack, 7, AcAttack10)
					for k, v in pairs(ac.animator.anims.basic) do
						v:Play(0.01,0.01,0.01)
					end                 
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
						game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "")
					end
				end
			end
		end
	end

	task.spawn(function()
		pcall(function()
			while _G.FastAttack do
				taks.wait(0.102)
				if FastAttackSpeed then
					AttackFunction()
					game:GetService'VirtualUser':CaptureController()
					game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
				end
			end
		end)
	end)

	local toggle = Tap_Stats:Toggle {
		Name     = "Auto Stats",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			_G.AutoStats_Epa = bool
		end
	}

	task.spawn(function()
		while wait() do
			pcall(function()
				if SelectWeapon == "Melee" then
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Melee" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								WeaponName = v.Name
							end
						end
					end
				elseif SelectWeapon == "Sword" then
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Sword" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								WeaponName = v.Name
							end
						end
					end
				elseif SelectWeapon == "Devil Fruit" then
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Blox Fruit" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								WeaponName = v.Name
							end
						end
					end
				else
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Melee" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								WeaponName = v.Name
							end
						end
					end
				end
			end)
		end
	end)

	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			if AutoFarm or AutoEliteHunter or AutoThirdWorld or AutoNewWorld then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
					setfflag("HumanoidParallelRemoveNoPhysics", "False")
					setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
				end
			end
		end)
	end)

	task.spawn(function()
		while true do wait()
			if setscriptable then
				setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
			end
			if sethiddenproperty then
				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
			end
		end
	end)






	Tap_Stats:Slider {
		Text = "UpStats Point : [value]",
		Default = 1,
		Min = 1,
		Max = 100,
		Float = 1,
		Flag = "Slider 1",
		Callback = function(value)
		end

	}

	local toggle = Tap_Stats:Toggle {
		Name     = "AutoStats Melee",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			_G.AutoStats_Melee = bool
		end
	}

	local toggle = Tap_Stats:Toggle {
		Name     = "AutoStats Defense",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			_G.AutoStats_Defense = bool
		end
	}

	local toggle = Tap_Stats:Toggle {
		Name     = "AutoStats Sword",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			_G.AutoStats_Sword = bool
		end
	}

	local toggle = Tap_Stats:Toggle {
		Name     = "AutoStats Gun",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			_G.AutoStats_Gun = bool
		end
	}

	local toggle = Tap_Stats:Toggle {
		Name     = "AutoStats Fruit",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			_G.AutoStats_Fruit = bool
		end
	}




	TISLAND = ""


	PlayerL:Dropdown{
		Default = "Mansion",
		Content = {
			"Port Town",
			"Hydra Island",
			"Green Tree",
			"Castle on the sea",
			"Mansion",
			"Haunted Castle",
			"Sea of Treats",
		},

		Flag = "Dropdown 1",
		Callback = function(option)
			TISLAND = option
		end
	}

	PlayerL:Button{
		Name = "Tpleport",
		Callback  = function()
			if TISLAND == "Port Town" then
				game:GetService("Workspace").Characters[playerName].Humanoid.Health = 0
				game:GetService("Workspace").Characters[playerName].HumanoidRootPart.CFrame = CFrame.new(-279.459, 6.75573, 5335.72)
				game:GetService("Workspace").Characters[playerName].Humanoid.Health = 0
			elseif TISLAND == "Hydra Island"  then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (5749.30811, 610.424011, -267.045441, 0.997274995, 3.9520863e-08, -0.073773928, -3.53658649e-08, 1, 5.7627016e-08, 0.073773928, -5.48609016e-08, 0.997274995)
			elseif TISLAND == "Green Tree" then    
				game:GetService("Workspace").Characters[playerName].Humanoid.Health = 0
				game:GetService("Workspace").Characters[playerName].HumanoidRootPart.CFrame = CFrame.new(2264.98, 26.7007, -6413.19)
				game:GetService("Workspace").Characters[playerName].Humanoid.Health = 0
			elseif TISLAND == "Castle on the sea" then     
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (-5068.98438, 314.515503, -3152.97607, -0.36831677, 9.04114061e-10, 0.929700375, 8.17542123e-09, 1, 2.26635466e-09, -0.929700375, 8.43542836e-09, -0.36831677)
			elseif TISLAND == "Mansion" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (-12469.9639, 374.914459, -7547.58105, 0.999514759, 0, -0.0311488044, -0, 1, -0, 0.0311488044, 0, 0.999514759)
			elseif TISLAND == "Haunted Castle" then
				game:GetService("Workspace").Characters[playerName].Humanoid.Health = 0
				game:GetService("Workspace").Characters[playerName].HumanoidRootPart.CFrame = CFrame.new(-9548.96, 141.453, 5535.09)
				game:GetService("Workspace").Characters[playerName].Humanoid.Health = 0
			elseif TISLAND == "Sea of Treats" then
				game:GetService("Workspace").Characters[playerName].Humanoid.Health = 0
				game:GetService("Workspace").Characters[playerName].HumanoidRootPart.CFrame = CFrame.new(-1062.17, 14.9555, -14179.1)
				game:GetService("Workspace").Characters[playerName].Humanoid.Health = 0
			end
		end
	}

	local SpeedBoat = PlayerL:Separator(" BoatSpeed multiply ")



	PlayerL:Slider{
		Text = " multiply : [value] ",
		Default = 1,
		Min = 0,
		Max = 5,
		Float = 0.5,
		Flag = "Slider 1",
		Callback = function(value)
			_G.BoatSped = value
		end
	}

	local toggle4 = PlayerL:Toggle{
		Name = " BoatSpeed multiply ",
		Flag = "Toggle 4",
		Default = false,
		Callback  = function(bool)
			pcall(function()
				if bool then
					local function Speed_Boat_multiply_Fake_Script()
						local Scirpt_Speed = Instance.new('LocalScript', Foder_SaveSpeedBoat)
						Scirpt_Speed.Name = "BoatSpeedUp"
						while wait() do
							for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
								v.VehicleSeat.BodyVelocity.Velocity = v.VehicleSeat.BodyVelocity.Velocity * _G.BoatSped
							end
						end
					end
					coroutine.wrap(Speed_Boat_multiply_Fake_Script)()
				else
					game:GetService("Workspace").SaveSpeedBoat.BoatSpeedUp:Destroy()
				end
			end)
		end
	}

	PlayerL:Button{
		Name = "Fix BoatSpeed ( multiply Bug ) ",
		Callback = function()
			if game:GetService("Workspace").SaveSpeedBoat.BoatSpeedUp then
				game:GetService("Workspace").SaveSpeedBoat.BoatSpeedUp:Destroy()
				wait()
				local function Speed_Boat_multiply_Fake_Script_Fix()
					local Scirpt_Speed = Instance.new('LocalScript', Foder_SaveSpeedBoat)
					Scirpt_Speed.Name = "BoatSpeedUp"
					while wait() do
						for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
							v.VehicleSeat.BodyVelocity.Velocity = v.VehicleSeat.BodyVelocity.Velocity * _G.BoatSped
						end
					end
				end
				coroutine.wrap(Speed_Boat_multiply_Fake_Script_Fix)()
			else
			end
		end
	}

	local Combat = PlayerL:Separator(" Combat ")

	local AimbotOF = PlayerL:Label(" Silent aim : OFF ")
	local NameLock = PlayerL:Label(" LockPlayer : ??? ")
	local HPplayer = PlayerL:Label(" Hp player : ??? ")

	FovAim = 50
	ColorAim = Color3.fromRGB(0, 0, 0)
	ShowFov = true
	_G.lockP = false
	_G.Opening_Silent = nil
	_G.Reset_Silent = nil
	_G.PL = ""
	_G.SpeedTP = 100


	PlayerL:Slider{
		Text = "Fov : [value]",
		Default = 50,
		Min = 10,
		Max = 500,
		Float = 1,
		Flag = "Slider 1",
		Callback = function(value)
			FovAim = value
		end
	}
	local togglepicker2 = PlayerL:ColorPicker{
		Name = " ColorAim ",
		Default = Color3.fromRGB(0, 255, 0), 
		Flag = "Toggle 1 Picker 2", 
		Callback = function(color)
			ColorAim = color
		end
	}

	local keybind = PlayerL:Keybind{
		Name = " Opening Silent aim ",
		Default = Enum.KeyCode.L,
		Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2},
		Flag = "Keybind 1",
		Callback = function(key, fromsetting)
			_G.Opening_Silent = key
			if fromsetting then
				print("Keybind 1 is now " .. tostring(key))
			else
				print("Keybind 1 was pressed")
			end
		end
	}

	local keybind = PlayerL:Keybind{
		Name = " Reset Silent aim ",
		Default = Enum.KeyCode.P,
		Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2},
		Flag = "Keybind 1",
		Callback = function(key, fromsetting)
			_G.Reset_Silent = key
		end
	}

	local toggle4 = PlayerL:Toggle{
		Name = " ShowFov ",
		Flag = "Toggle 4",
		Default = true,
		Callback  = function(bool)
			ShowFov = bool
		end
	}



	PlayerL:Button{

		Name = "Aimbot",
		Callback = function()

			local circle = Drawing.new("Circle")

			function updateCircle(Fov,colorCircle)
				if circle.__OBJECT_EXISTS then
					circle.Transparency = 1
					circle.Visible = true
					circle.Thickness = 2
					circle.Color = colorCircle
					circle.NumSides = 100
					circle.Radius = (Fov * 6) / 2
					circle.Filled = false
					circle.Position = Vector2.new(mouse.X, mouse.Y + (guiservice.GetGuiInset(guiservice).Y))
				end
			end

			spawn(function()
				game.GetService(game, "RunService").RenderStepped:Connect(function()
					pcall(function()
						updateCircle(getgenv().setting['Fov'],getgenv().setting['Color'])
					end)
				end)
			end)
			spawn(function()
				pcall(function()
					while wait() do
						for i, v in pairs(players.GetPlayers(players)) do
							if game.Workspace.Characters:FindFirstChild(v.Name) or game.Workspace.Characters:FindFirstChild(v.DisplayName) then
								if v.Character:FindFirstChild('HumanoidRootPart') then
									local pos = currentCamera.WorldToViewportPoint(currentCamera, v.Character.HumanoidRootPart.Position)
									local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
									if magnitude < (getgenv().setting['Fov'] * 6 -8) /2 then
										if magnitude < math.huge then
											if (v.Character.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
												if v.Name ~= game.Players.LocalPlayer.Name then
													if _G.lockP == true then
														Playersaimbot = v.Name
														PlayersPosition = v.Character.HumanoidRootPart.Position
														v.Character.HumanoidRootPart.Size = Vector3.new(10,10,10)
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end)
			end)


			spawn(function()
				game.GetService(game, "RunService").RenderStepped:Connect(function()
					if Playersaimbot ~= nil then 
						for i,v in pairs(game.Players:GetChildren()) do
							if v.Name == Playersaimbot then 
								if game.Workspace.Characters:FindFirstChild(v.Name) then
									NameLock:Set(" LockPlayer | "..v.Name)
									HPplayer:Set(" Hp player | "..math.floor(v.Character.Humanoid.Health).."/"..v.Character.Humanoid.MaxHealth)
								end
							end
						end
					end
				end)
			end)

			game:GetService("UserInputService").InputBegan:Connect(function(io, p)

				if io.KeyCode == getgenv().setting['LockPlayersBind'] then
					if _G.lockP then
						NameLock:Set(" LockPlayer | ??? ")
						HPplayer:Set(" Hp player | ??? ")
						AimbotOF:Set(" Silent aim | OFF ")
						Playersaimbot = nil
						PlayersPosition = nil

						_G.lockP = false
					else
						AimbotOF:Set(" Silent aim | ON ")
						_G.lockP = true
					end
				end

				if io.KeyCode == getgenv().setting['resetPlayersBind'] then
					Playersaimbot = nil
					PlayersPosition = nil
					NameLock:Set(" LockPlayer | ??? ")
					HPplayer:Set(" Hp player | ??? ")
				end
			end)

			spawn(function()
				while wait() do
					for i,v in pairs(game.Players:GetChildren()) do
						if v.Name == Playersaimbot then
							PlayersPosition = v.Character.HumanoidRootPart.Position
						end
					end
				end
			end)

			spawn(function()
				local gg = getrawmetatable(game)
				local old = gg.__namecall
				setreadonly(gg,false)
				gg.__namecall = newcclosure(function(...)
					local method = getnamecallmethod()
					local args = {...}
					if tostring(method) == "FireServer" then
						if tostring(args[1]) == "RemoteEvent" then
							if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
								if Playersaimbot ~= nil then
									args[2] = PlayersPosition
									return old(unpack(args))
								end
							end
						end
					end
					return old(...)
				end)
			end)
			mouse.Button1Down:Connect(function()
				pcall(function()
					if Playersaimbot ~= nil then
						local args = {
							[1] = PlayersPosition,
							[2] = game:GetService("Players"):FindFirstChild(Playersaimbot).Character.HumanoidRootPart
						}
						game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteFunctionShoot:InvokeServer(unpack(args))
					end
				end)
			end)



			while wait() do
				if not ShowFov then
					getgenv().setting = {
						Fov = -1,
						Color = ColorAim,
						LockPlayers = _G.lockP,
						LockPlayersBind = _G.Opening_Silent,
						resetPlayersBind = _G.Reset_Silent,
					}
				else
					getgenv().setting = {
						Fov = FovAim,
						Color = ColorAim,
						LockPlayers = _G.lockP,
						LockPlayersBind = _G.Opening_Silent,
						resetPlayersBind = _G.Reset_Silent,
					}
				end
			end
		end

	}




	local Graphic = PlayerL:Separator(" Graphic ")

	local toggle = PlayerL:Toggle {
		Name     = "Lock Fps",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			if bool then
				setfpscap(60)
			else
				setfpscap(120)
			end

		end
	}


	local toggle = PlayerL:Toggle {
		Name     = "Boost FPS Windows",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			if bool then
				RunService:Set3dRenderingEnabled(false)
				setfpscap(120)
				return
			else
				RunService:Set3dRenderingEnabled(true)
				setfpscap(360)
				return
			end
		end
	}

	local toggle = PlayerL:Toggle {
		Name     = "White Screen",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			if bool then
				RunService:Set3dRenderingEnabled(false)
				setfpscap(30)
			else
				RunService:Set3dRenderingEnabled(true)
				setfpscap(120)
			end

		end
	}

	PlayerL:Button{
		Name = "Fast Mode",
		Callback  = function()

			local function FOV()
				if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("CameraPositioner") then 
					game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("CameraPositioner"):Destroy()
				end

				for _,v in pairs(workspace:GetDescendants()) do 
					if v:IsA("ParticleEmitter") then 
						v:Destroy()
					end 
					if v:IsA("Decal") then v:Destroy() end 
					if v:IsA("BasePart") then v.Material = Enum.Material.SmoothPlastic end  
				end 
			end 

			FOV() 

		end
	}

	function InMyNetWork(object)
		if isnetworkowner then
			return isnetworkowner(object)
		else
			if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 450 then 
				return true
			end
			return false
		end
	end

	local function inmyself(name)
		return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name);
	end

	task.spawn(function()
		while task.wait() do
			pcall(function()
				if _G.Bringmob then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 650 then
							if InMyNetWork(v.HumanoidRootPart) then
								v.HumanoidRootPart.CFrame = _G.PosMon
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
							end
						end
					end
				end
			end)
		end
	end)

	-- [No Stun]
	task.spawn(function()
		if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
			game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
				pcall(function()
					if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
						game.Players.LocalPlayer.Character.Stun.Value = 0
					end
				end)
			end)
		end
	end)

	local Initialize = function()
		UserInputService.WindowFocusReleased:Connect(WindowFocusReleasedFunction)
		UserInputService.WindowFocused:Connect(WindowFocusedFunction)
		return
	end
	Initialize()


	local toggle = Tap_FakeRace:Toggle {
		Name     = "Mink ( Agility )",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			if bool then
				local Agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
				Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			else

				pcall(function ()
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Agility"]:destroy()
				end)
			end
		end
	}

	local toggle = Tap_FakeRace:Toggle {
		Name     = "Fish ( Water_Body )",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			if bool then
				local Water_Body = game:GetService("ReplicatedStorage").FX["Water Body"]:Clone()
				Water_Body.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			else
				pcall(function ()
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Water Body"]:destroy()
				end)
			end
		end
	}


	local toggle = Tap_FakeRace:Toggle {
		Name     = "Sky ( Heavenly_Blood )",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			if bool then
				local Heavenly_Blood = game:GetService("ReplicatedStorage").FX["Heavenly Blood"]:Clone()
				Heavenly_Blood.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			else
				pcall(function ()
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Heavenly Blood"]:destroy()
				end)
			end
		end
	}

	local toggle = Tap_FakeRace:Toggle {
		Name     = "Cyborg ( Energy_Core )",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			if bool then
				local Energy_Core = game:GetService("ReplicatedStorage").FX["Energy Core"]:Clone()
				Energy_Core.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			else
				pcall(function ()
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Energy Core"]:destroy()
				end)
			end
		end}

	local toggle = Tap_FakeRace:Toggle {
		Name     = "Ghoul ( Heightened_Senses )",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			if bool then
				local Heightened_Senses = game:GetService("ReplicatedStorage").FX["Heightened Senses"]:Clone()
				Heightened_Senses.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			else
				pcall(function ()
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Heightened Senses"]:destroy()
				end)
			end
		end
	}

	local toggle = Tap_FakeRace:Toggle {
		Name     = "Human ( Last_Resort )",
		Flag     = "Stats",
		Default  = false,
		Callback = function(bool)
			if bool then
				local Last_Resort = game:GetService("ReplicatedStorage").FX["Last Resort"]:Clone()
				Last_Resort.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			else
				pcall(function ()
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Last Resort"]:destroy()
				end)
			end
		end
	}

	local Combat2 = Tap_FakeRace:Separator(" Teleport Ctrl ")


	local toggle4 = Tap_FakeRace:Toggle{
		Name = " Ctrl Tp ",
		Flag = "Toggle 4",
		Default = true,
		Callback  = function(bool)
			getgenv().Enabled = bool
			local bodyvelocityenabled = true

			local UIS = game:GetService("UserInputService")
			local Plr = game.Players.LocalPlayer
			local Mouse = Plr:GetMouse()

			function To(position)
				local Chr = Plr.Character
				if Chr ~= nil then
					local ts = game:GetService("TweenService")
					local char = game.Players.LocalPlayer.Character
					local hm = char.HumanoidRootPart
					local dist = (hm.Position - Mouse.Hit.p).magnitude
					local tweenspeed = dist/tonumber(_G.SpeedTP)
					local ti = TweenInfo.new(tonumber(tweenspeed), Enum.EasingStyle.Linear)
					local tp = {CFrame = CFrame.new(position)}
					ts:Create(hm, ti, tp):Play()
					if bodyvelocityenabled == true then
						local bv = Instance.new("BodyVelocity")
						bv.Parent = hm
						bv.MaxForce = Vector3.new(100000,100000,100000)
						bv.Velocity = Vector3.new(0,0,0)
						wait(tonumber(tweenspeed))
						bv:Destroy()
					end
				end
			end


			UIS.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and Enabled then
					To(Mouse.Hit.p)
				end
			end)
		end
	}

	local SpeedTP = Tap_FakeRace:Slider{
		Text = "Speed Tp [value]",
		Default = 100000,
		Min = 100,
		Max = 100000,
		Float = 1,
		Flag = "Slider 1",
		Callback = function(value)
			_G.SpeedTP = value
		end
	}

	Tap_FakeRace:Button{
		Name = "Add Speed + 10",
		Callback  = function()
			SpeedTP:Set(_G.SpeedTP + 10)
		end
	}

	Tap_FakeRace:Button{
		Name = "Add Speed - 10",
		Callback  = function()
			SpeedTP:Set(_G.SpeedTP - 10)
		end
	}

	Tap_FakeRace:Button{
		Name = "SetTp 1 S ( 100K Speed )",
		Callback  = function()
			SpeedTP:Set(100000)
		end
	}

	local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()

	Tap_Server:Button{
		Name = "Rejoin",
		Callback  = function()
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, game.jobId, game.Players.LocalPlayer)  
		end}

	Tap_Server:Button{
		Name = "HopServer",
		Callback  = function()
			module:Teleport(game.PlaceId)
		end}

	Tap_Jobid:Button{
		Name = ""..game.JobId,
		Callback  = function()
			setclipboard(game.jobId)
		end 
	}

	Tap_Jobid:Button{
		Name = "Join With Jobid ( Gui TextBox lib Bug ) ",
		Callback  = function()
			loadstring(game:HttpGet("https://pastebin.com/raw/RVUvj7gS"))()
		end
	} 


	local Raids_AUTO = Raids_Tap:Section {
		Name = "Auto Raids",
		Side = "Left"
	}

	Raids_AUTO:Dropdown{
		Name = "Select Radis",
		Default = "Flame",
		Content = {
			"Flame",
			"Ice",
			"Quake",
			"Light",
			"Dark",
			"String", 
			"Rumble",
			"Magma",
			"Buddha",
			"Sand",
			"Phoenix",
			"Dough"
		},
		Flag = "Scrolling Dropdown 1",
		Callback = function(option)
			_G.SelectDun = option
			SelectRaid = option
		end
	}	

	local toggle4 = Raids_AUTO:Toggle{
		Name = "Auto Raids",
		Flag = "Toggle 4",
		--Default = true,
		Callback  = function(value)
			_G.AutoRaids = value
			AutoStartRaid = value
			NextIsland = value
			KillAura = value
			if value == false then
				wait()
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait()
			end
		end	
	}

	task.spawn(function()
		while wait() do
			if AutoStartRaid then
				_G.BypassTp = false
				toggle_Bypass:Toggle(false)
			end	
		end
	end)	

	local toggle4 = Raids_AUTO:Toggle{
		Name = "Auto Buy Microchip { Start Raid }",
		Flag = "Toggle 4",
		--Default = true,
		Callback  = function(bool)
			_G.AutoMicrochip = bool
		end
	}

	local toggle4 = Raids_AUTO:Toggle{
		Name = "Auto Awake	",
		Flag = "Toggle 4",
		--Default = true,
		Callback  = function(bool)
			_G.AutoAwake = bool
			AutoAwake = bool
			task.spawn(function()
				while wait() do
					if AutoStartRaid and not AutoFarm then
						_G.BypassTp = false
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
								if New_World then
									fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
								elseif Three_World then
									fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
								end
								wait(17)
							elseif game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then				
								pcall(function()
									repeat wait()
										if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then

										elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
											game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.z)
											if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
												Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame)
											elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
												if Farmtween then
													Farmtween:Stop()
												end
												toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(4,65,10))
											end
										elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
											game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.z)
											if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
												Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame)
											elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
												if Farmtween then
													Farmtween:Stop()
												end
												toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(4,65,10))
											end
										elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
											game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.z)
											if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
												Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame)
											elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
												if Farmtween then
													Farmtween:Stop()
												end
												toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(4,65,10))
											end
										elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
											game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.z)
											if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
												Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame)
											elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
												if Farmtween then
													Farmtween:Stop()
												end
												toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(4,65,10))
											end
										elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
											game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.z)
											if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
												Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame)
											elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
												if Farmtween then
													Farmtween:Stop()
												end
												toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(4,65,10))
											end
										end
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if AutoStartRaid and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
												repeat wait()
													v.Humanoid.Health = 0
													v:BreakJoints()
												until not AutoStartRaid or v.Humanoid.Health <= 0 or not v.Parent
											end
										end
										if AutoAwake then	
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
										end
									until not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") or game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false
									if AutoAwake then	
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
									end
								end)
							end           
						else
							if AutoAwake then	
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
							end

							if _G.AutoMicrochip then
								local args = {
									[1] = "RaidsNpc",
									[2] = "Select",
									[3] = tostring(SelectRaid)
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end	

						end
					else
						_G.BypassTp = true
					end
				end
			end)
		end}


	local Tap_Elite = Raids_AUTO:Separator("Mmanual")

	local toggle4 = Raids_AUTO:Toggle{
		Name = "Kill Aura",
		Flag = "Toggle 4",
		Default = false,
		Callback  = function(bool)
			_G.Kill_Aura = bool
			KillAura = bool
		end
	}

	spawn(function()
		while wait() do
			if KillAura then
				for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						pcall(function()
							repeat wait()
								v.Humanoid.Health = 0
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v.HumanoidRootPart.Transparency = 0.8
							until not KillAura or not AutoStartRaid or not v.Parent or v.Humanoid.Health <= 0
						end)
					end
				end
			end
		end
	end)

	Raids_AUTO:Button{
		Name = "NextIsland",
		Callback  = function()
			Nextland()
		end
	}


	spawn(function()
		pcall(function()
			while wait() do
				if NextIsland then
					wait(10)
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true and game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
							toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(4,65,10))
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
							toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(4,65,10))
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
							toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(4,65,10))
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
							toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(4,65,10))
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
							toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(4,65,10))
						end
					elseif New_World then
						toTarget(CFrame.new(-6438.73535, 250.645355, -4501.50684))
					elseif Three_World then
						toTarget(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
					end
				end
			end
		end)
	end)

	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			if NextIsland or AutoStartRaid then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
					setfflag("HumanoidParallelRemoveNoPhysics", "False")
					setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
				end
			end
		end)
	end)

	local Tap_Elite = Raids_AUTO:Separator("Tpleport")

	if Three_World then
		Raids_AUTO:Button{
			Name = "Teleport To Lab",
			Callback  = function()
				TPLAD()
			end
		}
	end

	Raids_AUTO:Button{
		Name = "Teleport To Awakening Room",
		Callback  = function()
			TPAwaen()
		end
	}

	Tap_Fruit:Toggle{
		Name = "Auto Random Fruit",

		Flag = "Toggle 4",
		Default = false,
		Callback  = function(bool)
			_G.Auto_Random_Fruit = bool
		end
	}


	Tap_Fruit:Toggle{
		Name = "Auto Store Fruits",
		Flag = "Toggle 4",
		Default = false,
		Callback  = function(bool)
			_G.Auto_Store_Fruits = bool
		end
	}

	local Fruits_Sniper = Tap_Fruit:Separator(" Fruits Sniper ")

	local dropdown = Tap_Fruit:Dropdown{
		Name = "Fruits Sniper",
		Default = "Bomb-Bomb",
		Content = {
			"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon"
		},
		Flag = "Dropdown 1",
		Callback = function(option)
			_G.AutoSniperFrit = option
		end
	}

	Tap_Fruit:Toggle{
		Name = "Auto Buy Devil Fruits Sniper",
		Flag = "Toggle 4",
		Default = false,
		Callback  = function(bool)
			_G.Fruits_Sniper = bool
		end
	}


	Tap_Fruit:Toggle{
		Name = "Auto Eat Fruit",
		Flag = "Toggle 4",
		Default = false,
		Callback  = function(bool)
			_G.AutoEat_Fuit = bool
		end
	}

	Tap_Melee:Button{
		Name = "DragonTalon",
		Callback  = function()
			local args = {
				[1] = "BuyDragonTalon"
			}


			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	}

	Tap_Melee:Button{
		Name = "ElectricClaw",
		Callback  = function()
			local args = {
				[1] = "BuyElectricClaw"
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))		
		end
	}

	Tap_Melee:Button{
		Name = "BuyGodhuman",
		Callback  = function()
			local args = {
				[1] = "Godhuman",
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	}

	Tap_Melee:Button{
		Name = "ShrkmanKarate",
		Callback  = function()
			local args = {
				[1] = "BuySharkmanKarate",
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	}

	Tap_Melee:Button{
		Name = "DeathStep",
		Callback  = function()
			local args = {
				[1] = "BuyDeathStep",
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	}
	Tap_Melee:Button{
		Name = "Superhuman",
		Callback  = function()
			local args = {
				[1] = "BuySuperhuman"
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end}

	Tap_Melee:Button{
		Name = "----- Random -----",
		Callback  = function()
			local args = {
				[1] = "BuySuperhuman"
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end}

	Tap_Melee:Button{
		Name = " Random Melee ",
		Callback  = function()
			_G.RandomMeleeNumber = math.random(1,6)

			if _G.RandomMeleeNumber == 1 then
				local args = {
					[1] = "BuyDragonTalon"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif _G.RandomMeleeNumber == 2 then
				local args = {
					[1] = "BuyElectricClaw"
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif _G.RandomMeleeNumber == 3 then
				local args = {
					[1] = "BuyGodhuman",
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif _G.RandomMeleeNumber == 4 then		
				local args = {
					[1] = "BuySharkmanKarate",
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif _G.RandomMeleeNumber == 5 then	
				local args = {
					[1] = "BuyDeathStep",
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif _G.RandomMeleeNumber == 6 then
				local args = {
					[1] = "BuySuperhuman"
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
		end}

	Tap_Swor:Button{
		Name = "Shisui",
		Callback  = function()
			local args = {
				[1] = "LoadItem",
				[2] = "Shisui"
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end}


	Tap_Swor:Button{
		Name = "Cursed Dual Katana",
		Callback  = function()
			local args = {
				[1] = "LoadItem",
				[2] = "Cursed Dual Katana"
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end}

	Tap_Swor:Button{
		Name = "Hallow Scythe",
		Callback  = function()
			local args = {
				[1] = "LoadItem",
				[2] = "Hallow Scythe"
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end}

	Tap_Swor:Button{
		Name = "Midnight Blade",
		Callback  = function()
			local args = {
				[1] = "LoadItem",
				[2] = "Midnight Blade"
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end}

	Tap_Swor:Button{
		Name = "Saber",
		Callback  = function()
			local args = {
				[1] = "LoadItem",
				[2] = "Saber"
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end}

	Tap_Swor:Button{
		Name = "Saddi",
		Callback  = function()
			local args = {
				[1] = "LoadItem",
				[2] = "Saddi"
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end}

	Tap_Swor:Button{
		Name = "Wando",
		Callback  = function()
			local args = {
				[1] = "LoadItem",
				[2] = "Wando"
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end}

	Tap_Swor:Button{
		Name = "----- Random -----",
		Callback  = function()
			local args = {
				[1] = "BuySuperhuman"
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end}

	Tap_Swor:Button{ -- _G.RandomSwordNumber
		Name = " Random Sword ",
		Callback  = function()
			_G.RandomSwordNumber = math.random(1,8)
			if _G.RandomSwordNumber == 1 then
				local args = {
					[1] = "LoadItem",
					[2] = "Shisui"
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif _G.RandomSwordNumber == 2 then
				local args = {
					[1] = "LoadItem",
					[2] = "Cursed Dual Katana"
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif _G.RandomSwordNumber == 3 then
				local args = {
					[1] = "LoadItem",
					[2] = "Buddy Sword"
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif _G.RandomSwordNumber == 4 then
				local args = {
					[1] = "LoadItem",
					[2] = "Hallow Scythe"
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif _G.RandomSwordNumber == 5 then
				local args = {
					[1] = "LoadItem",
					[2] = "Midnight Blade"
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif _G.RandomSwordNumber == 6 then
				local args = {
					[1] = "LoadItem",
					[2] = "Saber"
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif _G.RandomSwordNumber == 7 then
				local args = {
					[1] = "LoadItem",
					[2] = "Saddi"
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif _G.RandomSwordNumber == 8 then
				local args = {
					[1] = "LoadItem",
					[2] = "Wando"
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


			end
		end}

	task.spawn(function() -- _G.WeaponSelect
		while wait() do
			pcall(function()
				if _G.WeaponSelect == "Melee" then
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Melee" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								WeaponName = v.Name
							end
						end
					end
				elseif _G.WeaponSelect == "Sword" then
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Sword" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								WeaponName = v.Name
							end
						end
					end
				elseif _G.WeaponSelect == "Devil Fruit" then
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Blox Fruit" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								WeaponName = v.Name
							end
						end
					end
				else
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Melee" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								WeaponName = v.Name
							end
						end
					end
				end
			end)
		end
	end)




	function TPAwaen() --TPAwaen
		pcall(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (-12469.9639, 374.914459, -7547.58105, 0.999514759, 0, -0.0311488044, -0, 1, -0, 0.0311488044, 0, 0.999514759)
			wait(1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (-12138.3965, 422.109131, -7568.45996, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
			wait(1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (-11921.2109, 387.615479, -7776.21387, -1, 0, 0, 0, 1, 0, 0, 0, -1)
			wait(1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (-11560.1738, 48.4202614, -7600.34521, -1, 0, 0, 0, 1, 0, 0, 0, -1)
		end)
	end

	spawn(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			pcall(function()
				if _G.AutoClick then
					game:GetService'VirtualUser':CaptureController()
					game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
				end
			end)
		end) 
	end)


	function Nextland() --TPLAD
		pcall(function()
			if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true and game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(4,65,10))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(4,65,10))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(4,65,10))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(4,65,10))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(4,65,10))
				end
			elseif New_World then
				toTarget(CFrame.new(-6438.73535, 250.645355, -4501.50684))
			elseif Three_World then
				toTarget(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
			end
		end)
	end

	function TPLAD() --TPLAD
		pcall(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (-5068.98438, 314.515503, -3152.97607, -0.36831677, 9.04114061e-10, 0.929700375, 8.17542123e-09, 1, 2.26635466e-09, -0.929700375, 8.43542836e-09, -0.36831677)
			wait(0.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (-5013.20654, 313.929443, -2813.90698, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396)
		end)
	end

	task.spawn(function() -- _G.Auto_Random_Fruit
		if _G.Auto_Random_Fruit then
			while _G.Auto_Random_Fruit do
				task.wait(2)
				local args = {
					[1] = "Cousin",
					[2] = "Buy"
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
		else
			_G.Auto_Random_Fruit = false
		end
	end)

	pcall(function() -- _G.FastAttack
		coroutine.wrap(function()
			local StopCamera = require(game.ReplicatedStorage.Util.CameraShaker)
			StopCamera:Stop()
			for v,v in pairs(getreg()) do
				if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
					for v,v in pairs(debug.getupvalues(v)) do
						if typeof(v) == "table" then
							spawn(function()
								game:GetService("RunService").RenderStepped:Connect(function()
									if _G.FastAttack then
										pcall(function()
											v.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
											v.activeController.attacking = false
											v.activeController.increment = 4
											v.activeController.blocking = false   
											v.activeController.hitboxMagnitude = 100
											v.activeController.humanoid.AutoRotate = true
											v.activeController.focusStart = 0
											v.activeController.currentAttackTrack = 0
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRaxNerous", math.huge)
										end)
									end
								end)
							end)
						end
					end
				end
			end
		end)()
	end)


	task.spawn(function() --_G.Auto_Store_Fruits
		if _G.Auto_Store_Fruits  then
			while _G.Auto_Store_Fruits  do
				task.wait(2)
				pcall(function() 
					if _G.Auto_Store_Fruits then
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
							Equip('Bomb Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Character["Bomb Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
							Equip('Spike Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Character["Spike Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
							Equip('Chop Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Character["Chop Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
							Equip('Spring Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Character["Spring Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
							Equip('Kilo Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo",game:GetService("Players").LocalPlayer.Character["Kilo Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
							Equip('Smoke Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Character["Smoke Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
							Equip('Spin Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Character["Spin Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
							Equip('Flame Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Character["Flame Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
							Equip('Bird: Falcon Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Character["Bird: Falcon Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
							Equip('Ice Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Character["Ice Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
							Equip('Sand Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Character["Sand Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
							Equip('Dark Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Character["Dark Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
							Equip('Revive Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Revive",game:GetService("Players").LocalPlayer.Character["Revive Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
							Equip('Diamond Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Character["Diamond Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
							Equip('Light Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Character["Light Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
							Equip('Love Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Character["Love Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
							Equip('Rubber Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Character["Rubber Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
							Equip('Barrier Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Character["Barrier Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
							Equip('Magma Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Character["Magma Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
							Equip('Quake Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Character["Quake Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
							Equip('Human-Human: Buddha Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Character["Human-Human: Buddha Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
							Equip('String Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String",game:GetService("Players").LocalPlayer.Character["String Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
							Equip('Bird: Phoenix Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Character["Bird: Phoenix Fruit"])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
							Equip('Rumble Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Character[("Rumble Fruit")])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
							Equip('Paw Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw",game:GetService("Players").LocalPlayer.Character[("Paw Fruit")])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
							Equip('Gravity Fruit')
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Character[("Gravity Fruit")])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
							Equip("Dough Fruit")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Character[("Dough Fruit")])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
							Equip("Shadow Fruit")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Character[("Shadow Fruit")])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
							Equip("Venom Fruit")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Character[("Venom Fruit")])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
							Equip("Control Fruit")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Character[("Control Fruit")])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
							Equip("Dragon Fruit")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Character[("Dragon Fruit")])
							wait(1)
						end
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit") then
							Equip("Spirit Fruit")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spirit-Spirit",game:GetService("Players").LocalPlayer.Character[("Spirit Fruit")])
							wait(1)
						end
						if  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit") then
							Equip("Portal Fruit")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Portal-Portal",game:GetService("Players").LocalPlayer.Character[("Portal Fruit")])
							wait(1)
						end
						if  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blizzard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blizzard Fruit") then
							Equip("Blizzard Fruit")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Blizzard-Blizzard",game:GetService("Players").LocalPlayer.Character[("Blizzard Fruit")])
							wait(1)
						end
					end
				end)
			end
		else
			_G.Auto_Random_Fruit = false
		end
	end)


	task.spawn(function() -- watermark
		pcall(function()
			while task.wait() do
				local Fps = math.floor(workspace:GetRealPhysicsFPS())
				local dgt = math.floor(workspace.DistributedGameTime + 0.27322)
				local hr = math.floor(dgt / (60 ^ 2)) % 24
				local min = math.floor(dgt / (60 ^ 1)) % 60
				local sec = math.floor(dgt / (60 ^ 0)) % 60
				watermark:Set("Manake Hub Premium script | " .. Fps .."fps | " .. hr .. " Hour(hr) " .. min .. " Minute(m) " .. sec .. " Second(s)")
			end
		end)
	end)



	task.spawn(function() -- _G.AutoStats_Epa
		pcall(function()
			while task.wait() do
				if _G.AutoStats_Epa then
					if _G.AutoStats_Melee then
						local args = {
							[1] = "AddPoint",
							[2] = "Melee",
							[3] = tonumber(_G.StatsPoint)
						}

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					elseif _G.AutoStats_Defense then
						-- Script generated by SimpleSpy - credits to exx#9394

						local args = {
							[1] = "AddPoint",
							[2] = "Defense",
							[3] = tonumber(_G.StatsPoint)
						}

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					elseif _G.AutoStats_Sword then
						local args = {
							[1] = "AddPoint",
							[2] = "Sword",
							[3] = tonumber(_G.StatsPoint)
						}

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					elseif _G.AutoStats_Gun then
						local args = {
							[1] = "AddPoint",
							[2] = "Gun",
							[3] = tonumber(_G.StatsPoint)
						}

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					elseif _G.AutoStats_Fruit then
						local args = {
							[1] = "AddPoint",
							[2] = "Demon Fruit",
							[3] = tonumber(_G.StatsPoint)
						}

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
				end
			end
		end)
	end)

	task.spawn(
		function()
			while task.wait() do
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1 then
					DeathStep = true
				else
					DeathStep = false
				end
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1 then
					SharkmanKarate = true
				else
					SharkmanKarate = false
				end
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1 then
					ElectricClaw = true
				else
					ElectricClaw = false
				end
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
					DragonTalon = true
				else
					DragonTalon = false
				end
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodHuman", true) == 1 then
					GodHuman = true
				else
					GodHuman = false
				end
			end
		end
	)


	task.spawn(
		function()
			while task.wait() do
				pcall(
					function()
						for i, v in pairs(
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
							) do
							if v.Name == "Saber" then
								Saber = true
							else
								Saber = false
							end
							if v.Name == "Rengoku" then
								Rengoku = true
							else
								Rengoku = true
							end
							if v.Name == "Midnight Blade" then
								MidnightBlade = true
							else
								MidnightBlade = false
							end
							if v.Name == "Dragon Trident" then
								DragonTrident = true
							else
								DragonTrident = false
							end
							if v.Name == "Yama" then
								Yama = true
							else
								Yama = false
							end
							if v.Name == "Buddy Sword" then
								BuddySword = true
							else
								BuddySword = false
							end
							if v.Name == "Canvander" then
								Canvander = true
							else
								Canvander = false
							end
							if v.Name == "Twin Hooks" then
								TwinHooks = true
							else
								TwinHooks = false
							end
							if v.Name == "Spikey Trident" then
								SpikeyTrident = true
							else
								SpikeyTrident = false
							end
							if v.Name == "Hallow Scythe" then
								HallowScythe = true
							else
								HallowScythe = false
							end
							if v.Name == "Dark Dagger" then
								DarkDagger = true
							else
								DarkDagger = false
							end
							if v.Name == "Tushita" then
								Tushita = true
							else
								Tushita = false
							end
						end
					end
				)
			end
		end
	)





	-- Theme ไม่ต้องยุ่ง Error กูแก้ไม่เป็น

	local configs = main:Tab("Configuration")

	local themes = configs:Section { Name = "Theme", Side = "Left" }

	local themepickers = {}

	local themelist = themes:Dropdown {
		Name = "Theme",
		Default = library.currenttheme,
		Content = library:GetThemes(),
		Flag = "Theme Dropdown",
		Callback = function(option)
			if option then
				library:SetTheme(option)

				for option, picker in next, themepickers do
					picker:Set(library.theme[option])
				end
			end
		end
	}

	library:ConfigIgnore("Theme Dropdown")

	local namebox = themes:Box {
		Name = "Custom Theme Name",
		Placeholder = "Custom Theme",
		Flag = "Custom Theme"
	}

	library:ConfigIgnore("Custom Theme")

	themes:Button {
		Name = "Save Custom Theme",
		Callback = function()
			if library:SaveCustomTheme(library.flags["Custom Theme"]) then
				themelist:Refresh(library:GetThemes())
				themelist:Set(library.flags["Custom Theme"])
				namebox:Set("")
			end
		end
	}

	local customtheme = configs:Section { Name = "Custom Theme", Side = "Right" }

	themepickers["Accent"] = customtheme:ColorPicker {
		Name = "Accent",
		Default = library.theme["Accent"],
		Flag = "Accent",
		Callback = function(color)
			library:ChangeThemeOption("Accent", color)
		end
	}


	library:ConfigIgnore("Accent")

	themepickers["Window Background"] = customtheme:ColorPicker {
		Name = "Window Background",
		Default = library.theme["Window Background"],
		Flag = "Window Background",
		Callback = function(color)
			library:ChangeThemeOption("Window Background", color)
		end
	}

	library:ConfigIgnore("Window Background")

	themepickers["Window Border"] = customtheme:ColorPicker {
		Name = "Window Border",
		Default = library.theme["Window Border"],
		Flag = "Window Border",
		Callback = function(color)
			library:ChangeThemeOption("Window Border", color)
		end
	}

	library:ConfigIgnore("Window Border")

	themepickers["Tab Background"] = customtheme:ColorPicker {
		Name = "Tab Background",
		Default = library.theme["Tab Background"],
		Flag = "Tab Background",
		Callback = function(color)
			library:ChangeThemeOption("Tab Background", color)
		end
	}

	library:ConfigIgnore("Tab Background")

	themepickers["Tab Border"] = customtheme:ColorPicker {
		Name = "Tab Border",
		Default = library.theme["Tab Border"],
		Flag = "Tab Border",
		Callback = function(color)
			library:ChangeThemeOption("Tab Border", color)
		end
	}

	library:ConfigIgnore("Tab Border")

	themepickers["Tab Toggle Background"] = customtheme:ColorPicker {
		Name = "Tab Toggle Background",
		Default = library.theme["Tab Toggle Background"],
		Flag = "Tab Toggle Background",
		Callback = function(color)
			library:ChangeThemeOption("Tab Toggle Background", color)
		end
	}

	library:ConfigIgnore("Tab Toggle Background")

	themepickers["Section Background"] = customtheme:ColorPicker {
		Name = "Section Background",
		Default = library.theme["Section Background"],
		Flag = "Section Background",
		Callback = function(color)
			library:ChangeThemeOption("Section Background", color)
		end
	}

	library:ConfigIgnore("Section Background")

	themepickers["Section Border"] = customtheme:ColorPicker {
		Name = "Section Border",
		Default = library.theme["Section Border"],
		Flag = "Section Border",
		Callback = function(color)
			library:ChangeThemeOption("Section Border", color)
		end
	}

	library:ConfigIgnore("Section Border")

	themepickers["Text"] = customtheme:ColorPicker {
		Name = "Text",
		Default = library.theme["Text"],
		Flag = "Text",
		Callback = function(color)
			library:ChangeThemeOption("Text", color)
		end
	}

	library:ConfigIgnore("Text")

	themepickers["Disabled Text"] = customtheme:ColorPicker {
		Name = "Disabled Text",
		Default = library.theme["Disabled Text"],
		Flag = "Disabled Text",
		Callback = function(color)
			library:ChangeThemeOption("Disabled Text", color)
		end
	}

	library:ConfigIgnore("Disabled Text")

	themepickers["Object Background"] = customtheme:ColorPicker {
		Name = "Object Background",
		Default = library.theme["Object Background"],
		Flag = "Object Background",
		Callback = function(color)
			library:ChangeThemeOption("Object Background", color)
		end
	}

	library:ConfigIgnore("Object Background")

	themepickers["Object Border"] = customtheme:ColorPicker {
		Name = "Object Border",
		Default = library.theme["Object Border"],
		Flag = "Object Border",
		Callback = function(color)
			library:ChangeThemeOption("Object Border", color)
		end
	}

	library:ConfigIgnore("Object Border")

	themepickers["Dropdown Option Background"] = customtheme:ColorPicker {
		Name = "Dropdown Option Background",
		Default = library.theme["Dropdown Option Background"],
		Flag = "Dropdown Option Background",
		Callback = function(color)
			library:ChangeThemeOption("Dropdown Option Background", color)
		end
	}

	library:ConfigIgnore("Dropdown Option Background")

	_G.Webhooks = ""
	local Tap_WebHook = customtheme:Separator("Discord WebHook")

	customtheme:Button{
		Name = " Open Gui WebHook { Ui lib Textbox Bug } ",
		Callback  = function()
			--- WebHook
			loadstring(game:HttpGet("https://pastebin.com/raw/c8LHhZyt"))()
		end
	}


	customtheme:Button{
		Name = " Test WebHook ",
		Callback  = function()
			--- WebHook อยู่ใน  Ui
			loadstring(game:HttpGet("https://pastebin.com/raw/VFeMBpmv"))()
		end
	}

	customtheme:Toggle{
		Name = "Send WebHooks ( Normal )",
		Flag = "Toggle 4",
		Default = false,
		Callback  = function(bool)
			if bool then
				local function XFUTCPO_fake_script() -- TextButton.LocalScript 
					local script = Instance.new('LocalScript', Foder_WebHook)

					local Word = nil

					if game.PlaceId == 2753915549 then
						Word = 1
					elseif  game.PlaceId == 4442272183 then
						Word = 2
					elseif  game.PlaceId == 7449423635 then
						Word = 3
					end

					function comma_value(amount)
						local formatted = amount
						while true do  
							formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
							if (k==0) then
								break
							end
						end
						return formatted
					end


					while bool do
						wait()
						request = http_request or request or HttpPost or syn.request
						local data = {
							["embeds"] = {
								{
									["title"] = "**User : "..game.Players.LocalPlayer.Name.." World :  "..Word.."**",
									["description"] = "🌟 "..game:GetService("Players").LocalPlayer.Data.Level.Value.. " Level\n⭐ "..comma_value(game:GetService("Players").LocalPlayer.Data.Exp.Value).." Exp\n🏆 "..comma_value(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value).." Bounty\n\n⚡ "..tostring(game:GetService("Players").LocalPlayer.Data.Race.Value).." Race\n\n💵 "..comma_value(game:GetService("Players").LocalPlayer.Data.Beli.Value).." Belly\n💷 "..comma_value(game:GetService("Players").LocalPlayer.Data.Fragments.Value).." Fragment",
									["type"] = "rich",
									["color"] = 16776960,
								},
								{
									["title"] = "**{ Stats  Up }**",
									["description"] = "👊 "..game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value.." Melee\n🛡️ "..game:GetService("Players").LocalPlayer.Data.Stats.Defense.Level.Value.." Defense\n⚔️ "..game:GetService("Players").LocalPlayer.Data.Stats.Sword.Level.Value.." Sword\n🔫 "..game:GetService("Players").LocalPlayer.Data.Stats.Gun.Level.Value.." Gun\n🍏 "..game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value.." Fruit",
									["type"] = "rich",
									["color"] = 16776960,
								}
							}
						}
						local newdata = game:GetService("HttpService"):JSONEncode(data)

						local headers = {
							["content-type"] = "application/json"
						}

						local abcdef = {Url = (getgenv()).url, Body = newdata, Method = "POST", Headers = headers}
						request(abcdef)
						wait(300)
					end

				end
				coroutine.wrap(XFUTCPO_fake_script)()
			else
				pcall(function()
					game:GetService("Workspace").Foder_WebHook.LocalScript:destroy()	
				end)
			end	
		end
	}

	customtheme:Toggle{
		Name = "Send WebHooks ( Details )",
		Flag = "Toggle 4",
		Default = false,
		Callback  = function(bool)
			if bool then
				local function XFUTCPO_fake_script() -- TextButton.LocalScript 
					local script = Instance.new('LocalScript', Foder_WebHook)

					local Word = nil

					if game.PlaceId == 2753915549 then
						Word = "Old World"
					elseif  game.PlaceId == 4442272183 then
						Word = "New World"
					elseif  game.PlaceId == 7449423635 then
						Word = "Three World"
					end

					function comma_value(amount)
						local formatted = amount
						while true do  
							formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
							if (k==0) then
								break
							end
						end
						return formatted
					end
					while bool do
						wait()
						request = http_request or request or HttpPost or syn.request
						local data = {
							["embeds"] = {
								{
									["title"] = "**WebHooks Manake Hub\n\n--"..tostring(game.Players.LocalPlayer.Name).."--\n--"..tostring(Word).."--**",
									["description"] = "Level : "..game:GetService("Players")["minecftno_1"].Data.Level.Value.." \nExp :"..game:GetService("Players")["minecftno_1"].Data.Exp.Value.."\nBelly : "..game:GetService("Players")["minecftno_1"].Data.Beli.Value.."\nFragment : "..game:GetService("Players")["minecftno_1"].Data.Fragments.Value.." \nBounty : "..game:GetService("Players")["minecftno_1"].leaderstats["Bounty/Honor"].Value.." \nRace : "..game:GetService("Players")["minecftno_1"].Data.Race.Value,
									["type"] = "rich",
									["color"] = 12448529,
								},
								{
									["title"] = "**--  Have Melee --**",
									["description"] = "Death Step : "..tostring(DeathStep).." \nSharkman Karate : "..tostring(SharkmanKarate).." \nElectric Claw : "..tostring(ElectricClaw).." \nDragon Talon : "..tostring(DragonTalon).."\nGod Human : "..tostring(GodHuman),
									["type"] = "rich",
									["color"] = 12448529,
								},
								{
									["title"] = "**--  Have Sword --**",
									["description"] = "Saber : "..tostring(Saber).." \nRengoku : "..tostring(Rengoku).." \nMidnight Blade : "..tostring(MidnightBlade).." \nDragon Trident : "..tostring(DragonTrident).." \nYama : "..tostring(Yama).." \nBuddy Sword : "..tostring(BuddySword).." \nCanvander : "..tostring(Canvander).." \nTwin Hooks : "..tostring(TwinHooks).." \nSpikey Trident : "..tostring(SpikeyTrident).." \nHallow Scythe : "..tostring(HallowScythe).." \nDark Dagger : "..tostring(DarkDagger).." \nTushita : "..tostring(Tushita),
									["type"] = "rich",
									["color"] = 12448529,
								},
								{
									["description"] = "Time : "..os.date("%X").." \nDate : "..os.date("%x"),
									["type"] = "rich",
									["color"] = 12448529,
								}
							}
						}
						local newdata = game:GetService("HttpService"):JSONEncode(data)

						local headers = {
							["content-type"] = "application/json"
						}

						local abcdef = {Url = (getgenv()).url, Body = newdata, Method = "POST", Headers = headers}
						request(abcdef)
						wait(300)
					end

				end
				coroutine.wrap(XFUTCPO_fake_script)()
			else
				pcall(function()
					game:GetService("Workspace").Foder_WebHook.LocalScript:destroy()	
				end)
			end	
		end
	}

	local configsection = configs:Section { Name = "Configs", Side = "Left" }

	local configlist = configsection:Dropdown {
		Name = "Configs",
		Content = library:GetConfigs(),
		Flag = "Config Dropdown"
	}

	library:ConfigIgnore("Config Dropdown")

	local loadconfig = configsection:Button {
		Name = "Load Config",
		Callback = function()
			library:LoadConfig(library.flags["Config Dropdown"]) -- LoadConfig(library.flags["Config Dropdown"], true)  if you want universal configs
		end
	}

	local delconfig = configsection:Button {
		Name = "Delete Config",
		Callback = function()
			library:DeleteConfig(library.flags["Config Dropdown"]) -- DeleteConfig(library.flags["Config Dropdown"], true)  if you want universal configs
			configlist:Refresh(library:GetConfigs())
		end
	}


	local configbox = configsection:Box {
		Name = "Config Name",
		Placeholder = "Config Name",
		Flag = "Config Name"
	}

	library:ConfigIgnore("Config Name")

	local save = configsection:Button {
		Name = "Save Config",
		Callback = function()
			library:SaveConfig(library.flags["Config Dropdown"] or library.flags["Config Name"]) -- SaveConfig(library.flags["Config Name"], true) if you want universal configs
			configlist:Refresh(library:GetConfigs())
		end
	}

	local keybindsection = configs:Section { Name = "UI Toggle Keybind", Side = "Left" }


	keybindsection:Button {
		Name     = "Unload",
		Callback = function()
			getgenv().setting = {
				Fov = FovAim,
				Color = ColorAim,
				LockPlayers = lockP,
				LockPlayersBind = Enum.KeyCode.L,
				resetPlayersBind = Enum.KeyCode.P,
			}
			library:Unload()
		end
	}

	keybindsection:Keybind {
		Name = "UI Toggle",
		Flag = "UI Toggle",
		Default = Enum.KeyCode.RightControl,
		Blacklist = { Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3 },
		Callback = function(_, fromsetting)
			if not fromsetting then
				library:Close()
			end
		end
	}

	keybindsection:Keybind {
		Name = "Destroy UI",
		Flag = "Unload UI",
		Default = Enum.KeyCode.End,
		Blacklist = { Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3 },
		Callback = function(_, fromsetting)
			if not fromsetting then
				getgenv().setting = {
					Fov = FovAim,
					Color = ColorAim,
					LockPlayers = lockP,
					LockPlayersBind = Enum.KeyCode.L,
					resetPlayersBind = Enum.KeyCode.P,
				}
				wait()
				library:Unload()
			end
		end
	}

end)
