local a=loadstring(game:HttpGet('https://raw.githubusercontent.com/NubH4x/UI-Librarys/main/Aika-Library.lua'))()local b=a:CreateWindow("BIG AER)https://raw.githubusercontent.com/NubH4x/UI-Librarys/main/Aika-Library.local")local c=b:CreateFolder("Functions")c:Button("ESP",function()local d={textsize=8,colour=0,0,0}local c=Instance.new("BillboardGui")local e=Instance.new("TextLabel",c)c.Name="Cracked esp"c.ResetOnSpawn=false;c.AlwaysOnTop=true;c.LightInfluence=0;c.Size=UDim2.new(1.75,0,1.75,0)e.BackgroundColor3=Color3.fromRGB(0,0,0)e.Text=""e.Size=UDim2.new(0.0001,0.00001,0.0001,0.00001)e.BorderSizePixel=4;e.BorderColor3=Color3.new(d.colour)e.BorderSizePixel=0;e.Font="GothamSemibold"e.TextSize=d.textsize;e.TextColor3=Color3.fromRGB(d.colour)game:GetService("RunService").RenderStepped:Connect(function()for f,g in pairs(game:GetService("Players"):GetPlayers())do if g~=game:GetService("Players").LocalPlayer and g.Character.Head:FindFirstChild("Cracked esp")==nil then e.Text="{"..g.Name.."}"c:Clone().Parent=g.Character.Head end end end)ALLYCOLOR={0,0,0}ENEMYCOLOR={0,0,0}TRANSPARENCY=0.5;HEALTHBAR_ACTIVATED=true;function createFlex()players=game:GetService("Players")faces={"Front","Back","Bottom","Left","Right","Top"}currentPlayer=nil;lplayer=players.LocalPlayer;players.PlayerAdded:Connect(function(h)currentPlayer=h;h.CharacterAdded:Connect(function(i)createESP(i)end)end)function checkPart(j)if(j:IsA("Part")or j:IsA("MeshPart"))and j.Name~="HumanoidRootPart"then return true end end;function actualESP(j)for k=0,5 do surface=Instance.new("SurfaceGui",j)surface.Face=Enum.NormalId[faces[k+1]]surface.AlwaysOnTop=true;frame=Instance.new("Frame",surface)frame.Size=UDim2.new(1,0,1,0)frame.BorderSizePixel=0;frame.BackgroundTransparency=TRANSPARENCY;if currentPlayer.Team==players.LocalPlayer.Team then frame.BackgroundColor3=Color3.new(ALLYCOLOR[1],ALLYCOLOR[2],ALLYCOLOR[3])else frame.BackgroundColor3=Color3.new(ENEMYCOLOR[1],ENEMYCOLOR[2],ENEMYCOLOR[3])end end end;function createHealthbar(l)board=Instance.new("BillboardGui",l)board.Name="total"board.Size=UDim2.new(1,0,1,0)board.StudsOffset=Vector3.new(3,1,0)board.AlwaysOnTop=true;bar=Instance.new("Frame",board)bar.BackgroundColor3=Color3.new(255,0,0)bar.BorderSizePixel=0;bar.Size=UDim2.new(0.2,0,4,0)bar.Name="total2"health=Instance.new("Frame",bar)health.BackgroundColor3=Color3.new(0,255,0)health.BorderSizePixel=0;health.Size=UDim2.new(1,0,l.Parent.Humanoid.Health/100,0)l.Parent.Humanoid.Changed:Connect(function(m)l.total.total2.Frame.Size=UDim2.new(1,0,l.Parent.Humanoid.Health/100,0)end)end;function createESP(n)bugfix=n:WaitForChild("Head")for k,o in pairs(n:GetChildren())do if checkPart(o)then actualESP(o)end end;if HEALTHBAR_ACTIVATED then createHealthbar(n:WaitForChild("HumanoidRootPart"))end end;for k,p in pairs(players:GetChildren())do if p~=players.LocalPlayer then currentPlayer=p;createESP(p.Character)p.CharacterAdded:Connect(function(i)createESP(i)end)end end end;createFlex()end)c:Button("Aimbot",function()PLAYER=game.Players.LocalPlayer;MOUSE=PLAYER:GetMouse()CC=game.Workspace.CurrentCamera;_G.AIM_AT='Head'_G.BIND=101;function GetNearestPlayerToMouse()local d={}local c={}local e={25000}for f,g in pairs(game.Players:GetPlayers())do if g~=PLAYER then table.insert(d,g)end end;for f,g in pairs(d)do if g and g.Character~=nil and g.Team~=PLAYER.Team then local h=g.Character:FindFirstChild(_G.AIM_AT)if h~=nil then local i=(h.Position-game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude;local j=Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p,(MOUSE.Hit.p-CC.CoordinateFrame.p).unit*i)local k,l=game.Workspace:FindPartOnRay(j,game.Workspace)local m=math.floor((l-h.Position).magnitude)c[g.Name..f]={}c[g.Name..f].dist=i;c[g.Name..f].plr=g;c[g.Name..f].diff=m;table.insert(e,m)end end end;if unpack(e)==nil then return false end;local n=math.floor(math.min(unpack(e)))if n>25000 then return false end;for f,g in pairs(c)do if g.diff==n then return g.plr end end;return false end;MOUSE.KeyDown:connect(function(o)o=o:lower():byte()if o==_G.BIND then ENABLED=true end end)MOUSE.KeyUp:connect(function(o)o=o:lower():byte()if o==_G.BIND then ENABLED=false end end)game:GetService('RunService').RenderStepped:connect(function()if ENABLED then local p=GetNearestPlayerToMouse()if p~=false then local h=p.Character:FindFirstChild(_G.AIM_AT)if h then CC.CoordinateFrame=CFrame.new(CC.CoordinateFrame.p,h.CFrame.p)end end end end)end)c:Button("Wallbang",function()_G.silentTeam=true;if _G.silentTeam then if game.Players.LocalPlayer.Team~=nil then _G.FFA=false;function GetPlayer()local q=nil;local r=math.huge;for k,s in pairs(game:GetService("Players"):GetPlayers())do if s.Name~=game.Players.LocalPlayer.Name and game.Players.LocalPlayer.Team~=s.Team then if s.Character and s.Character:FindFirstChild("Humanoid")and s.Character.Humanoid.Health~=0 and s.Character:FindFirstChild("HumanoidRootPart")and s.Character:FindFirstChild("Head")then local t=(s.Character.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude;if t<r then q=s;r=t end end end end;return q end;local u=require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))local v=u.Functions.GenerateUID()local w=math.random(1,1)local x=math.random(2,2)local y=getrawmetatable(game)local z=y.__namecall;setreadonly(y,false)y.__namecall=newcclosure(function(self,...)local A={...}local B=getnamecallmethod()if B=="FireServer"and self.Name=="new projectile"then A[1][1][1]=1;A[1][1][2]=v;game.workspace.__THINGS.__REMOTES["do damage"]:FireServer({{GetPlayer().Character.Humanoid,v,w,GetPlayer().Character.HumanoidRootPart.Position,false,false,false},{false,false,false,false,false,x,x}})end;return z(self,...)end)end end end)c:Button("Gun Mods",function()local function C(D,E)for k,s in next,game:GetService('ReplicatedStorage').Framework.Modules['1 | Directory'].Guns:GetChildren()do for F,G in next,require(s)do if G[D]then G[D]=E end end end end;C('firerate',0)C('automatic',true)C('velocity',10000)end)c:Button("@LilQuest",function()while wait()do pcall(function()for k,s in next,game:GetService("Players"):GetChildren()do if s.Name~=game.Players.LocalPlayer.Name then if s.Character.Humanoid~=nil then local H=s;local I=math.random(1,1)local J=H.Character.HumanoidRootPart.Position;local K=false;local L=math.random(2,2)local M=require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))M.Network.Fire("New Projectile",1,1,math.floor(game.Workspace.DistributedGameTime))game.Workspace.__THINGS.__REMOTES["do damage"]:FireServer({{H.Character.Humanoid,I,I,J,K,K,K},{K,K,K,K,K,L,L}})wait(.2)end end end end)end end)local c=b:CreateFolder("Credits")c:Label("Functions - JoshMods & Nub Hax",{TextSize=15,TextColor=Color3.fromRGB(255,255,255),BgColor=Color3.fromRGB(69,69,69)})
