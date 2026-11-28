--[[ Protected by Lua Guard ]]

( function (...) local Players = game:GetService("\080\108\097\121\101\114\115") local ReplicatedStorage = game:GetService("\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101") local RunService = game:GetService("\082\117\110\083\101\114\118\105\099\101") local UserInputService = game:GetService("\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101") local _lIIIlllllI = game:GetService("\087\111\114\107\115\112\097\099\101") local _IlllIIIlII = game:GetService("\086\105\114\116\117\097\108\085\115\101\114") local HttpService = game:GetService("\072\116\116\112\083\101\114\118\105\099\101") local Lighting = game:GetService("\076\105\103\104\116\105\110\103") local TweenService = game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101") local TeleportService = game:GetService("\084\101\108\101\112\111\114\116\083\101\114\118\105\099\101") local _IIlIIIlllI = Players.LocalPlayer local _IlIllIIIIl = ReplicatedStorage:WaitForChild("\082\101\109\111\116\101\115", 0x1E) local _lllIIllllI = _IlIllIIIIl and _IlIllIIIIl:WaitForChild("\065\099\116\105\111\110", 0xF) local _IIIlIIIIlI = _IlIllIIIIl and _IlIllIIIIl:WaitForChild("\083\110\097\112\115\104\111\116", 0xF) local _IIlIIlIlII = _IlIllIIIIl and _IlIllIIIIl:WaitForChild("\068\097\121\082\101\112\111\114\116", 0xF) if getgenv().WarnetFarm and type(getgenv().WarnetFarm.stop) == "\102\117\110\099\116\105\111\110" then pcall(getgenv().WarnetFarm.stop) end
 if getgenv().SikatHub and type(getgenv().SikatHub.unload) == "\102\117\110\099\116\105\111\110" then pcall(getgenv().SikatHub.unload) end
 local _llIIIllIlI = { alive = true, _lIlIlIIlll = nil, _IIIIlIlIll = nil, status = "\083\116\097\114\116\105\110\103", } getgenv().SikatHub = _llIIIllIlI local _IIIIlIllIl = ReplicatedStorage:FindFirstChild("\083\104\097\114\101\100") local function _IIlIIllIlI(module) if not module then return nil end
 local _IllllIIIII, res = pcall(require, module) if _IllllIIIII then return res end
 return nil end
 local _lIlIlIlllI = _IIlIIllIlI(_IIIIlIllIl and _IIIIlIllIl:FindFirstChild("\083\116\114\105\110\103\115")) local _lllllIIIlI = _IIlIIllIlI(_IIIIlIllIl and _IIIIlIllIl:FindFirstChild("\068\097\116\097") and _IIIIlIllIl.Data:FindFirstChild("\076\105\102\101")) local _IIlllllIll = _IIlIIllIlI(_IIIIlIllIl and _IIIIlIllIl:FindFirstChild("\068\097\116\097") and _IIIIlIllIl.Data:FindFirstChild("\067\097\116\097\108\111\103")) local _IIlllIlIIl = _IIlIIllIlI(_IIIIlIllIl and _IIIIlIllIl:FindFirstChild("\071\097\109\101\067\111\110\102\105\103")) local _IIlIllIlII = (_IIlllllIll and _IIlllllIll.BY_ID) or {} local _IIlIIlIIII = { lifeTake = "\084\097\107\101", pGift = "\071\105\102\116\033", pCard = "\082\097\114\101\032\099\097\114\100\033", pCat = "\084\104\101\032\114\117\110\097\119\097\121\032\111\114\097\110\103\101\032\099\097\116", lifeCatch = "\067\097\116\099\104", lifeTalk = "\084\097\108\107", pHandIn = "\072\097\110\100\032\111\118\101\114\032\116\111\032\123\110\097\109\101\125", nextDay = "\076\097\110\106\117\116\032\107\101\032\072\097\114\105\032\123\100\097\121\125", } local function _IIllIIllII(_IllllIIIll, vars) if _lIlIlIlllI and type(_lIlIlIlllI.t) == "\102\117\110\099\116\105\111\110" then local _IllllIIIII, res = pcall(_lIlIlIlllI.t, _IllllIIIll, vars) if _IllllIIIII and type(res) == "\115\116\114\105\110\103" then return res end
 end
 local _IllIllIIIl = _IIlIIlIIII[_IllllIIIll] or _IllllIIIll if vars then _IllIllIIIl = _IllIllIIIl:gsub("\123\040\037\119\043\041\125", function (_IIIIlIlIIl) return tostring(vars[_IIIIlIlIIl] or "") end
 ) end
 return _IllIllIIIl end
 local function _lIIIlIIIlI(payload) if type(payload) ~= "\116\097\098\108\101" then return end
 _llIIIllIlI.snap = payload if payload.life then _llIIIllIlI.life = payload.life end
 end
 local _IlIlllIlll if _IIIlIIIIlI then _IlIlllIlll = _IIIlIIIIlI.OnClientEvent:Connect(_lIIIlIIIlI) end
 local function _lIlIlIIlll() return _llIIIllIlI.snap end
 local function _IIIIlIlIll() return _llIIIllIlI.life or (_llIIIllIlI.snap and _llIIIllIlI.snap.life) end
 local function _lllIlIIllI() return _IIlIIIlllI.Character end
 local function _lIllIlIIIl() local _IllllIIIll = _lllIlIIllI() return _IllllIIIll and _IllllIIIll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") end
 local function _lllIlIIIIl() local _IllllIIIll = _lllIlIIllI() return _IllllIIIll and _IllllIIIll:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") end
 local _IIIIIllIlI = { holder = nil, expires = 0x0 } local function _lIIIIlIlIl(_IIlIIIllIl, ttl) local _IIlIIlllII = os.clock() if _IIIIIllIlI.holder and _IIIIIllIlI.holder ~= _IIlIIIllIl and _IIlIIlllII < _IIIIIllIlI.expires then return false end
 _IIIIIllIlI.holder = _IIlIIIllIl _IIIIIllIlI.expires = _IIlIIlllII + (ttl or 0x4) return true end
 local function _IIllllllII(_IIlIIIllIl) if _IIIIIllIlI.holder == _IIlIIIllIl then _IIIIIllIlI.holder = nil _IIIIIllIlI.expires = 0x0 end
 end
 local _llllIlllIl = { _IllIlIIIll = 0x14, _llIIIlIIII = false } local function _lllIllIllI(pos, opts) opts = opts or {} local _IllIIlIIIl = opts.offset or 0x3 local _lIIIIIllIl = Vector3.new(pos.X, pos.Y + _IllIIlIIIl, pos.Z) local _lllIlllIII = opts.tolerance or 0x6 local _IIlllIllIl = os.clock() + (opts.timeout or 0x28) local _IIlIIIIlll = _lIllIlIIIl() if not _IIlIIIIlll or not _lllIlIIIIl() then return false end
 local function _IIIllIIIlI(p) return (Vector2.new(p.X, p.Z) - Vector2.new(_lIIIIIllIl.X, _lIIIIIllIl.Z)).Magnitude end
 if _IIIllIIIlI(_IIlIIIIlll.Position) <= 0x1E and math.abs(_IIlIIIIlll.Position.Y - _lIIIIIllIl.Y) <= 0x19 then _IIlIIIIlll.AssemblyLinearVelocity = Vector3.zero _IIlIIIIlll.CFrame = CFrame.new(_lIIIIIllIl) task.wait(0.2) _IIlIIIIlll = _lIllIlIIIl() if _IIlIIIIlll and _IIIllIIIlI(_IIlIIIIlll.Position) <= _lllIlllIII then return true end
 end
 local _IIIIllllll = 0x0 local _IlllllllIl = false _llllIlllIl.active = true while _IIIIllllll < 0x6 and os.clock() < _IIlllIllIl and _llIIIllIlI.alive do _IIIIllllll = _IIIIllllll + 0x1 _IIlIIIIlll = _lIllIlIIIl() if not _IIlIIIIlll then break end
 local _IlllIllIII = _IIlIIIIlll.Position local _llIIIIIIIl = (_lIIIIIllIl - _IlllIllIII).Magnitude if _IIIllIIIlI(_IlllIllIII) <= _lllIlllIII then _IlllllllIl = true break end
 local _IllIlIIIll = math.max(0x8, _llllIlllIl.speed * (0.85 ^ (_IIIIllllll - 0x1))) local _lIlIllIIIl = TweenService:Create( _IIlIIIIlll, TweenInfo.new(_llIIIIIIIl / _IllIlIIIll, Enum.EasingStyle.Linear), { CFrame = CFrame.new(_lIIIIIllIl) } ) local _IlllIllIIl = (_lIIIIIllIl - _IlllIllIII).Unit local _lIIllIlllI = 0x0 local _lllllllIII = false _lIlIllIIIl:Play() while _lIlIllIIIl.PlaybackState == Enum.PlaybackState.Playing and os.clock() < _IIlllIllIl and _llIIIllIlI.alive do _IIlIIIIlll = _lIllIlIIIl() if not _IIlIIIIlll then _lIlIllIIIl:Cancel() break end
 _IIlIIIIlll.AssemblyLinearVelocity = Vector3.zero local _IllIllllll = (_IIlIIIIlll.Position - _IlllIllIII):Dot(_IlllIllIIl) if _IllIllllll < _lIIllIlllI - 0x6 then _lllllllIII = true _lIlIllIIIl:Cancel() break end
 _lIIllIlllI = math.max(_lIIllIlllI, _IllIllllll) task.wait() end
 _IIlIIIIlll = _lIllIlIIIl() if _IIlIIIIlll then _IIlIIIIlll.AssemblyLinearVelocity = Vector3.zero if not _lllllllIII and _IIIllIIIlI(_IIlIIIIlll.Position) <= _lllIlllIII then _IlllllllIl = true break end
 end
 task.wait(0.1) end
 _llllIlllIl.active = false task.wait(0.1) return _IlllllllIl end
 local function _IlIIIllIIl(_IllIIIIIlI) if not _IllIIIIIlI or not _IllIIIIIlI.Enabled then return false end
 local _lIllIIlIII = getgenv().fireproximityprompt if type(_lIllIIlIII) == "\102\117\110\099\116\105\111\110" then local _IllllIIIII = pcall(_lIllIIlIII, _IllIIIIIlI) if _IllllIIIII then return true end
 end
 local _IllllIIIII = pcall( function () _IllIIIIIlI:InputHoldBegin() task.wait(math.max(_IllIIIIIlI.HoldDuration or 0x0, 0.05)) _IllIIIIIlI:InputHoldEnd() end
 ) return _IllllIIIII end
 local function _IlIllllIIl(_llIIllIIlI, _IllIIIIIlI, opts) if not _llIIllIIlI or not _IllIIIIIlI then return false end
 if not _lllIllIllI(_llIIllIIlI.Position, opts) then return false end
 return _IlIIIllIIl(_IllIIIIIlI) end
 local function _lllIllllII() local _IIlIlIIllI = _lIIIlllllI:FindFirstChild("\077\097\112") return _IIlIlIIllI and _IIlIlIIllI:FindFirstChild("\076\111\116\115") end
 local function _lllllllIlI() local _IIIIIllIlI = _lIlIlIIlll() local _IIIIIlIIll = (_IIIIIllIlI and _IIIIIllIlI.lot) or 0x2 local _IIlIllIlIl = _lllIllllII() return _IIlIllIlIl and _IIlIllIlIl:FindFirstChild("\076\111\116" .. tostring(_IIIIIlIIll)) end
 local function _llIIIIIIll() local _IIlIlIIllI = _lIIIlllllI:FindFirstChild("\077\097\112") local _IIlIllllll = _IIlIlIIllI and _IIlIlIIllI:FindFirstChild("\084\111\119\110") return _IIlIllllll and _IIlIllllll:FindFirstChild("\083\112\111\116\115") end
 local function _IlIllIlIlI(_lllllllIII, _IIlIIlllIl) local _lllllIIlll = _llIIIIIIll() if not _lllllIIlll then return nil end
 for _, _llIIllIIlI in ipairs(_lllllIIlll:GetChildren()) do if _llIIllIIlI:GetAttribute("\075\105\110\100") == _lllllllIII and _llIIllIIlI:GetAttribute("\073\100") == _IIlIIlllIl then return _llIIllIIlI end
 end
 return nil end
 local function _lIIlllIIII(_llIIllIIlI, _llIIIIIIIl) local _IIIIIlllIl = _llIIllIIlI.Position.Z > -0x19 and -0x1 or 0x1 return _llIIllIIlI.Position + Vector3.new(0x0, 0x1, (_llIIIIIIIl or 0x5) * _IIIIIlllIl) end
 local function _lIIlIIllII(_llIlIlIlll, matcher) if not _llIlIlIlll then return nil end
 local _llIIIIIlII for _, d in ipairs(_llIlIlIlll:GetDescendants()) do if d:IsA("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") then if matcher and matcher(d) then if d.Enabled then return d end
 _llIIIIIlII = _llIIIIIlII or d elseif not matcher then if d.Enabled then return d end
 _llIIIIIlII = _llIIIIIlII or d end
 end
 end
 return _llIIIIIlII end
 local function _IlIIIIIlII(_IllIIIIIlI) if not _IllIIIIIlI then return nil end
 local _lIlIIIlllI = _IllIIIIIlI.Parent if _lIlIIIlllI and _lIlIIIlllI:IsA("\066\097\115\101\080\097\114\116") then return _lIlIIIlllI end
 if _lIlIIIlllI and _lIlIIIlllI:IsA("\077\111\100\101\108") then return _lIlIIIlllI.PrimaryPart or _lIlIIIlllI:FindFirstChildWhichIsA("\066\097\115\101\080\097\114\116") end
 return nil end
 local _IllIlIllll = { _lllllIIllI = false, value = 0x3C, original = nil } local function _lIllIlllll() local _IlIlIllllI = _lllIlIIIIl() if _IlIlIllllI and _IllIlIllll.original then _IlIlIllllI.WalkSpeed = _IllIlIllll.original end
 _IllIlIllll.original = nil end
 local function _lllIlIIIIl() local _IlIlIllllI = _lllIlIIIIl() if not _IlIlIllllI then return end
 if _IllIlIllll.enabled then if not _IllIlIllll.original then _IllIlIllll.original = _IlIlIllllI.WalkSpeed end
 _IlIlIllllI.WalkSpeed = _IllIlIllll.value end
 end
 local _lllIlIIIlI = { _lllllIIllI = false, _IllIlIIIll = 0x32, savedSpeed = nil } local function _IIIlIIIlIl() local _IlIlIllllI = _lllIlIIIIl() if _IlIlIllllI and _lllIlIIIlI.savedSpeed then _IlIlIllllI.WalkSpeed = _lllIlIIIlI.savedSpeed end
 _lllIlIIIlI.savedSpeed = nil end
 local _IllIlllIIl = { noclip = false, infJump = false, antiAfk = false } local _lIIllllIlI = { keepOpen = false, serve = false, deliver = false, cook = false, clean = false, repair = false, like = false, dayReport = false, cookBelow = 0x6, served = 0x0, delivered = 0x0, cleaned = 0x0, repaired = 0x0, cooked = 0x0, lastLike = 0x0, lastAction = "", } local _IllIlIlIIl = { { _IllllIIIll = "\109\105\101", _IIlIIlllIl = "\110\111\111\100\108\101" }, { _IllllIIIll = "\110\097\115\105", _IIlIIlllIl = "\114\105\099\101" }, { _IllllIIIll = "\115\111\100\097", _IIlIIlllIl = "\115\111\100\097" }, { _IllllIIIll = "\116\101\104", _IIlIIlllIl = "\116\101\097" }, { _IllllIIIll = "\107\111\112\105", _IIlIIlllIl = "\099\111\102\102\101\101" }, { _IllllIIIll = "\115\110\097\099\107", _IIlIIlllIl = "\115\110\097\099\107" }, } local function _IlIlIIIIll(_llllllIlIl) local _IIIIlIIlll = string.lower(_llllllIlIl or "") for _, entry in ipairs(_IllIlIlIIl) do if _IIIIlIIlll:find(entry.key, 0x1, true) then return entry.id end
 end
 return nil end
 local function _IlIlIIIlII() return _lIIllllIlI.keepOpen or _lIIllllIlI.serve or _lIIllllIlI.deliver or _lIIllllIlI.cook or _lIIllllIlI.clean or _lIIllllIlI.repair or _lIIllllIlI.like end
 local function _lllllllIII() local _lIlIlllIll = _lllllllIlI() if not _lIlIlllIll then return {} end
 local _IlIlIllIlI = {} local _IlIIIlIlIl = _lIlIlllIll:FindFirstChild("\080\101\111\112\108\101") if _IlIIIlIlIl then for _, _llIlIlIlll in ipairs(_IlIIIlIlIl:GetChildren()) do local _IIlIIIIlll = _llIlIlIlll:FindFirstChild("\082\111\111\116") local _IllIIIIIlI = _IIlIIIIlll and _IIlIIIIlll:FindFirstChild("\080\114\111\109\112\116") if _IllIIIIIlI and _IllIIIIIlI:IsA("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") and _IllIIIIIlI.Enabled then local _IlllIIllII = _IllIIIIIlI.ActionText or "" if _IlllIIllII == "\076\097\121\097\110\105" then table.insert(_IlIlIllIlI, { _lllllllIII = "\115\101\114\118\101", _IllIIIIIlI = _IllIIIIIlI, _llIIllIIlI = _IIlIIIIlll, _llIIlllllI = _llIlIlIlll.Name }) elseif string.sub(_IlllIIllII, 0x1, 0x5) == "\065\110\116\097\114" then table.insert(_IlIlIllIlI, { _lllllllIII = "\100\101\108\105\118\101\114", _IllIIIIIlI = _IllIIIIIlI, _llIIllIIlI = _IIlIIIIlll, _llIIlllllI = _llIlIlIlll.Name }) end
 end
 end
 end
 local _llIlIIIIll = _lIlIlllIll:FindFirstChild("\079\098\106\101\099\116\115") if _llIlIIIIll then for _, obj in ipairs(_llIlIIIIll:GetChildren()) do for _, d in ipairs(obj:GetDescendants()) do if d:IsA("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") and d.Enabled then local _IlllIIllII = string.lower(d.ActionText or "") local _IIllIllIlI = string.lower(d.ObjectText or "") if _IlllIIllII:find("\098\101\114\115\105\104", 0x1, true) then table.insert(_IlIlIllIlI, { _lllllllIII = "\099\108\101\097\110", _IllIIIIIlI = d, _llIIllIIlI = obj }) elseif _IlllIIllII:find("\112\101\114\098\097\105\107\105", 0x1, true) or _IlllIIllII:find("\115\101\114\118\105\115", 0x1, true) or _IlllIIllII:find("\114\101\112\097\105\114", 0x1, true) or _IIllIllIlI:find("\114\117\115\097\107", 0x1, true) then table.insert(_IlIlIllIlI, { _lllllllIII = "\114\101\112\097\105\114", _IllIIIIIlI = d, _llIIllIIlI = obj }) elseif _IlllIIllII:find("\098\117\097\116\032", 0x1, true) then table.insert(_IlIlIllIlI, { _lllllllIII = "\099\111\111\107", _IllIIIIIlI = d, _llIIllIIlI = obj, _llllIIllIl = _IlIlIIIIll(_IlllIIllII) }) end
 end
 end
 end
 end
 return _IlIlIllIlI end
 local _lIIIllIlII = { serve = 0x1, deliver = 0x2, clean = 0x3, repair = 0x4, cook = 0x5 } local function _IIlIIIIlIl() local _IIIIIllIlI = _lIlIlIIlll() if not _IIIIIllIlI then return end
 if _lIIllllIlI.keepOpen and not _IIIIIllIlI.open then if _lllIIllllI then _lllIIllllI:FireServer("\115\101\116\079\112\101\110", { open = true }) _lIIllllIlI.lastAction = "\079\112\101\110\105\110\103\032\116\104\101\032\119\097\114\110\101\116" task.wait(0.6) end
 return end
 if not _IIIIIllIlI.open then return end
 local _lIlllIIlll = _lllllllIII() table.sort(_lIlllIIlll, function (a, b) return (_lIIIllIlII[a.kind] or 0x9) < (_lIIIllIlII[b.kind] or 0x9) end
 ) for _, _lllllIIllI in ipairs(_lIlllIIlll) do if not _llIIIllIlI.alive then return end
 local _lllllIIllI = (_lllllIIllI.kind == "\115\101\114\118\101" and _lIIllllIlI.serve) or (_lllllIIllI.kind == "\100\101\108\105\118\101\114" and _lIIllllIlI.deliver) or (_lllllIIllI.kind == "\099\108\101\097\110" and _lIIllllIlI.clean) or (_lllllIIllI.kind == "\114\101\112\097\105\114" and _lIIllllIlI.repair) or (_lllllIIllI.kind == "\099\111\111\107" and _lIIllllIlI.cook) if _lllllIIllI then local _lllIlIIlIl = false if _lllllIIllI.kind == "\099\111\111\107" and _lllllIIllI.item then local _IlIIllllll = (_IIIIIllIlI.stock and _IIIIIllIlI.stock[_lllllIIllI.item]) or 0x0 if _IlIIllllll >= _lIIllllIlI.cookBelow then _lllIlIIlIl = true end
 end
 if not _lllIlIIlIl and _lIIIIlIlIl("\102\097\114\109", 0x6) then local _IllllIIIII = _IlIllllIIl(_lllllIIllI.part, _lllllIIllI.prompt) if _IllllIIIII then if _lllllIIllI.kind == "\115\101\114\118\101" then _lIIllllIlI.served = _lIIllllIlI.served + 0x1 _lIIllllIlI.lastAction = "\083\101\114\118\101\100\032" .. tostring(_lllllIIllI.label or "\099\117\115\116\111\109\101\114") elseif _lllllIIllI.kind == "\100\101\108\105\118\101\114" then _lIIllllIlI.delivered = _lIIllllIlI.delivered + 0x1 _lIIllllIlI.lastAction = "\068\101\108\105\118\101\114\101\100\032\116\111\032" .. tostring(_lllllIIllI.label or "\099\117\115\116\111\109\101\114") elseif _lllllIIllI.kind == "\099\108\101\097\110" then _lIIllllIlI.cleaned = _lIIllllIlI.cleaned + 0x1 _lIIllllIlI.lastAction = "\067\108\101\097\110\101\100\032\116\114\097\115\104" elseif _lllllIIllI.kind == "\114\101\112\097\105\114" then _lIIllllIlI.repaired = _lIIllllIlI.repaired + 0x1 _lIIllllIlI.lastAction = "\082\101\112\097\105\114\101\100\032\097\032\115\116\097\116\105\111\110" elseif _lllllIIllI.kind == "\099\111\111\107" then _lIIllllIlI.cooked = _lIIllllIlI.cooked + 0x1 _lIIllllIlI.lastAction = "\067\111\111\107\101\100\032" .. tostring(_lllllIIllI.item or "\102\111\111\100") end
 end
 _IIllllllII("\102\097\114\109") task.wait(0.12) end
 end
 end
 if _lIIllllIlI.like and os.clock() - _lIIllllIlI.lastLike > 0x2D then local _lIlIlllIll = _lllllllIlI() local _IIlllIlllI = _lIlIlllIll and _lIlIlllIll:FindFirstChild("\083\104\101\108\108") local _IIlllIllIl = _IIlllIlllI and _IIlllIlllI:FindFirstChild("\076\105\107\101\083\105\103\110") local _IllIIIIIlI = _IIlllIllIl and _IIlllIllIl:FindFirstChild("\080\114\111\109\112\116") if _IllIIIIIlI and _IllIIIIIlI.Enabled and _lIIIIlIlIl("\102\097\114\109", 0x6) then if _IlIllllIIl(_IIlllIllIl, _IllIIIIIlI) then _lIIllllIlI.lastLike = os.clock() _lIIllllIlI.lastAction = "\076\105\107\101\100\032\116\104\101\032\119\097\114\110\101\116" end
 _IIllllllII("\102\097\114\109") end
 end
 end
 local _lIIllIIIll = { _lllllIIllI = false, types = { deliver = true, fetch = true, cat = true }, accepted = 0x0, _llIlIlIIll = "\105\100\108\101", lastId = nil, lastTry = 0x0, } local function _lIllIllllI(_IllIlIIlIl) local _lllllllIII = string.lower(tostring(_IllIlIIlIl and _IllIlIIlIl.type or "")) if _lllllllIII:find("\099\097\116", 0x1, true) or _lllllllIII:find("\107\117\099\105\110\103", 0x1, true) then return "\099\097\116" end
 if _lllllllIII:find("\102\101\116\099\104", 0x1, true) or _lllllllIII:find("\098\117\121", 0x1, true) or _lllllllIII:find("\105\116\101\109", 0x1, true) or _lllllllIII:find("\098\101\108\105", 0x1, true) then return "\102\101\116\099\104" end
 return "\100\101\108\105\118\101\114" end
 local function _IIllllllII(offers) if type(offers) ~= "\116\097\098\108\101" then return nil end
 local _lllllIIlII, bestReward = nil, -math.huge for _, _IllIlIIlIl in ipairs(offers) do if type(_IllIlIIlIl) == "\116\097\098\108\101" and _IllIlIIlIl.id and _lIIllIIIll.types[_lIllIllllI(_IllIlIIlIl)] then local _IlIlIIllII = (_IllIlIIlIl.reward and _IllIlIIlIl.reward.money) or 0x0 if _IlIlIIllII > bestReward then _lllllIIlII = _IllIlIIlIl bestReward = _IlIlIIllII end
 end
 end
 return _lllllIIlII end
 local function _llIlllIIIl() local _lllllIIlll = _llIIIIIIll() if not _lllllIIlll then return nil end
 for _, _llIIllIIlI in ipairs(_lllllIIlll:GetChildren()) do if _llIIllIIlI:GetAttribute("\075\105\110\100") == "\104\111\117\115\101" then local _IllIIIIIlI = _llIIllIIlI:FindFirstChild("\080\114\111\109\112\116") if _IllIIIIIlI and _IllIIIIIlI:IsA("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") and _IllIIIIIlI.Enabled then return _IllIIIIIlI, _llIIllIIlI end
 end
 end
 return nil end
 local function _IllIlllIIl(_IIlIIIllIl) local _llllIlIIll = _lIIIlllllI:FindFirstChild("\067\108\105\101\110\116\076\105\102\101") if not _llllIlIIll or not _IIlIIIllIl then return nil end
 local _llIlIlIlll = _llllIlIIll:FindFirstChild(_IIlIIIllIl) if not _llIlIlIlll then for _, child in ipairs(_llllIlIIll:GetChildren()) do if string.find(string.lower(child.Name), string.lower(_IIlIIIllIl), 0x1, true) then _llIlIlIlll = child break end
 end
 end
 if not _llIlIlIlll then return nil end
 local _IllIIIIIlI = _lIIlIIllII(_llIlIlIlll) return _IllIIIIIlI, _IlIIIIIlII(_IllIIIIIlI) end
 local function _llIIIlIIlI() local _llllIlIIll = _lIIIlllllI:FindFirstChild("\067\108\105\101\110\116\076\105\102\101") if not _llllIlIIll then return nil end
 local _lllIIIllIl = string.lower(_IIllIIllII("\112\067\097\116")) for _, child in ipairs(_llllIlIIll:GetChildren()) do for _, d in ipairs(child:GetDescendants()) do if d:IsA("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") then local _IIllIllIlI = string.lower(d.ObjectText or "") local _IlllIIllII = string.lower(d.ActionText or "") if d.Enabled and (_IIllIllIlI == _lllIIIllIl or _IIllIllIlI:find("\107\117\099\105\110\103", 0x1, true) or _IIllIllIlI:find("\099\097\116", 0x1, true) or _IlllIIllII:find("\116\097\110\103\107\097\112", 0x1, true) or _IlllIIllII:find("\099\097\116\099\104", 0x1, true)) then return d, _IlIIIIIlII(d) end
 end
 end
 end
 return nil end
 local function _IIllIlIIIl() if not _lllIIllllI then return end
 local _IIlIIllIII = _IIIIlIlIll() if not _IIlIIllIII then return end
 local _llIIIlIIII = _IIlIIllIII.active if type(_llIIIlIIII) ~= "\116\097\098\108\101" then _lIIllIIIll.stage = "\105\100\108\101" local _IllIlIIlIl = _IIllllllII(_IIlIIllIII.offers) if _IllIlIIlIl and _IllIlIIlIl.id ~= _lIIllIIIll.lastId then _lllIIllllI:FireServer("\097\099\099\101\112\116", { _IIlIIlllIl = _IllIlIIlIl.id }) _lIIllIIIll.lastId = _IllIlIIlIl.id _lIIllIIIll.accepted = _lIIllIIIll.accepted + 0x1 _lIIllIIIll.stage = "\097\099\099\101\112\116\101\100" _llIIIllIlI.status = "\065\099\099\101\112\116\101\100\032\097\032\113\117\101\115\116" task.wait(0.8) end
 return end
 local _llIlIlIIll = tostring(_llIIIlIIII.stage or "") _lIIllIIIll.stage = _llIlIlIIll if _llIlIlIIll == "\114\101\116\117\114\110" then local _IllIIIIIlI, _llIIllIIlI = _IllIlllIIl(_llIIIlIIII.name) if _IllIIIIIlI and _llIIllIIlI and _lIIIIlIlIl("\113\117\101\115\116", 0x2D) then _IlIllllIIl(_llIIllIIlI, _IllIIIIIlI) _IIllllllII("\113\117\101\115\116") end
 elseif _llIlIlIIll == "\100\101\108\105\118\101\114" then local _IllIIIIIlI, _llIIllIIlI = _llIlllIIIl() if _IllIIIIIlI and _llIIllIIlI and _lIIIIlIlIl("\113\117\101\115\116", 0x2D) then _IlIllllIIl(_llIIllIIlI, _IllIIIIIlI) _IIllllllII("\113\117\101\115\116") end
 elseif _llIlIlIIll == "\098\117\121" then if _llIIIlIIII.item and _lIIIIlIlIl("\113\117\101\115\116", 0x3) then _lllIIllllI:FireServer("\113\117\101\115\116\066\117\121", { _llllIIllIl = _llIIIlIIII.item }) _IIllllllII("\113\117\101\115\116") task.wait(0.6) end
 elseif _llIlIlIIll == "\102\105\110\100" then local _IllIIIIIlI, _llIIllIIlI = _llIIIlIIlI() if _IllIIIIIlI and _llIIllIIlI and _lIIIIlIlIl("\113\117\101\115\116", 0x2D) then _IlIllllIIl(_llIIllIIlI, _IllIIIIIlI) _IIllllllII("\113\117\101\115\116") end
 end
 end
 local _llllIllIlI = { gifts = false, cards = false, giftsClaimed = 0x0, cardsClaimed = 0x0, } local function _IIlIIllIll(_llIlIlIlll, opts) if not _llIlIlIlll then return false end
 local _IllIIIIIlI = _lIIlIIllII(_llIlIlIlll) if not _IllIIIIIlI or not _IllIIIIIlI.Enabled then return false end
 local _llIIllIIlI = _IlIIIIIlII(_IllIIIIIlI) if not _llIIllIIlI then return false end
 return _IlIllllIIl(_llIIllIIlI, _IllIIIIIlI, opts) end
 local function _llIlllIlII() local _llllIlIIll = _lIIIlllllI:FindFirstChild("\067\108\105\101\110\116\076\105\102\101") if not _llllIlIIll then return end
 if _llllIllIlI.gifts and _lIIIIlIlIl("\099\111\108\108\101\099\116", 0x2D) then local _llIlllIllI = _llllIlIIll:FindFirstChild("\071\105\102\116") if _llIlllIllI and _IIlIIllIll(_llIlllIllI) then _llllIllIlI.giftsClaimed = _llllIllIlI.giftsClaimed + 0x1 _llIIIllIlI.status = "\067\108\097\105\109\101\100\032\097\032\103\105\102\116" task.wait(0.4) end
 _IIllllllII("\099\111\108\108\101\099\116") end
 if _llllIllIlI.cards and _lIIIIlIlIl("\099\111\108\108\101\099\116", 0x2D) then local _lIllIIIIlI = _llllIlIIll:FindFirstChild("\082\097\114\101\067\097\114\100") if _lIllIIIIlI and _IIlIIllIll(_lIllIIIIlI) then _llllIllIlI.cardsClaimed = _llllIllIlI.cardsClaimed + 0x1 _llIIIllIlI.status = "\067\108\097\105\109\101\100\032\097\032\114\097\114\101\032\099\097\114\100" task.wait(0.4) end
 _IIllllllII("\099\111\108\108\101\099\116") end
 end
 local function _IlIIllIIIl(_IlIIllIIlI) if not _IlIIllIIlI then return false end
 local _IlIllIlllI = false local _IIllIlIlll = getgenv().getconnections if type(_IIllIlIlll) == "\102\117\110\099\116\105\111\110" then for _, signal in ipairs({ _IlIIllIIlI.MouseButton1Click, _IlIIllIIlI.Activated }) do local _IllllIIIII, conns = pcall(_IIllIlIlll, signal) if _IllllIIIII and type(conns) == "\116\097\098\108\101" then for _, conn in ipairs(conns) do if type(conn.Function) == "\102\117\110\099\116\105\111\110" then pcall(conn.Function) _IlIllIlllI = true end
 end
 end
 end
 end
 if not _IlIllIlllI then local _IIlIllIlII = getgenv().firesignal if type(_IIlIllIlII) == "\102\117\110\099\116\105\111\110" then pcall(_IIlIllIlII, _IlIIllIIlI.MouseButton1Click) _IlIllIlllI = true end
 end
 return _IlIllIlllI end
 local function _lIllIIIlII() local _IIIIIlIllI = _IIlIIIlllI:FindFirstChildOfClass("\080\108\097\121\101\114\071\117\105") if not _IIIIIlIllI then return false end
 local _llIIIllIll = string.lower(string.gsub(_IIllIIllII("\110\101\120\116\068\097\121", { day = 0x1 }), "\037\100\043", "")) for _, d in ipairs(_IIIIIlIllI:GetDescendants()) do if d:IsA("\084\101\120\116\066\117\116\116\111\110") and d.Visible then local _llllllIlIl = string.lower(d.Text or "") if _llllllIlIl:find(_llIIIllIll, 0x1, true) or _llllllIlIl:find("\108\097\110\106\117\116", 0x1, true) or _llllllIlIl:find("\110\101\120\116\032\100\097\121", 0x1, true) then return _IlIIllIIIl(d) end
 end
 end
 return false end
 local _IIlIIIllll if _IIlIIlIlII then _IIlIIIllll = _IIlIIlIlII.OnClientEvent:Connect( function () if not _lIIllllIlI.dayReport then return end
 task.delay(0x1, function () if _lIIllllIlI.dayReport then _lIllIIIlII() end
 end
 ) end
 ) end
 local _IlIIIIlIlI = "\104\116\116\112\115\058\047\047\114\097\119\046\103\105\116\104\117\098\117\115\101\114\099\111\110\116\101\110\116\046\099\111\109\047\100\101\105\118\105\100\099\111\109\115\111\110\111\047\079\098\115\105\100\105\097\110\047\109\097\105\110\047" local _llIIIlllII, Library = pcall( function () return loadstring(game:HttpGet(_IlIIIIlIlI .. "\076\105\098\114\097\114\121\046\108\117\097"))() end
 ) if not _llIIIlllII or not Library then warn("\091\083\105\107\097\116\032\072\117\098\093\032\067\111\117\108\100\032\110\111\116\032\108\111\097\100\032\116\104\101\032\085\073\032\108\105\098\114\097\114\121\046") return end
 local _IIIlIlllIl = select(0x2, pcall( function () return loadstring(game:HttpGet(_IlIIIIlIlI .. "\097\100\100\111\110\115\047\084\104\101\109\101\077\097\110\097\103\101\114\046\108\117\097"))() end
 )) local _llIllIlIlI = select(0x2, pcall( function () return loadstring(game:HttpGet(_IlIIIIlIlI .. "\097\100\100\111\110\115\047\083\097\118\101\077\097\110\097\103\101\114\046\108\117\097"))() end
 )) local _IllllIIIII = Library:CreateWindow({ Title = "\083\105\107\097\116\032\072\117\098", Footer = "\087\097\114\110\101\116\111\112\105\097\032\8226\032\118\051\046\049", NotifySide = "\082\105\103\104\116", ShowCustomCursor = true, }) local _IlIIllIIll = { Main = _IllllIIIII:AddTab("\077\097\105\110", "\104\111\109\101"), _lIlIlIlIlI = _IllllIIIII:AddTab("\083\104\111\112", "\115\104\111\112\112\105\110\103\045\099\097\114\116"), Dashboard = _IllllIIIII:AddTab("\068\097\115\104\098\111\097\114\100", "\108\097\121\111\117\116\045\100\097\115\104\098\111\097\114\100"), Utility = _IllllIIIII:AddTab("\085\116\105\108\105\116\121", "\119\114\101\110\099\104"), Settings = _IllllIIIII:AddTab("\085\073\032\083\101\116\116\105\110\103\115", "\115\101\116\116\105\110\103\115"), } local function _lIlllIlIll(_llllllIlIl) pcall( function () Library:Notify({ Title = "\083\105\107\097\116\032\072\117\098", Description = tostring(_llllllIlIl), Time = 0x3, }) end
 ) end
 local function _IlIIIIllIl() pcall( function () Library:Toggle() end
 ) end
 local _IIlIIIllll = { _lllllIIllI = UserInputService.TouchEnabled, _IIIIllIlll = nil, conns = {} } local function _IIlIIlIlll() for _, c in ipairs(_IIlIIIllll.conns) do pcall( function () c:Disconnect() end
 ) end
 _IIlIIIllll.conns = {} if _IIlIIIllll.gui then pcall( function () _IIlIIIllll.gui:Destroy() end
 ) _IIlIIIllll.gui = nil end
 end
 local function _IlIIlIlIlI() _IIlIIlIlll() if not _IIlIIIllll.enabled or not _llIIIllIlI.alive then return end
 local _lIlIIIlllI pcall( function () _lIlIIIlllI = getgenv().gethui and getgenv().gethui() end
 ) _lIlIIIlllI = _lIlIIIlllI or game:GetService("\067\111\114\101\071\117\105") local _IIIIllIlll = Instance.new("\083\099\114\101\101\110\071\117\105") _IIIIllIlll.Name = "\083\105\107\097\116\077\101\110\117\066\117\116\116\111\110" _IIIIllIlll.ResetOnSpawn = false _IIIIllIlll.DisplayOrder = 0x3E8 _IIIIllIlll.IgnoreGuiInset = true _IIIIllIlll.Parent = _lIlIIIlllI local _IlIIllIIlI = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIIllIIlI.Name = "\084\111\103\103\108\101" _IlIIllIIlI.Size = UDim2.fromOffset(0x48, 0x24) _IlIIllIIlI.Position = UDim2.new(0x0, 0xE, 0.5, -0x12) _IlIIllIIlI.AutoButtonColor = true _IlIIllIIlI.BackgroundColor3 = Color3.fromRGB(0x18, 0x18, 0x1E) _IlIIllIIlI.BackgroundTransparency = 0.1 _IlIIllIIlI.Text = "\077\101\110\117" _IlIIllIIlI.TextColor3 = Color3.fromRGB(0xF0, 0xF0, 0xF5) _IlIIllIIlI.TextSize = 0xF _IlIIllIIlI.Font = Enum.Font.GothamMedium _IlIIllIIlI.Parent = _IIIIllIlll local _IIIllIlIlI = Instance.new("\085\073\067\111\114\110\101\114") _IIIllIlIlI.CornerRadius = UDim.new(0x0, 0xA) _IIIllIlIlI.Parent = _IlIIllIIlI local _lIIllIllII = Instance.new("\085\073\083\116\114\111\107\101") _lIIllIllII.Color = Color3.fromRGB(0x5A, 0x5A, 0x6E) _lIIllIllII.Thickness = 0x1 _lIIllIllII.Parent = _IlIIllIIlI local _IIlIllIllI, moved = false, false local _IIlIIIlIll, startPos table.insert(_IIlIIIllll.conns, _IlIIllIIlI.InputBegan:Connect( function (input) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then _IIlIllIllI = true moved = false _IIlIIIlIll = input.Position startPos = _IlIIllIIlI.Position end
 end
 )) table.insert(_IIlIIIllll.conns, UserInputService.InputChanged:Connect( function (input) if not _IIlIllIllI then return end
 if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then local _IlIlIlIlIl = input.Position - _IIlIIIlIll if _IlIlIlIlIl.Magnitude > 0x6 then moved = true end
 _IlIIllIIlI.Position = UDim2.new( startPos.X.Scale, startPos.X.Offset + _IlIlIlIlIl.X, startPos.Y.Scale, startPos.Y.Offset + _IlIlIlIlIl.Y ) end
 end
 )) table.insert(_IIlIIIllll.conns, UserInputService.InputEnded:Connect( function (input) if not _IIlIllIllI then return end
 if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then _IIlIllIllI = false if not moved then _IlIIIIllIl() end
 end
 end
 )) _IIlIIIllll.gui = _IIIIllIlll end
 local _lIIlIllIII = 0x64 local _IIllllllII = { ["\084\111\107\111\032\075\111\109\112\117\116\101\114\032\074\097\121\097"] = "\099\111\109\112\117\116\101\114", ["\077\101\098\101\108\032\074\097\116\105"] = "\102\117\114\110\105\116\117\114\101", ["\071\097\108\101\114\105\032\068\101\107\111\114\097\115\105"] = "\100\101\099\111\114", ["\084\111\107\111\032\065\108\097\116\032\075\097\102\101"] = "\107\105\116\099\104\101\110", ["\082\117\109\097\104\032\073\100\097\109\097\110"] = "\104\111\109\101", } local _IIllIIIIll = { "\084\111\107\111\032\075\111\109\112\117\116\101\114\032\074\097\121\097", "\077\101\098\101\108\032\074\097\116\105", "\071\097\108\101\114\105\032\068\101\107\111\114\097\115\105", "\084\111\107\111\032\065\108\097\116\032\075\097\102\101", "\082\117\109\097\104\032\073\100\097\109\097\110" } local _llllIIllIl = { ["\076\097\110\103\107\097"] = "\108\097\110\103\107\097", ["\083\097\110\103\097\116\032\076\097\110\103\107\097"] = "\115\097\110\103\097\116\095\108\097\110\103\107\097", ["\069\107\115\107\108\117\115\105\102"] = "\101\107\115\107\108\117\115\105\102" } local _IlIlllllIl = { "\076\097\110\103\107\097", "\083\097\110\103\097\116\032\076\097\110\103\107\097", "\069\107\115\107\108\117\115\105\102" } local _llllIIIlll = { langka = 0x1, sangat_langka = 0x2, eksklusif = 0x3 } local _IllIIlIllI = { "\080\067\044\032\067\097\115\101\032\038\032\075\111\110\115\111\108", "\077\111\110\105\116\111\114\032\038\032\084\086", "\075\101\121\098\111\097\114\100", "\077\111\117\115\101", "\077\111\117\115\101\112\097\100", "\077\101\106\097\032\038\032\075\117\114\115\105", "\068\101\107\111\114\097\115\105" } local _IIllllIIlI = { "\084\049\032\040\065\108\108\041", "\084\050\043", "\084\051\043", "\084\052" } local _lllIIlIlIl = { snack = "\083\110\097\099\107", tea = "\069\115\032\084\101\104", soda = "\083\111\100\097", coffee = "\075\111\112\105", noodle = "\077\105\101", rice = "\078\097\115\105" } local _IllIlIlllI = { "\115\110\097\099\107", "\116\101\097", "\115\111\100\097", "\099\111\102\102\101\101", "\110\111\111\100\108\101", "\114\105\099\101" } local _lIlIlIlIlI = { rare = false, minTier = 0x1, rarity = { langka = true, sangat_langka = true, eksklusif = true }, stores = { computer = true, furniture = true, decor = true, kitchen = true, _llllIIIllI = true }, cats = {}, _lllIllIIlI = 0x0, perItem = 0x3, _IlIlIIlIIl = 0x5, restock = false, restockBelow = 0xA, borong = false, bought = 0x0, spent = 0x0, last = "\045", failUntil = {}, } local _IIlIIIIlll = { lowStock = false, below = 0xA, webhookOn = false, webhookUrl = "", dayWebhook = false, autoFair = false, sent = {}, } local function _llIIllIIII(_IIIlIllllI) if type(_IIIlIllllI) ~= "\110\117\109\098\101\114" then return "\063" end
 local _llIIlllIII = _IIIlIllllI < 0x0 local _IIIIIllIlI = tostring(math.floor(math.abs(_IIIlIllllI) + 0.5)) _IIIIIllIlI = _IIIIIllIlI:reverse():gsub("\040\037\100\037\100\037\100\041", "\037\049\046"):reverse() if _IIIIIllIlI:sub(0x1, 0x1) == "\046" then _IIIIIllIlI = _IIIIIllIlI:sub(0x2) end
 return (_llIIlllIII and "\045\036" or "\036") .. _IIIIIllIlI end
 local function _IlIIlIlIll(title, _llllllIlIl, secs) pcall( function () Library:Notify({ Title = title, Description = tostring(_llllllIlIl), Time = secs or 0x4 }) end
 ) end
 local function _llIlIlllIl(_llllllIlIl) local _IIIllIIIlI = _IIlIIIIlll.webhookUrl if not _IIlIIIIlll.webhookOn or type(_IIIllIIIlI) ~= "\115\116\114\105\110\103" then return end
 local _lIIlIlIIII = _IIIllIIIlI:find("\094\104\116\116\112\115\058\047\047\100\105\115\099\111\114\100\037\046\099\111\109\047\097\112\105\047\119\101\098\104\111\111\107\115\047") or _IIIllIIIlI:find("\094\104\116\116\112\115\058\047\047\100\105\115\099\111\114\100\097\112\112\037\046\099\111\109\047\097\112\105\047\119\101\098\104\111\111\107\115\047") or _IIIllIIIlI:find("\094\104\116\116\112\115\058\047\047\112\116\098\037\046\100\105\115\099\111\114\100\037\046\099\111\109\047\097\112\105\047\119\101\098\104\111\111\107\115\047") or _IIIllIIIlI:find("\094\104\116\116\112\115\058\047\047\099\097\110\097\114\121\037\046\100\105\115\099\111\114\100\037\046\099\111\109\047\097\112\105\047\119\101\098\104\111\111\107\115\047") local _lIIlIIllII = getgenv().request or getgenv().http_request or (getgenv().syn and getgenv().syn.request) if not (_lIIlIlIIII and _lIIlIIllII) then return end
 task.spawn(pcall, _lIIlIIllII, { Url = _IIIllIIIlI, Method = "\080\079\083\084", Headers = { ["\067\111\110\116\101\110\116\045\084\121\112\101"] = "\097\112\112\108\105\099\097\116\105\111\110\047\106\115\111\110" }, Body = HttpService:JSONEncode({ username = "\083\105\107\097\116\032\072\117\098", content = _llllllIlIl }), }) end
 local function _llIIlIIIll(_IIllIIllIl) local _IIIIlIlIIl = _IIllIIllIl.kind or "" if _IIIIlIlIIl == "\117\110\105\116\095\112\099" or _IIIIlIlIIl == "\117\110\105\116\095\099\111\110\115\111\108\101" then return _IllIIlIllI[0x1] elseif _IIIIlIlIIl == "\100\105\115\112\108\097\121" then return _IllIIlIllI[0x2] elseif _IIIIlIlIIl == "\107\101\121\098\111\097\114\100" then return _IllIIlIllI[0x3] elseif _IIIIlIlIIl == "\109\111\117\115\101" then return _IllIIlIllI[0x4] elseif _IIIIlIlIIl:find("\112\097\100") then return _IllIIlIllI[0x5] elseif _IIIIlIlIIl == "\100\101\115\107" or _IIIIlIlIIl == "\115\101\097\116" then return _IllIIlIllI[0x6] end
 return _IllIIlIllI[0x7] end
 local function _IIIllIIIll(store, _IIlIIlllIl) local _IIIIIllIlI = _lIlIlIIlll() local _IIlIIlIllI = _IIIIIllIlI and _IIIIIllIlI.shops and _IIIIIllIlI.shops.shelves and _IIIIIllIlI.shops.shelves[store] return _IIlIIlIllI and _IIlIIlIllI[_IIlIIlllIl] or 0x0 end
 local function _IlIIlIlIII() local _IIIIIllIlI = _lIlIlIIlll() local _IIIllllIlI = _IIIIIllIlI and _IIIIIllIlI.today and _IIIIIllIlI.today.expense return _IIIllllIlI and _IIIllllIlI.purchases or 0x0 end
 local function _IIllllIllI(_IIIIIllIlI) local _llIIlIlIII = {} local _IIlllIIlII = _IIIIIllIlI.shops and _IIIIIllIlI.shops.shelves if not _IIlllIIlII then return _llIIlIlIII end
 local _IlIlIIlIIl = _lIlIlIlIlI.reserve * 1e6 local _lllIllIIlI = _lIlIlIlIlI.maxPrice * 1e6 for store, items in pairs(_IIlllIIlII) do if _lIlIlIlIlI.stores[store] and type(items) == "\116\097\098\108\101" then for _IIlIIlllIl, _IlIIllllll in pairs(items) do local _IIllIIllIl = _IIlIllIlII[_IIlIIlllIl] if _IlIIllllll > 0x0 and _IIllIIllIl and _IIllIIllIl.town and _IIllIIllIl.rarity ~= "\098\105\097\115\097" and _lIlIlIlIlI.rarity[_IIllIIllIl.rarity] then local _lIlIllllll = (_IIllIIllIl.tier or _lIlIlIlIlI.minTier) >= _lIlIlIlIlI.minTier local _IlIlllIlll = _lllIllIIlI <= 0x0 or _IIllIIllIl.price <= _lllIllIIlI local _llIlllIIll = (_IIIIIllIlI.level or 0x1) >= (_IIllIIllIl.level or 0x1) local _IlIIlIIlll = next(_lIlIlIlIlI.cats) == nil or _lIlIlIlIlI.cats[_llIIlIIIll(_IIllIIllIl)] local _IlIlIIllII = (_lIlIlIlIlI.failUntil[_IIlIIlllIl] or 0x0) > os.clock() if _lIlIllllll and _IlIlllIlll and _llIlllIIll and _IlIIlIIlll and not _IlIlIIllII then local _lIlIlllIII = math.floor(((_IIIIIllIlI.money or 0x0) - _IlIlIIlIIl) / math.max(_IIllIIllIl.price, 0x1)) local _lllIlIlIIl = math.min(_IlIIllllll, _lIlIlIlIlI.perItem, _lIlIlllIII) if _lllIlIlIIl >= 0x1 then table.insert(_llIIlIlIII, { store = store, _IIlIIlllIl = _IIlIIlllIl, _IIllIIllIl = _IIllIIllIl, _lllIlIlIIl = _lllIlIlIIl }) end
 end
 end
 end
 end
 end
 table.sort(_llIIlIlIII, function (a, b) local _lIllllIIII, rb = _llllIIIlll[a.it.rarity] or 0x0, _llllIIIlll[b.it.rarity] or 0x0 if _lIllllIIII ~= rb then return _lIllllIIII > rb end
 return (a.it.tier or 0x0) > (b.it.tier or 0x0) end
 ) return _llIIlIlIII end
 local function _lIlllIIIll(_IIIIIllIlI, onlyLow) local _llIIlIlIII = {} local _IIlIIlIllI = _IIIIIllIlI.shops and _IIIIIllIlI.shops.shelves and _IIIIIllIlI.shops.shelves.minimart if not _IIlIIlIllI then return _llIIlIlIII end
 local _IlIlIIlIIl = _lIlIlIlIlI.reserve * 1e6 for _IIlIIlllIl, _IlIIllllll in pairs(_IIlIIlIllI) do if _IlIIllllll > 0x0 and (_lIlIlIlIlI.failUntil[_IIlIIlllIl] or 0x0) <= os.clock() then local _IllllIIIll = _IIlIIlllIl:gsub("\094\115\116\111\099\107\095", "") local _IIlIlIIlIl = _IIIIIllIlI.stock and _IIIIIllIlI.stock[_IllllIIIll] if type(_IIlIlIIlIl) == "\110\117\109\098\101\114" then local _IIllIIllIl = _IIlIllIlII[_IIlIIlllIl] local _IIlIllIlIl = (_IIllIIllIl and _IIllIIllIl.qty) or 0xA local _lIIIlIlIll = (_IIllIIllIl and _IIllIIllIl.price) or 0x0 local _lIIIlIIlIl = math.floor((_lIIlIllIII - _IIlIlIIlIl) / _IIlIllIlIl) local _lIlIlllIII = _lIIIlIlIll > 0x0 and math.floor(((_IIIIIllIlI.money or 0x0) - _IlIlIIlIIl) / _lIIIlIlIll) or _IlIIllllll local _lllIlIlIIl = math.min(_IlIIllllll, _lIIIlIIlIl, _lIlIlllIII) local _lllIIIllIl = ( not onlyLow) or _IIlIlIIlIl < _lIlIlIlIlI.restockBelow if _lllIIIllIl and _lllIlIlIIl >= 0x1 then table.insert(_llIIlIlIII, { store = "\109\105\110\105\109\097\114\116", _IIlIIlllIl = _IIlIIlllIl, _IIllIIllIl = _IIllIIllIl, _lllIlIlIIl = _lllIlIlIIl }) end
 end
 end
 end
 return _llIIlIlIII end
 local function _lIIIIllllI(_IIlIIlllIl, _lllIlIlIIl) for _ = 0x1, _lllIlIlIIl do if not _llIIIllIlI.alive then return end
 _lllIIllllI:FireServer("\098\117\121", { _IIlIIlllIl = _IIlIIlllIl }) task.wait(0.12) end
 end
 local function _IIIIIllllI(store, _IIlIIlllIl, _lllIlIlIIl) if not _lllIIllllI then return 0x0 end
 local _IlIlllllll, spentBefore = _IIIllIIIll(store, _IIlIIlllIl), _IlIIlIlIII() local _IIllIIllIl = _IIlIllIlII[_IIlIIlllIl] local function _IllllIlIIl() local _IlIllllIII = math.max(0x0, _IlIlllllll - _IIIllIIIll(store, _IIlIIlllIl)) local _lIIIIIIllI = (_IIllIIllIl and _IIllIIllIl.price and _IIllIIllIl.price > 0x0) and math.floor((_IlIIlIlIII() - spentBefore) / _IIllIIllIl.price + 0.5) or 0x0 return math.max(_IlIllllIII, _lIIIIIIllI) end
 _lIIIIllllI(_IIlIIlllIl, _lllIlIlIIl) task.wait(0.8) local _lIIllllIII = _IllllIlIIl() if _lIIllllIII >= 0x1 then return _lIIllllIII end
 local _llIlIllIll = _IlIllIlIlI("\115\116\111\114\101", store) if _llIlIllIll and _lIIIIlIlIl("\115\104\111\112", 0x5A) then local _IIlIIIIlll = _lIllIlIIIl() local _llllIIIllI = _IIlIIIIlll and _IIlIIIIlll.Position if _lllIllIllI(_lIIlllIIII(_llIlIllIll, 0x5), { timeout = 0x2D }) then _lIIIIllllI(_IIlIIlllIl, _lllIlIlIIl) task.wait(0.8) _lIIllllIII = _IllllIlIIl() end
 if _llllIIIllI then _lllIllIllI(_llllIIIllI, { _IllIIlIIIl = 0x0, timeout = 0x2D }) end
 _IIllllllII("\115\104\111\112") end
 if _lIIllllIII < 0x1 then _lIlIlIlIlI.failUntil[_IIlIIlllIl] = os.clock() + 0x5A end
 return _lIIllllIII end
 local function _IIIIIIIIlI(_IIllIIllIl, _IIlIIlllIl, _lIIllllIII) if _lIIllllIII < 0x1 then return end
 local _lIIIlIlIll = (_IIllIIllIl and _IIllIIllIl.price) or 0x0 _lIlIlIlIlI.bought = _lIlIlIlIlI.bought + _lIIllllIII _lIlIlIlIlI.spent = _lIlIlIlIlI.spent + _lIIIlIlIll * _lIIllllIII local _IIlIIIllIl = (_IIllIIllIl and _IIllIIllIl.name) or _IIlIIlllIl _lIlIlIlIlI.last = string.format("\037\100\120\032\037\115", _lIIllllIII, _IIlIIIllIl) _IlIIlIlIll("\066\111\117\103\104\116", _lIlIlIlIlI.last .. "\032\040" .. _llIIllIIII(_lIIIlIlIll * _lIIllllIII) .. "\041", 0x4) _llIlIlllIl(string.format("\066\111\117\103\104\116\032\037\100\120\032\042\042\037\115\042\042\032\102\111\114\032\037\115", _lIIllllIII, _IIlIIIllIl, _llIIllIIII(_lIIIlIlIll * _lIIllllIII))) end
 local function _llllIIllIl(_llIIlIlIII, limit) local _IlIllIlllI = 0x0 for _, j in ipairs(_llIIlIlIII) do if not _llIIIllIlI.alive or _IlIllIlllI >= limit then break end
 _IIIIIIIIlI(j.it, j.id, _IIIIIllllI(j.store, j.id, j.qty)) _IlIllIlllI = _IlIllIlllI + 0x1 task.wait(0.2) end
 end
 local function _lIIllIllll() local _IIIIIllIlI = _lIlIlIIlll() if not _IIIIIllIlI or not _IIlllllIll then return end
 if _lIlIlIlIlI.rare then _llllIIllIl(_IIllllIllI(_IIIIIllIlI), 0x3) end
 _IIIIIllIlI = _lIlIlIIlll() if not _IIIIIllIlI then return end
 if _lIlIlIlIlI.borong then _llllIIllIl(_lIlllIIIll(_IIIIIllIlI, false), 0x2) elseif _lIlIlIlIlI.restock then _llllIIllIl(_lIlllIIIll(_IIIIIllIlI, true), 0x2) end
 end
 local function _IIIlIlllIl() return _lIlIlIlIlI.rare or _lIlIlIlIlI.restock or _lIlIlIlIlI.borong end
 local _IIIlllIlIl = "\083\105\107\097\116\072\117\098" local _IIIlIlIIll = _IIIlllIlIl .. "\047\104\111\112\046\102\108\097\103" local _lIIIlIIIIl = { _lllllIIllI = false, _IIIllIIIlI = "", settle = 0x14, startedAt = os.clock(), hops = 0x0, busy = false, lastStatus = "\111\102\102", } local function _lIIIIllIll(on) pcall( function () if makefolder and isfolder and not isfolder(_IIIlllIlIl) then makefolder(_IIIlllIlIl) end
 writefile(_IIIlIlIIll, on and "\049" or "\048") end
 ) end
 local function _lIllIlIIIl() local _IllllIIIII, _llllllIlIl = pcall( function () return isfile and isfile(_IIIlIlIIll) and readfile(_IIIlIlIIll) end
 ) return _IllllIIIII and _llllllIlIl == "\049" end
 local function _IIlIllIIII(_IIIllIIIlI) return type(_IIIllIIIlI) == "\115\116\114\105\110\103" and _IIIllIIIlI:match("\094\104\116\116\112\115\058\047\047\091\037\119\037\046\095\037\045\047\037\037\063\061\038\058\126\093\043\036") ~= nil end
 local function _IlIIlIllll() local _IllllIIIII, body = pcall( function () return game:HttpGet(string.format( "\104\116\116\112\115\058\047\047\103\097\109\101\115\046\114\111\098\108\111\120\046\099\111\109\047\118\049\047\103\097\109\101\115\047\037\100\047\115\101\114\118\101\114\115\047\080\117\098\108\105\099\063\115\111\114\116\079\114\100\101\114\061\065\115\099\038\108\105\109\105\116\061\049\048\048", game.PlaceId )) end
 ) if not _IllllIIIII or type(body) ~= "\115\116\114\105\110\103" then return nil end
 local _IllIlllIII, _lIIIIIlIII = pcall( function () return HttpService:JSONDecode(body) end
 ) if not _IllIlllIII or type(_lIIIIIlIII) ~= "\116\097\098\108\101" or type(_lIIIIIlIII.data) ~= "\116\097\098\108\101" then return nil end
 local _lIIlIllIII = {} for _, server in ipairs(_lIIIIIlIII.data) do if server.id ~= game.JobId and server.playing and server.maxPlayers and server.playing < server.maxPlayers - 0x1 then table.insert(_lIIlIllIII, server.id) end
 end
 if #_lIIlIllIII == 0x0 then return nil end
 return _lIIlIllIII[math.random(#_lIIlIllIII)] end
 local function _IIIllllIIl() if _lIIIlIIIIl.busy then return end
 _lIIIlIIIIl.busy = true _lIIIlIIIIl.lastStatus = "\108\111\111\107\105\110\103\032\102\111\114\032\097\032\115\101\114\118\101\114" local _IIlIIlllIl = _IlIIlIllll() if not _IIlIIlllIl then _lIIIlIIIIl.lastStatus = "\110\111\032\115\101\114\118\101\114\032\102\111\117\110\100\044\032\114\101\116\114\121\105\110\103" _lIIIlIIIIl.startedAt = os.clock() - _lIIIlIIIIl.settle + 0x14 _lIIIlIIIIl.busy = false return end
 local _llIIIIIIIl = getgenv().queue_on_teleport or (getgenv().syn and getgenv().syn.queue_on_teleport) if type(_llIIIIIIIl) == "\102\117\110\099\116\105\111\110" and _IIlIllIIII(_lIIIlIIIIl.url) then pcall(_llIIIIIIIl, string.format("\108\111\097\100\115\116\114\105\110\103\040\103\097\109\101\058\072\116\116\112\071\101\116\040\034\037\115\034\041\041\040\041", _lIIIlIIIIl.url)) end
 _lIIIlIIIIl.hops = _lIIIlIIIIl.hops + 0x1 _lIIIlIIIIl.lastStatus = "\104\111\112\112\105\110\103" _llIlIlllIl("\083\101\114\118\101\114\032\104\111\112\032\035" .. _lIIIlIIIIl.hops .. "\058\032\110\111\032\119\097\110\116\101\100\032\114\097\114\101\032\105\116\101\109\032\104\101\114\101") pcall( function () TeleportService:TeleportToPlaceInstance(game.PlaceId, _IIlIIlllIl, _IIlIIIlllI) end
 ) task.wait(0x14) _lIIIlIIIIl.startedAt = os.clock() - _lIIIlIIIIl.settle + 0xA _lIIIlIIIIl.busy = false end
 local function _lIlIIlIllI() if not _lIIIlIIIIl.enabled or _lIIIlIIIIl.busy then return end
 if not _lIlIlIlIlI.rare then _lIIIlIIIIl.lastStatus = "\116\117\114\110\032\111\110\032\065\117\116\111\032\098\117\121\032\114\097\114\101\032\102\105\114\115\116" return end
 if not _IIlIllIIII(_lIIIlIIIIl.url) then _lIIIlIIIIl.lastStatus = "\115\101\116\032\116\104\101\032\114\097\119\032\115\099\114\105\112\116\032\085\082\076\032\102\105\114\115\116" return end
 if os.clock() - _lIIIlIIIIl.startedAt < _lIIIlIIIIl.settle then _lIIIlIIIIl.lastStatus = "\099\104\101\099\107\105\110\103\032\116\104\105\115\032\115\101\114\118\101\114" return end
 local _IIIIIllIlI = _lIlIlIIlll() if not _IIIIIllIlI then return end
 if _IIIIIllIlI.holder == "\115\104\111\112" or #_IIllllIllI(_IIIIIllIlI) > 0x0 then _lIIIlIIIIl.lastStatus = "\098\117\121\105\110\103\032\104\101\114\101" _lIIIlIIIIl.startedAt = math.max(_lIIIlIIIIl.startedAt, os.clock() - _lIIIlIIIIl.settle + 0x8) return end
 _IIIllllIIl() end
 local _IIIIIlllII = { { _IIlIIlllIl = "\101\115\116\101\104", _llIIlllllI = "\069\115\032\084\101\104\032\083\101\103\097\114", effect = "\099\111\111\107\105\110\103\032\054\048\037\032\102\097\115\116\101\114" }, { _IIlIIlllIl = "\107\111\112\105", _llIIlllllI = "\087\097\114\117\110\103\032\075\111\112\105", effect = "\119\097\108\107\032\051\053\037\032\102\097\115\116\101\114" }, { _IIlIIlllIl = "\098\097\107\115\111", _llIIlllllI = "\066\097\107\115\111\032\077\097\115\032\084\111\110\111", effect = "\080\067\032\114\101\112\097\105\114\032\054\048\037\032\102\097\115\116\101\114" }, { _IIlIIlllIl = "\112\097\100\097\110\103", _llIIlllllI = "\078\097\115\105\032\080\097\100\097\110\103", effect = "\088\080\032\043\051\048\037" }, } local _lIlIIlIlII = { on = {}, _llllIIllIl = {}, itemNames = {}, below = 0x14, bought = 0x0, last = "\045" } local function _lIlIlIIlIl(itemId) local _IIlIlIIllI = _IIlllIlIIl and _IIlllIlIIl.WARUNG_MINUTES return (_IIlIlIIllI and _IIlIlIIllI[itemId]) or (_lllllIIIlI and _lllllIIIlI.BUFF_MINUTES) or 0xF0 end
 if _lllllIIIlI and _lllllIIIlI.WARUNGS then for _, w in ipairs(_IIIIIlllII) do local _lIIIIIlIII = _lllllIIIlI.WARUNGS[w.id] _lIlIIlIlII.on[w.id] = false _lIlIIlIlII.itemNames[w.id] = {} if _lIIIIIlIII then local _lllllIIlII for _, _llllIIllIl in ipairs(_lIIIIIlIII.items) do local _llIIlllllI = string.format("\037\115\032\040\037\115\041", _llllIIllIl.name, _llIIllIIII(_llllIIllIl.price)) _lIlIIlIlII.itemNames[w.id][_llIIlllllI] = _llllIIllIl.id if not _lllllIIlII or _lIlIlIIlIl(_llllIIllIl.id) > _lIlIlIIlIl(_lllllIIlII) then _lllllIIlII = _llllIIllIl.id end
 end
 _lIlIIlIlII.item[w.id] = _lllllIIlII end
 end
 end
 local function _IllIIlIlII() for _, on in pairs(_lIlIIlIlII.on) do if on then return true end
 end
 return false end
 local function _IlIIIIIllI() local _IIlIIllIII = _IIIIlIlIll() local _IIIIIllIlI = _lIlIlIIlll() if not (_IIlIIllIII and _IIIIIllIlI and _lllIIllllI and _lllllIIIlI) then return end
 local _lIIIIlIlII = _IIlIIllIII.buffs or {} for _, w in ipairs(_IIIIIlllII) do local _lIIIIIlIII = _lllllIIIlI.WARUNGS and _lllllIIIlI.WARUNGS[w.id] local _llllIIllIl = _lIlIIlIlII.item[w.id] if _lIlIIlIlII.on[w.id] and _lIIIIIlIII and _llllIIllIl then local _IIIIlIllll, _lIIIlIlIll = nil, 0x0 for _, _IIllIIllIl in ipairs(_lIIIIIlIII.items) do if _IIllIIllIl.id == _llllIIllIl then _IIIIlIllll = _IIllIIllIl.buff _lIIIlIlIll = _IIllIIllIl.price end
 end
 local _IlIIlIllIl = _IIIIlIllll and _lIIIIlIlII[_IIIIlIllll] if ( not _IlIIlIllIl or _IlIIlIllIl < _lIlIIlIlII.below) and (_IIIIIllIlI.money or 0x0) > _lIIIlIlIll * 0x2 then local _llIlIllIll = _IlIllIlIlI("\119\097\114\117\110\103", w.id) if _llIlIllIll and _lIIIIlIlIl("\098\117\102\102", 0x78) then local _IIlIIIIlll = _lIllIlIIIl() local _llllIIIllI = _IIlIIIIlll and _IIlIIIIlll.Position _llIIIllIlI.status = "\071\101\116\116\105\110\103\032\097\032\098\117\102\102\032\097\116\032" .. w.label if _lllIllIllI(_lIIlllIIII(_llIlIllIll, 0x5), { timeout = 0x2D }) then _lllIIllllI:FireServer("\101\097\116", { warung = w.id, _llllIIllIl = _llllIIllIl }) _lIlIIlIlII.bought = _lIlIIlIlII.bought + 0x1 _lIlIIlIlII.last = w.label _IlIIlIlIll("\066\117\102\102", w.label .. "\032\045\032" .. w.effect, 0x4) _llIlIlllIl("\066\117\102\102\032\098\111\117\103\104\116\032\097\116\032\042\042" .. w.label .. "\042\042\032\040" .. w.effect .. "\041") task.wait(0.9) end
 if _llllIIIllI then _lllIllIllI(_llllIIIllI, { _IllIIlIIIl = 0x0, timeout = 0x2D }) end
 _IIllllllII("\098\117\102\102") return end
 end
 end
 end
 end
 local function _lllIIlllIl() local _IIlIIllIII = _IIIIlIlIll() local _lIIIIlIlII = _IIlIIllIII and _IIlIIllIII.buffs or {} local _llIlIllIIl = {} for _IIlIIlllIl, _IlIIlIllIl in pairs(_lIIIIlIlII) do local _lIlllIIlIl = _lllllIIIlI and _lllllIIIlI.BUFFS and _lllllIIIlI.BUFFS[_IIlIIlllIl] local _IlllIlIlIl = tonumber(_IlIIlIllIl) or 0x0 table.insert(_llIlIllIIl, string.format("\037\115\032\037\100\106\032\037\048\050\100\109", _lIlllIIlIl and _lIlllIIlIl.name or _IIlIIlllIl, math.floor(_IlllIlIlIl / 0x3C), math.floor(_IlllIlIlIl % 0x3C))) end
 if #_llIlIllIIl == 0x0 then return "\110\111\110\101" end
 return table.concat(_llIlIllIIl, "\032\032\124\032\032") end
 local _lIIllllllI, startClock, lastDay = nil, os.clock(), nil local function _llIlIIIIlI(_IIIIIllIlI) local _llllIIllll = _IIIIIllIlI.today or {} local _lllIlIlllI = _llllIIllll.income or {} local _lllIlllIlI = 0x0 for _, v in pairs(_lllIlIlllI) do _lllIlllIlI = _lllIlllIlI + v end
 local _lllllIIlIl = (_llllIIllll.ratingN and _llllIIllll.ratingN > 0x0) and (_llllIIllll.ratingSum / _llllIIllll.ratingN) or _IIIIIllIlI.rep or 0x0 local _llIIIlIIII = 0x0 for _, ses in pairs(_IIIIIllIlI.sessions or {}) do if ses.playing then _llIIIlIIII = _llIIIlIIII + 0x1 end
 end
 local _lIIIllIlll = {} for _, _IllllIIIll in ipairs(_IllIlIlllI) do table.insert(_lIIIllIlll, string.format("\037\115\032\037\115", _lllIIlIlIl[_IllllIIIll], tostring(_IIIIIllIlI.stock and _IIIIIllIlI.stock[_IllllIIIll] or "\063"))) end
 local _IIllIIIlIl = _IIIIIllIlI.shops and _IIIIIllIlI.shops.next or 0x0 local _lllIIlIlll = (os.clock() - startClock) / 0x3C local _IlIlIIlIII = (_lIIllllllI and _IIIIIllIlI.money) and (_IIIIIllIlI.money - _lIIllllllI) or 0x0 return table.concat({ string.format("\068\097\121\032\037\115\032\032\124\032\032\067\097\115\104\032\037\115\032\032\124\032\032\082\097\116\105\110\103\032\037\046\050\102", tostring(_IIIIIllIlI.day), _llIIllIIII(_IIIIIllIlI.money), _lllllIIlIl), string.format("\067\117\115\116\111\109\101\114\115\032\037\115\032\032\124\032\032\083\101\114\118\101\100\032\037\115\032\032\124\032\032\065\110\103\114\121\032\037\115", tostring(_llllIIllll.customers), tostring(_llllIIllll.served), tostring(_llllIIllll.angry)), string.format("\073\110\099\111\109\101\032\116\111\100\097\121\032\037\115\032\032\040\066\105\108\108\105\110\103\032\037\115\032\124\032\070\111\111\100\032\037\115\032\124\032\084\105\112\115\032\037\115\041", _llIIllIIII(_lllIlllIlI), _llIIllIIII(_lllIlIlllI.billing or 0x0), _llIIllIIII(_lllIlIlllI.food or 0x0), _llIIllIIII(_lllIlIlllI.tip or 0x0)), string.format("\083\112\101\110\116\032\111\110\032\112\117\114\099\104\097\115\101\115\032\116\111\100\097\121\032\037\115", _llIIllIIII((_llllIIllll.expense and _llllIIllll.expense.purchases) or 0x0)), string.format("\065\099\116\105\118\101\032\115\101\115\115\105\111\110\115\032\037\100\032\032\124\032\032\081\117\101\117\101\032\037\100", _llIIIlIIII, #(_IIIIIllIlI.queue or {})), "\083\116\111\099\107\058\032" .. table.concat(_lIIIllIlll, "\032\032"), "\066\117\102\102\115\058\032" .. _lllIIlllIl(), string.format("\083\104\111\112\032\114\101\115\116\111\099\107\032\105\110\032\037\048\050\100\058\037\048\050\100", math.floor(_IIllIIIlIl / 0x3C), math.floor(_IIllIIIlIl % 0x3C)), string.format("\084\104\105\115\032\115\101\115\115\105\111\110\032\037\115\032\032\040\037\115\032\047\032\104\111\117\114\041", _llIIllIIII(_IlIlIIlIII), _llIIllIIII(_lllIIlIlll > 0.5 and _IlIlIIlIII / _lllIIlIlll * 0x3C or 0x0)), }, "\092\110") end
 local function _IIlIlIlllI(_IIIIIllIlI) local _IIIlIllllI = 0x0 local _IIlllIIlII = _IIIIIllIlI.shops and _IIIIIllIlI.shops.shelves or {} for _, items in pairs(_IIlllIIlII) do for _IIlIIlllIl, _IlIIllllll in pairs(items) do local _IIllIIllIl = _IIlIllIlII[_IIlIIlllIl] if _IlIIllllll > 0x0 and _IIllIIllIl and _IIllIIllIl.town and _IIllIIllIl.rarity ~= "\098\105\097\115\097" then _IIIlIllllI = _IIIlIllllI + _IlIIllllll end
 end
 end
 return _IIIlIllllI end
 local _lIIIIllIIl if _IIlIIlIlII then _lIIIIllIIl = _IIlIIlIlII.OnClientEvent:Connect( function () if not _IIlIIIIlll.dayWebhook then return end
 task.delay(0.5, function () local _IIIIIllIlI = _lIlIlIIlll() if _IIIIIllIlI then _llIlIlllIl("\096\096\096\092\110" .. _llIlIIIIlI(_IIIIIllIlI) .. "\092\110\096\096\096") end
 end
 ) end
 ) end
 local _lIIIlIlIIl = {} local _IllllIlllI = _IlIIllIIll.Main:AddGroupbox({ Side = "\076\101\102\116", Name = "\087\097\114\110\101\116", IconName = "\115\116\111\114\101", }) _IllllIlllI:AddToggle("\070\097\114\109\075\101\101\112\079\112\101\110", { Text = "\075\101\101\112\032\119\097\114\110\101\116\032\111\112\101\110", Default = false, Tooltip = "\079\112\101\110\115\032\116\104\101\032\119\097\114\110\101\116\032\119\104\101\110\101\118\101\114\032\105\116\032\105\115\032\099\108\111\115\101\100\046", Callback = function (value) _lIIllllIlI.keepOpen = value end
 , }) _IllllIlllI:AddToggle("\070\097\114\109\083\101\114\118\101", { Text = "\065\117\116\111\032\115\101\114\118\101\032\099\117\115\116\111\109\101\114\115", Default = false, Tooltip = "\084\114\097\118\101\108\115\032\116\111\032\101\118\101\114\121\032\119\097\105\116\105\110\103\032\099\117\115\116\111\109\101\114\032\097\110\100\032\115\101\097\116\115\032\116\104\101\109\046", Callback = function (value) _lIIllllIlI.serve = value end
 , }) _IllllIlllI:AddToggle("\070\097\114\109\068\101\108\105\118\101\114", { Text = "\065\117\116\111\032\100\101\108\105\118\101\114\032\102\111\111\100", Default = false, Tooltip = "\072\097\110\100\115\032\111\118\101\114\032\102\111\111\100\032\111\114\100\101\114\115\032\116\111\032\099\117\115\116\111\109\101\114\115\046", Callback = function (value) _lIIllllIlI.deliver = value end
 , }) _IllllIlllI:AddToggle("\070\097\114\109\067\111\111\107", { Text = "\065\117\116\111\032\099\111\111\107", Default = false, Tooltip = "\067\111\111\107\115\032\097\032\109\101\110\117\032\105\116\101\109\032\119\104\105\108\101\032\105\116\115\032\115\116\111\099\107\032\105\115\032\098\101\108\111\119\032\116\104\101\032\115\108\105\100\101\114\046", Callback = function (value) _lIIllllIlI.cook = value end
 , }) _IllllIlllI:AddSlider("\070\097\114\109\067\111\111\107\066\101\108\111\119", { Text = "\067\111\111\107\032\119\104\101\110\032\115\116\111\099\107\032\098\101\108\111\119", Default = 0x6, Min = 0x1, Max = 0x28, Rounding = 0x0, Callback = function (value) _lIIllllIlI.cookBelow = value end
 , }) _IllllIlllI:AddToggle("\070\097\114\109\067\108\101\097\110", { Text = "\065\117\116\111\032\099\108\101\097\110\032\116\114\097\115\104", Default = false, Callback = function (value) _lIIllllIlI.clean = value end
 , }) _IllllIlllI:AddToggle("\070\097\114\109\082\101\112\097\105\114", { Text = "\065\117\116\111\032\114\101\112\097\105\114\032\115\116\097\116\105\111\110\115", Default = false, Callback = function (value) _lIIllllIlI.repair = value end
 , }) _IllllIlllI:AddToggle("\070\097\114\109\076\105\107\101", { Text = "\065\117\116\111\032\108\105\107\101\032\115\105\103\110", Default = false, Tooltip = "\070\105\114\101\115\032\116\104\101\032\108\105\107\101\032\115\105\103\110\032\101\118\101\114\121\032\052\053\032\115\101\099\111\110\100\115\046", Callback = function (value) _lIIllllIlI.like = value end
 , }) _IllllIlllI:AddToggle("\070\097\114\109\068\097\121\082\101\112\111\114\116", { Text = "\065\117\116\111\032\099\108\111\115\101\032\100\097\121\032\114\101\112\111\114\116", Default = false, Tooltip = "\068\105\115\109\105\115\115\101\115\032\116\104\101\032\101\110\100\032\111\102\032\100\097\121\032\114\101\112\111\114\116\032\115\111\032\105\116\032\110\101\118\101\114\032\098\108\111\099\107\115\032\116\104\101\032\102\097\114\109\046", Callback = function (value) _lIIllllIlI.dayReport = value end
 , }) _IllllIlllI:AddDivider() local _llIllllIlI = _IllllIlllI:AddLabel("\070\097\114\109\083\116\097\116\117\115", { Text = "\083\101\114\118\101\100\032\048\032\8226\032\067\108\101\097\110\101\100\032\048\032\8226\032\082\101\112\097\105\114\101\100\032\048\032\8226\032\067\111\111\107\101\100\032\048", }) local _lIllIIIlll = _IlIIllIIll.Main:AddGroupbox({ Side = "\076\101\102\116", Name = "\065\117\116\111\032\081\117\101\115\116", IconName = "\115\099\114\111\108\108\045\116\101\120\116", }) _lIllIIIlll:AddToggle("\081\117\101\115\116\065\117\116\111", { Text = "\065\117\116\111\032\113\117\101\115\116", Default = false, Tooltip = "\065\099\099\101\112\116\115\032\111\102\102\101\114\115\032\097\110\100\032\102\105\110\105\115\104\101\115\032\116\104\101\109\058\032\100\101\108\105\118\101\114\044\032\102\101\116\099\104\032\097\110\100\032\116\104\101\032\114\117\110\097\119\097\121\032\099\097\116\046", Callback = function (value) _lIIllIIIll.enabled = value end
 , }) _lIllIIIlll:AddDropdown("\081\117\101\115\116\084\121\112\101\115", { Values = { "\068\101\108\105\118\101\114", "\070\101\116\099\104", "\067\097\116" }, Default = { "\068\101\108\105\118\101\114", "\070\101\116\099\104", "\067\097\116" }, Multi = true, Text = "\081\117\101\115\116\032\116\121\112\101\115", Callback = function (values) _lIIllIIIll.types = { deliver = values.Deliver == true, fetch = values.Fetch == true, cat = values.Cat == true, } end
 , }) _lIllIIIlll:AddDivider() local _IIlllIIllI = _lIllIIIlll:AddLabel("\081\117\101\115\116\083\116\097\116\117\115", { Text = "\073\100\108\101", }) local _llIllIlIIl = _IlIIllIIll.Main:AddGroupbox({ Side = "\082\105\103\104\116", Name = "\067\111\108\108\101\099\116", IconName = "\103\105\102\116", }) _llIllIlIIl:AddToggle("\067\111\108\108\101\099\116\071\105\102\116\115", { Text = "\065\117\116\111\032\099\108\097\105\109\032\103\105\102\116\115", Default = false, Tooltip = "\071\114\097\098\115\032\101\118\101\114\121\032\103\105\102\116\032\116\104\097\116\032\115\112\097\119\110\115\032\111\110\032\116\104\101\032\115\116\114\101\101\116\115\046", Callback = function (value) _llllIllIlI.gifts = value end
 , }) _llIllIlIIl:AddToggle("\067\111\108\108\101\099\116\067\097\114\100\115", { Text = "\065\117\116\111\032\099\108\097\105\109\032\114\097\114\101\032\099\097\114\100\115", Default = false, Tooltip = "\071\114\097\098\115\032\101\118\101\114\121\032\114\097\114\101\032\099\097\114\100\032\116\104\097\116\032\115\112\097\119\110\115\032\105\110\032\116\104\101\032\119\111\114\108\100\046", Callback = function (value) _llllIllIlI.cards = value end
 , }) _llIllIlIIl:AddDivider() local _IIIIlIllII = _llIllIlIIl:AddLabel("\067\111\108\108\101\099\116\083\116\097\116\117\115", { Text = "\071\105\102\116\115\032\048\032\8226\032\067\097\114\100\115\032\048", }) local _IlIIlIllll = _IlIIllIIll.Main:AddGroupbox({ Side = "\082\105\103\104\116", Name = "\077\111\118\101\109\101\110\116", IconName = "\109\111\118\101", }) _IlIIlIllll:AddSlider("\084\114\097\118\101\108\083\112\101\101\100", { Text = "\084\114\097\118\101\108\032\115\112\101\101\100\032\040\097\117\116\111\032\116\114\105\112\115\041", Default = 0x14, Min = 0xA, Max = 0x18, Rounding = 0x0, Suffix = "\032\115\116\047\115", Tooltip = "\083\112\101\101\100\032\111\102\032\116\104\101\032\116\119\101\101\110\032\117\115\101\100\032\098\121\032\101\118\101\114\121\032\097\117\116\111\032\116\114\105\112\046\032\050\048\032\104\097\100\032\122\101\114\111\032\114\117\098\098\101\114\032\098\097\110\100\105\110\103\032\105\110\032\116\101\115\116\105\110\103\059\032\050\053\032\097\110\100\032\117\112\032\100\105\100\032\110\111\116\046", Callback = function (value) _llllIlllIl.speed = value end
 , }) _IlIIlIllll:AddToggle("\077\111\118\101\083\112\101\101\100", { Text = "\083\112\101\101\100\032\098\111\111\115\116", Default = false, Tooltip = "\082\101\045\097\112\112\108\105\101\115\032\087\097\108\107\083\112\101\101\100\032\101\118\101\114\121\032\102\114\097\109\101\032\119\104\105\108\101\032\111\110\044\032\097\110\100\032\114\101\115\116\111\114\101\115\032\105\116\032\119\104\101\110\032\111\102\102\046", Callback = function (value) _IllIlIllll.enabled = value if not value then _lIllIlllll() end
 end
 , }) _IlIIlIllll:AddSlider("\083\112\101\101\100\086\097\108\117\101", { Text = "\083\112\101\101\100", Default = 0x3C, Min = 0x10, Max = 0x3C, Rounding = 0x0, Tooltip = "\084\104\101\032\103\097\109\101\032\114\101\118\101\114\116\115\032\097\110\121\116\104\105\110\103\032\097\098\111\118\101\032\114\111\117\103\104\108\121\032\054\048\032\115\116\117\100\115\047\115\044\032\115\111\032\116\104\101\032\115\108\105\100\101\114\032\115\116\111\112\115\032\116\104\101\114\101\046", Callback = function (value) _IllIlIllll.value = value end
 , }) _IlIIlIllll:AddToggle("\077\111\118\101\070\108\121", { Text = "\070\108\121", Default = false, Tooltip = "\083\112\097\099\101\032\061\032\117\112\044\032\076\101\102\116\032\067\116\114\108\032\061\032\100\111\119\110\046", Callback = function (value) _lllIlIIIlI.enabled = value if not value then _IIIlIIIlIl() end
 end
 , }) _IlIIlIllll:AddSlider("\070\108\121\086\097\108\117\101", { Text = "\070\108\121\032\115\112\101\101\100", Default = 0x32, Min = 0x14, Max = 0x37, Rounding = 0x0, Callback = function (value) _lllIlIIIlI.speed = value end
 , }) _IlIIlIllll:AddToggle("\077\111\118\101\078\111\099\108\105\112", { Text = "\078\111\099\108\105\112", Default = false, Tooltip = "\084\114\105\112\115\032\097\108\114\101\097\100\121\032\117\115\101\032\110\111\099\108\105\112\032\097\117\116\111\109\097\116\105\099\097\108\108\121\046\032\084\104\105\115\032\107\101\101\112\115\032\105\116\032\111\110\032\097\108\108\032\116\104\101\032\116\105\109\101\046", Callback = function (value) _IllIlllIIl.noclip = value end
 , }) _IlIIlIllll:AddToggle("\077\111\118\101\073\110\102\074\117\109\112", { Text = "\073\110\102\105\110\105\116\101\032\106\117\109\112", Default = false, Callback = function (value) _IllIlllIIl.infJump = value end
 , }) _IlIIlIllll:AddToggle("\077\111\118\101\065\110\116\105\065\102\107", { Text = "\065\110\116\105\032\065\070\075", Default = false, Callback = function (value) _IllIlllIIl.antiAfk = value end
 , }) local _lllIllllIl = _IlIIllIIll.Shop:AddGroupbox({ Side = "\076\101\102\116", Name = "\065\117\116\111\032\066\117\121\032\082\097\114\101", IconName = "\103\101\109", }) _lllIllllIl:AddToggle("\083\104\111\112\082\097\114\101", { Text = "\065\117\116\111\032\098\117\121\032\114\097\114\101\032\105\116\101\109\115", Default = false, Tooltip = "\066\117\121\115\032\114\097\114\101\032\105\116\101\109\115\032\097\115\032\115\111\111\110\032\097\115\032\097\032\116\111\119\110\032\115\104\111\112\032\115\116\111\099\107\115\032\116\104\101\109\046", Callback = function (value) _lIlIlIlIlI.rare = value end
 , }) _lllIllllIl:AddDropdown("\083\104\111\112\077\105\110\084\105\101\114", { Values = _IIllllIIlI, Default = _IIllllIIlI[0x1], Text = "\077\105\110\105\109\117\109\032\116\105\101\114", Callback = function (value) for i, _IIlIIIllIl in ipairs(_IIllllIIlI) do if _IIlIIIllIl == value then _lIlIlIlIlI.minTier = i end
 end
 end
 , }) _lllIllllIl:AddDropdown("\083\104\111\112\082\097\114\105\116\121", { Values = _IlIlllllIl, Default = _IlIlllllIl, Multi = true, Text = "\082\097\114\105\116\121\032\102\105\108\116\101\114", Callback = function (values) local _IlIlIIIIII = {} for _llIIlllllI, _IllllIIIll in pairs(_llllIIllIl) do _IlIlIIIIII[_IllllIIIll] = values[_llIIlllllI] == true end
 _lIlIlIlIlI.rarity = _IlIlIIIIII end
 , }) _lllIllllIl:AddDropdown("\083\104\111\112\083\116\111\114\101\115", { Values = _IIllIIIIll, Default = _IIllIIIIll, Multi = true, Text = "\084\097\114\103\101\116\032\115\116\111\114\101\115", Callback = function (values) local _IlIlIIIIII = {} for _llIIlllllI, _IllllIIIll in pairs(_IIllllllII) do _IlIlIIIIII[_IllllIIIll] = values[_llIIlllllI] == true end
 _lIlIlIlIlI.stores = _IlIlIIIIII end
 , }) _lllIllllIl:AddDropdown("\083\104\111\112\067\097\116\101\103\111\114\105\101\115", { Values = _IllIIlIllI, Default = {}, Multi = true, Text = "\067\097\116\101\103\111\114\121\032\102\105\108\116\101\114\032\040\101\109\112\116\121\032\061\032\097\108\108\041", Callback = function (values) local _IlIlIIIIII = {} for _llIIlllllI, on in pairs(values) do if on == true then _IlIlIIIIII[_llIIlllllI] = true end
 end
 _lIlIlIlIlI.cats = _IlIlIIIIII end
 , }) _lllIllllIl:AddSlider("\083\104\111\112\077\097\120\080\114\105\099\101", { Text = "\077\097\120\032\112\114\105\099\101\032\112\101\114\032\105\116\101\109\032\040\048\032\061\032\110\111\032\108\105\109\105\116\041", Default = 0x0, Min = 0x0, Max = 0x14, Rounding = 0x1, Suffix = "\032\106\116", Callback = function (value) _lIlIlIlIlI.maxPrice = value end
 , }) _lllIllllIl:AddSlider("\083\104\111\112\080\101\114\073\116\101\109", { Text = "\077\097\120\032\098\111\117\103\104\116\032\112\101\114\032\105\116\101\109", Default = 0x3, Min = 0x1, Max = 0x14, Rounding = 0x0, Callback = function (value) _lIlIlIlIlI.perItem = value end
 , }) _lllIllllIl:AddSlider("\083\104\111\112\082\101\115\101\114\118\101", { Text = "\075\101\101\112\032\099\097\115\104\032\114\101\115\101\114\118\101", Default = 0x5, Min = 0x0, Max = 0x64, Rounding = 0x0, Suffix = "\032\106\116", Callback = function (value) _lIlIlIlIlI.reserve = value end
 , }) _lllIllllIl:AddButton({ Text = "\083\099\097\110\032\038\032\098\117\121\032\110\111\119", Func = function () local _IIIIIllIlI = _lIlIlIIlll() if not _IIIIIllIlI then return end
 local _llIIlIlIII = _IIllllIllI(_IIIIIllIlI) if #_llIIlIlIII == 0x0 then _lIlllIlIll("\078\111\032\109\097\116\099\104\105\110\103\032\114\097\114\101\032\105\116\101\109\032\105\110\032\115\116\111\099\107\032\114\105\103\104\116\032\110\111\119\046") return end
 task.spawn(_llllIIllIl, _llIIlIlIII, 0x5) end
 , }) local _lIIIlIIIlI = _IlIIllIIll.Shop:AddGroupbox({ Side = "\082\105\103\104\116", Name = "\083\101\114\118\101\114\032\072\111\112\032\040\114\097\114\101\032\104\117\110\116\105\110\103\041", IconName = "\103\108\111\098\101", }) _lIIIlIIIlI:AddToggle("\072\111\112\082\097\114\101", { Text = "\072\111\112\032\115\101\114\118\101\114\115\032\117\110\116\105\108\032\097\032\114\097\114\101\032\105\116\101\109\032\115\104\111\119\115", Default = false, Tooltip = "\078\101\101\100\115\032\065\117\116\111\032\098\117\121\032\114\097\114\101\032\111\110\032\097\110\100\032\116\104\101\032\115\099\114\105\112\116\032\085\082\076\032\098\101\108\111\119\046\032\069\097\099\104\032\115\101\114\118\101\114\032\104\097\115\032\105\116\115\032\111\119\110\032\115\104\111\112\032\115\116\111\099\107\046", Callback = function (value) _lIIIlIIIIl.enabled = value _lIIIlIIIIl.startedAt = os.clock() _lIIIIllIll(value) end
 , }) _lIIIlIIIlI:AddInput("\072\111\112\085\114\108", { Default = "", Text = "\082\097\119\032\115\099\114\105\112\116\032\085\082\076\032\040\114\117\110\115\032\097\103\097\105\110\032\097\102\116\101\114\032\097\032\104\111\112\041", Placeholder = "\104\116\116\112\115\058\047\047\114\097\119\046\103\105\116\104\117\098\117\115\101\114\099\111\110\116\101\110\116\046\099\111\109\047\121\111\117\047\114\101\112\111\047\109\097\105\110\047\083\105\107\097\116\072\117\098\046\108\117\097\117", Callback = function (value) _lIIIlIIIIl.url = tostring(value or "") end
 , }) _lIIIlIIIlI:AddSlider("\072\111\112\083\101\116\116\108\101", { Text = "\067\104\101\099\107\032\101\097\099\104\032\115\101\114\118\101\114\032\102\111\114\032\040\115\101\099\111\110\100\115\041", Default = 0x14, Min = 0xA, Max = 0x3C, Rounding = 0x0, Callback = function (value) _lIIIlIIIIl.settle = value end
 , }) _lIIIlIIIlI:AddButton({ Text = "\072\111\112\032\110\111\119", Func = function () if not _IIlIllIIII(_lIIIlIIIIl.url) then _lIlllIlIll("\083\101\116\032\116\104\101\032\114\097\119\032\115\099\114\105\112\116\032\085\082\076\032\102\105\114\115\116\044\032\115\111\032\116\104\101\032\104\117\098\032\114\101\108\111\097\100\115\032\097\102\116\101\114\032\116\104\101\032\104\111\112\046") return end
 task.spawn(_IIIllllIIl) end
 , }) local _lIIlIIlIll = _lIIIlIIIlI:AddLabel("\072\111\112\083\116\097\116\117\115", { Text = "\072\111\112\058\032\111\102\102", DoesWrap = true, }) local _lIlIIllIII = _IlIIllIIll.Shop:AddGroupbox({ Side = "\082\105\103\104\116", Name = "\077\105\110\105\109\097\114\116\032\050\052", IconName = "\115\116\111\114\101", }) _lIlIIllIII:AddToggle("\083\104\111\112\082\101\115\116\111\099\107", { Text = "\065\117\116\111\032\114\101\115\116\111\099\107\032\099\097\102\101", Default = false, Tooltip = "\066\117\121\115\032\097\110\032\105\110\103\114\101\100\105\101\110\116\032\119\104\101\110\032\105\116\115\032\099\097\102\101\032\115\116\111\099\107\032\102\097\108\108\115\032\098\101\108\111\119\032\116\104\101\032\108\105\109\105\116\046", Callback = function (value) _lIlIlIlIlI.restock = value end
 , }) _lIlIIllIII:AddSlider("\083\104\111\112\082\101\115\116\111\099\107\066\101\108\111\119", { Text = "\082\101\115\116\111\099\107\032\119\104\101\110\032\115\116\111\099\107\032\098\101\108\111\119", Default = 0xA, Min = 0x1, Max = 0x64, Rounding = 0x0, Callback = function (value) _lIlIlIlIlI.restockBelow = value end
 , }) _lIlIIllIII:AddToggle("\083\104\111\112\066\111\114\111\110\103", { Text = "\065\117\116\111\032\098\111\114\111\110\103\032\040\102\105\108\108\032\101\118\101\114\121\032\105\110\103\114\101\100\105\101\110\116\041", Default = false, Tooltip = "\066\117\121\115\032\077\105\110\105\109\097\114\116\032\115\116\111\099\107\032\119\104\101\110\101\118\101\114\032\116\104\101\032\099\097\102\101\032\104\097\115\032\114\111\111\109\032\040\099\097\112\032\049\048\048\032\112\101\114\032\105\110\103\114\101\100\105\101\110\116\041\046", Callback = function (value) _lIlIlIlIlI.borong = value end
 , }) _lIlIIllIII:AddButton({ Text = "\082\101\115\116\111\099\107\032\108\111\119\032\105\116\101\109\115\032\110\111\119", Func = function () local _IIIIIllIlI = _lIlIlIIlll() if _IIIIIllIlI then task.spawn(_llllIIllIl, _lIlllIIIll(_IIIIIllIlI, true), 0x4) end
 end
 , }) local _IIIIllIIlI = _IlIIllIIll.Shop:AddGroupbox({ Side = "\082\105\103\104\116", Name = "\066\117\121\032\108\111\103", IconName = "\115\099\114\111\108\108\045\116\101\120\116", }) local _lIIIIIlIII = _IIIIllIIlI:AddLabel("\083\104\111\112\083\116\097\116\117\115", { Text = "\066\111\117\103\104\116\032\048\032\105\116\101\109\115", DoesWrap = true, }) local _lIIlIllllI = _IlIIllIIll.Shop:AddGroupbox({ Side = "\076\101\102\116", Name = "\065\117\116\111\032\066\117\102\102", IconName = "\122\097\112", }) for _, w in ipairs(_IIIIIlllII) do local _lIlllIlIll = {} local _IllIIlIlIl for _llIIlllllI, itemId in pairs(_lIlIIlIlII.itemNames[w.id] or {}) do table.insert(_lIlllIlIll, _llIIlllllI) if itemId == _lIlIIlIlII.item[w.id] then _IllIIlIlIl = _llIIlllllI end
 end
 table.sort(_lIlllIlIll) if #_lIlllIlIll > 0x0 then _lIIlIllllI:AddToggle("\066\117\102\102\095" .. w.id, { Text = w.label .. "\032\040" .. w.effect .. "\041", Default = false, Callback = function (value) _lIlIIlIlII.on[w.id] = value end
 , }) _lIIlIllllI:AddDropdown("\066\117\102\102\073\116\101\109\095" .. w.id, { Values = _lIlllIlIll, Default = _IllIIlIlIl or _lIlllIlIll[0x1], Text = w.label .. "\032\105\116\101\109", Callback = function (value) local _IIlIIlllIl = _lIlIIlIlII.itemNames[w.id][value] if _IIlIIlllIl then _lIlIIlIlII.item[w.id] = _IIlIIlllIl end
 end
 , }) end
 end
 _lIIlIllllI:AddSlider("\066\117\102\102\066\101\108\111\119", { Text = "\082\101\110\101\119\032\119\104\101\110\032\108\101\115\115\032\116\104\097\110\032\040\109\105\110\117\116\101\115\041", Default = 0x14, Min = 0x1, Max = 0x78, Rounding = 0x0, Callback = function (value) _lIlIIlIlII.below = value end
 , }) _lIIlIllllI:AddDivider() local _llllIlIIll = _lIIlIllllI:AddLabel("\066\117\102\102\083\116\097\116\117\115", { Text = "\078\111\032\098\117\102\102\115\032\097\099\116\105\118\101", DoesWrap = true, }) local _llIlIlllII = _IlIIllIIll.Dashboard:AddGroupbox({ Side = "\076\101\102\116", Name = "\087\097\114\110\101\116\032\115\116\097\116\115", IconName = "\098\097\114\045\099\104\097\114\116\045\051", }) local _lllIIlIllI = _llIlIlllII:AddLabel("\068\097\115\104\083\116\097\116\115", { Text = "\076\111\097\100\105\110\103\046\046\046", DoesWrap = true, }) local _IIIllIllIl = _IlIIllIIll.Dashboard:AddGroupbox({ Side = "\082\105\103\104\116", Name = "\065\108\101\114\116\115\032\038\032\068\105\115\099\111\114\100", IconName = "\098\101\108\108", }) _IIIllIllIl:AddToggle("\065\108\101\114\116\076\111\119\083\116\111\099\107", { Text = "\076\111\119\032\115\116\111\099\107\032\097\108\101\114\116", Default = false, Callback = function (value) _IIlIIIIlll.lowStock = value end
 , }) _IIIllIllIl:AddSlider("\065\108\101\114\116\066\101\108\111\119", { Text = "\065\108\101\114\116\032\119\104\101\110\032\115\116\111\099\107\032\098\101\108\111\119", Default = 0xA, Min = 0x1, Max = 0x64, Rounding = 0x0, Callback = function (value) _IIlIIIIlll.below = value end
 , }) _IIIllIllIl:AddToggle("\065\108\101\114\116\087\101\098\104\111\111\107", { Text = "\083\101\110\100\032\101\118\101\110\116\115\032\116\111\032\068\105\115\099\111\114\100\032\119\101\098\104\111\111\107", Default = false, Callback = function (value) _IIlIIIIlll.webhookOn = value end
 , }) _IIIllIllIl:AddInput("\065\108\101\114\116\087\101\098\104\111\111\107\085\114\108", { Default = "", Text = "\087\101\098\104\111\111\107\032\085\082\076", Placeholder = "\104\116\116\112\115\058\047\047\100\105\115\099\111\114\100\046\099\111\109\047\097\112\105\047\119\101\098\104\111\111\107\115\047\046\046\046", Callback = function (value) _IIlIIIIlll.webhookUrl = tostring(value or "") end
 , }) _IIIllIllIl:AddButton({ Text = "\083\101\110\100\032\116\101\115\116\032\109\101\115\115\097\103\101", Func = function () _llIlIlllIl("\083\105\107\097\116\032\072\117\098\032\119\101\098\104\111\111\107\032\116\101\115\116\032\045\032\099\111\110\110\101\099\116\101\100\032\097\115\032" .. _IIlIIIlllI.Name) _lIlllIlIll("\087\101\098\104\111\111\107\032\116\101\115\116\032\115\101\110\116\032\040\105\102\032\116\104\101\032\085\082\076\032\105\115\032\118\097\108\105\100\041\046") end
 , }) _IIIllIllIl:AddToggle("\065\108\101\114\116\068\097\121\087\101\098\104\111\111\107", { Text = "\080\111\115\116\032\097\032\115\117\109\109\097\114\121\032\097\102\116\101\114\032\101\118\101\114\121\032\100\097\121", Default = false, Callback = function (value) _IIlIIIIlll.dayWebhook = value end
 , }) local _IIIIllIIlI = { { _IIlIIlllIl = "\099\111\109\112\117\116\101\114", _IIlIIIllIl = "\074\097\121\097\032\067\111\109\112\117\116\101\114\032\083\116\111\114\101" }, { _IIlIIlllIl = "\102\117\114\110\105\116\117\114\101", _IIlIIIllIl = "\084\101\097\107\032\070\117\114\110\105\116\117\114\101\032\040\077\101\098\101\108\032\074\097\116\105\041" }, { _IIlIIlllIl = "\100\101\099\111\114", _IIlIIIllIl = "\068\101\099\111\114\097\116\105\111\110\032\071\097\108\108\101\114\121" }, { _IIlIIlllIl = "\107\105\116\099\104\101\110", _IIlIIIllIl = "\067\097\102\101\032\069\113\117\105\112\109\101\110\116\032\083\116\111\114\101" }, { _IIlIIlllIl = "\109\105\110\105\109\097\114\116", _IIlIIIllIl = "\077\105\110\105\109\097\114\116\032\050\052" }, { _IIlIIlllIl = "\104\111\109\101", _IIlIIIllIl = "\082\117\109\097\104\032\073\100\097\109\097\110\032\040\104\111\109\101\032\115\116\111\114\101\041" }, } local _IIIIIlIIlI = { { _IIlIIlllIl = "\098\097\107\115\111", _IIlIIIllIl = "\066\097\107\115\111\032\077\097\115\032\084\111\110\111" }, { _IIlIIlllIl = "\107\111\112\105", _IIlIIIllIl = "\087\097\114\117\110\103\032\075\111\112\105" }, { _IIlIIlllIl = "\112\097\100\097\110\103", _IIlIIIllIl = "\078\097\115\105\032\080\097\100\097\110\103" }, { _IIlIIlllIl = "\101\115\116\101\104", _IIlIIIllIl = "\069\115\032\084\101\104\032\083\101\103\097\114" }, } local function _lllIIIllIl(_lllllllIII, _IIlIIlllIl, _llIIlllllI) local _llIIllIIlI = _IlIllIlIlI(_lllllllIII, _IIlIIlllIl) if not _llIIllIIlI then _lIlllIlIll("\067\111\117\108\100\032\110\111\116\032\102\105\110\100\032" .. tostring(_llIIlllllI or _IIlIIlllIl)) return end
 local _lllllIIllI if _lllllllIII == "\104\111\117\115\101" then _lllllIIllI = _llIIllIIlI.Position + Vector3.new(0x0, 0x1, -0x5) else _lllllIIllI = _lIIlllIIII(_llIIllIIlI, 0x5) end
 _llIIIllIlI.status = "\084\114\097\118\101\108\105\110\103\032\116\111\032" .. tostring(_llIIlllllI or _IIlIIlllIl) if _lllIllIllI(_lllllIIllI, { timeout = 0x2D }) then _lIlllIlIll("\065\114\114\105\118\101\100\032\097\116\032" .. tostring(_llIIlllllI or _IIlIIlllIl)) else _lIlllIlIll("\084\114\105\112\032\116\111\032" .. tostring(_llIIlllllI or _IIlIIlllIl) .. "\032\102\097\105\108\101\100\044\032\116\114\121\032\097\103\097\105\110") end
 end
 local _lIlllIIIII = _IlIIllIIll.Utility:AddGroupbox({ Side = "\076\101\102\116", Name = "\083\116\111\114\101\115", IconName = "\109\097\112\045\112\105\110", }) for _, store in ipairs(_IIIIllIIlI) do _lIlllIIIII:AddButton({ Text = store.name, Func = function () task.spawn(_lllIIIllIl, "\115\116\111\114\101", store.id, store.name) end
 , }) end
 local _IllIlllIll = _IlIIllIIll.Utility:AddGroupbox({ Side = "\076\101\102\116", Name = "\087\097\114\117\110\103\115", IconName = "\117\116\101\110\115\105\108\115", }) for _, warung in ipairs(_IIIIIlIIlI) do _IllIlllIll:AddButton({ Text = warung.name, Func = function () task.spawn(_lllIIIllIl, "\119\097\114\117\110\103", warung.id, warung.name) end
 , }) end
 local _lllllIIIlI = _IlIIllIIll.Utility:AddGroupbox({ Side = "\082\105\103\104\116", Name = "\084\114\097\118\101\108", IconName = "\110\097\118\105\103\097\116\105\111\110", }) _lllllIIIlI:AddButton({ Text = "\077\121\032\119\097\114\110\101\116", Func = function () task.spawn( function () local _lIlIlllIll = _lllllllIlI() local _llIIIIlIlI = _lIlIlllIll and _lIlIlllIll:FindFirstChild("\079\098\106\101\099\116\115") and _lIlIlllIll.Objects:FindFirstChild("\111\112\101\114\097\116\111\114\095\100\101\115\107") local _lllllIIllI = _llIIIIlIlI and _llIIIIlIlI.Position or Vector3.new(0x0, 0x0, 0x0) _lllIllIllI(_lllllIIllI + Vector3.new(0x0, 0x0, 0x6), { timeout = 0x2D }) end
 ) end
 , }) _lllllIIIlI:AddButton({ Text = "\084\111\119\110\032\099\101\110\116\114\101", Func = function () task.spawn(_lllIllIllI, Vector3.new(0x0, 0x4, -0x14), { timeout = 0x2D }) end
 , }) _lllllIIIlI:AddButton({ Text = "\083\112\097\119\110", Func = function () local spawn = _lIIIlllllI:FindFirstChild("\083\112\097\119\110\076\111\099\097\116\105\111\110") if spawn then task.spawn(_lllIllIllI, spawn.Position, { timeout = 0x2D }) end
 end
 , }) _lllllIIIlI:AddDivider() _lllllIIIlI:AddButton({ Text = "\082\101\106\111\105\110\032\115\101\114\118\101\114", Func = function () pcall( function () TeleportService:Teleport(game.PlaceId, _IIlIIIlllI) end
 ) end
 , }) _lllllIIIlI:AddButton({ Text = "\085\110\108\111\097\100\032\104\117\098", Func = function () if _llIIIllIlI.unload then _llIIIllIlI.unload() end
 end
 , }) local _IlllIIIIlI = _IlIIllIIll.Utility:AddGroupbox({ Side = "\082\105\103\104\116", Name = "\080\101\114\102\111\114\109\097\110\099\101", IconName = "\103\097\117\103\101", }) _IlllIIIIlI:AddToggle("\080\101\114\102\078\111\082\101\110\100\101\114", { Text = "\065\070\075\032\115\097\118\101\114\032\040\051\068\032\114\101\110\100\101\114\105\110\103\032\111\102\102\041", Default = false, Tooltip = "\084\117\114\110\115\032\051\068\032\114\101\110\100\101\114\105\110\103\032\111\102\102\032\115\111\032\097\032\108\111\110\103\032\102\097\114\109\032\115\101\115\115\105\111\110\032\117\115\101\115\032\097\108\109\111\115\116\032\110\111\032\071\080\085\046", Callback = function (value) pcall( function () RunService:Set3dRenderingEnabled( not value) end
 ) end
 , }) _IlllIIIIlI:AddToggle("\080\101\114\102\076\111\119\071\102\120", { Text = "\076\111\119\032\103\114\097\112\104\105\099\115", Default = false, Callback = function (value) pcall( function () if value then if _lIIIlIlIIl.shadows == nil then _lIIIlIlIIl.shadows = Lighting.GlobalShadows end
 _lIIIlIlIIl.quality = _lIIIlIlIIl.quality or settings().Rendering.QualityLevel Lighting.GlobalShadows = false settings().Rendering.QualityLevel = Enum.QualityLevel.Level01 else if _lIIIlIlIIl.shadows ~= nil then Lighting.GlobalShadows = _lIIIlIlIIl.shadows end
 if _lIIIlIlIIl.quality then settings().Rendering.QualityLevel = _lIIIlIlIIl.quality end
 end
 end
 ) end
 , }) _IlllIIIIlI:AddSlider("\080\101\114\102\070\112\115\067\097\112", { Text = "\070\080\083\032\099\097\112", Default = 0x3C, Min = 0xF, Max = 0xF0, Rounding = 0x0, Callback = function (value) local _IlIlllIlll = getgenv().setfpscap if type(_IlIlllIlll) == "\102\117\110\099\116\105\111\110" then pcall(_IlIlllIlll, value) end
 end
 , }) local _llIIIIlIII = _IlIIllIIll.Utility:AddGroupbox({ Side = "\082\105\103\104\116", Name = "\083\104\111\112\032\116\111\111\108\115", IconName = "\119\114\101\110\099\104", }) _llIIIIlIII:AddButton({ Text = "\070\097\105\114\032\112\114\105\099\101\115\032\102\111\114\032\101\118\101\114\121\116\104\105\110\103", Func = function () if _lllIIllllI then _lllIIllllI:FireServer("\112\114\105\099\101\070\097\105\114\065\108\108", {}) _lIlllIlIll("\070\097\105\114\032\112\114\105\099\101\115\032\097\112\112\108\105\101\100\046") end
 end
 , }) _llIIIIlIII:AddToggle("\084\111\111\108\115\065\117\116\111\070\097\105\114", { Text = "\065\117\116\111\032\102\097\105\114\032\112\114\105\099\101\115\032\101\118\101\114\121\032\110\101\119\032\100\097\121", Default = false, Callback = function (value) _IIlIIIIlll.autoFair = value end
 , }) local _IIIIIIIIll = _IlIIllIIll.Settings:AddGroupbox({ Side = "\076\101\102\116", Name = "\077\101\110\117", IconName = "\109\101\110\117", }) _IIIIIIIIll:AddLabel("\077\101\110\117\032\107\101\121"):AddKeyPicker("\077\101\110\117\075\101\121\098\105\110\100", { Default = "\082\105\103\104\116\065\108\116", NoUI = true, Text = "\077\101\110\117\032\107\101\121\098\105\110\100", }) Library.ToggleKeybind = Library.Options.MenuKeybind _IIIIIIIIll:AddToggle("\070\108\111\097\116\066\117\116\116\111\110", { Text = "\070\108\111\097\116\105\110\103\032\109\101\110\117\032\098\117\116\116\111\110", Default = UserInputService.TouchEnabled, Tooltip = "\065\032\100\114\097\103\103\097\098\108\101\032\039\077\101\110\117\039\032\098\117\116\116\111\110\032\116\104\097\116\032\111\112\101\110\115\032\097\110\100\032\099\108\111\115\101\115\032\116\104\105\115\032\119\105\110\100\111\119\046\032\079\110\032\098\121\032\100\101\102\097\117\108\116\032\111\110\032\109\111\098\105\108\101\046", Callback = function (value) _IIlIIIllll.enabled = value _IlIIlIlIlI() end
 , }) _IIIIIIIIll:AddButton({ Text = "\083\104\111\119\032\047\032\104\105\100\101\032\109\101\110\117", Func = _IlIIIIllIl, }) _IIIIIIIIll:AddLabel("\068\101\102\097\117\108\116\032\107\101\121\058\032\082\105\103\104\116\065\108\116\046\032\067\108\105\099\107\032\116\104\101\032\107\101\121\032\097\098\111\118\101\032\116\111\032\114\101\098\105\110\100\032\105\116\046", true) if _llIllIlIlI then pcall( function () _llIllIlIlI:SetLibrary(Library) _llIllIlIlI:IgnoreThemeSettings() _llIllIlIlI:SetIgnoreIndexes({ "\077\101\110\117\075\101\121\098\105\110\100" }) _llIllIlIlI:SetFolder("\083\105\107\097\116\072\117\098\047\087\097\114\110\101\116\111\112\105\097") _llIllIlIlI:BuildConfigSection(_IlIIllIIll.Settings) _llIllIlIlI:LoadAutoloadConfig() end
 ) end
 if _IIIlIlllIl then pcall( function () _IIIlIlllIl:SetLibrary(Library) _IIIlIlllIl:SetFolder("\083\105\107\097\116\072\117\098") _IIIlIlllIl:ApplyToTab(_IlIIllIIll.Settings) end
 ) end
 _IIlIIIllll.enabled = Library.Toggles.FloatButton and Library.Toggles.FloatButton.Value or _IIlIIIllll.enabled _IlIIlIlIlI() if _lIllIlIIIl() then pcall( function () Library.Toggles.ShopRare:SetValue(true) Library.Toggles.HopRare:SetValue(true) end
 ) _lIIIlIIIIl.enabled = true _lIlIlIlIlI.rare = true _lIIIlIIIIl.startedAt = os.clock() end
 local _llllllllll = RunService.RenderStepped:Connect( function (dt) if _lllIlIIIlI.enabled then local _IIlIIIIlll = _lIllIlIIIl() local _IlIlIllllI = _lllIlIIIIl() local _llllIlIllI = _lIIIlllllI.CurrentCamera if _IIlIIIIlll and _IlIlIllllI and _llllIlIllI then if not _lllIlIIIlI.savedSpeed then _lllIlIIIlI.savedSpeed = _IlIlIllllI.WalkSpeed _IlIlIllllI.WalkSpeed = 0x0 end
 local _IlIlIlIlll = Vector3.zero if UserInputService:IsKeyDown(Enum.KeyCode.W) then _IlIlIlIlll += _llllIlIllI.CFrame.LookVector end
 if UserInputService:IsKeyDown(Enum.KeyCode.S) then _IlIlIlIlll -= _llllIlIllI.CFrame.LookVector end
 if UserInputService:IsKeyDown(Enum.KeyCode.A) then _IlIlIlIlll -= _llllIlIllI.CFrame.RightVector end
 if UserInputService:IsKeyDown(Enum.KeyCode.D) then _IlIlIlIlll += _llllIlIllI.CFrame.RightVector end
 if UserInputService:IsKeyDown(Enum.KeyCode.Space) then _IlIlIlIlll += Vector3.new(0x0, 0x1, 0x0) end
 if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then _IlIlIlIlll -= Vector3.new(0x0, 0x1, 0x0) end
 if _IlIlIlIlll.Magnitude > 0x0 then local _IllIlIIIll = math.min(_lllIlIIIlI.speed, 0x37) local _IIlIlIllII = _IllIlIIIll * math.min(dt, 0.05) _IIlIIIIlll.CFrame = CFrame.new(_IIlIIIIlll.Position + _IlIlIlIlll.Unit * _IIlIlIllII) end
 return end
 elseif _lllIlIIIlI.savedSpeed then local _IlIlIllllI = _lllIlIIIIl() if _IlIlIllllI then _IlIlIllllI.WalkSpeed = _lllIlIIIlI.savedSpeed end
 _lllIlIIIlI.savedSpeed = nil end
 if _IllIlIllll.enabled and not _llllIlllIl.active then _lllIlIIIIl() end
 end
 ) local _IIIlIIlllI = RunService.Stepped:Connect( function () if not (_IllIlllIIl.noclip or _llllIlllIl.active) then return end
 local _IllllIIIll = _lllIlIIllI() if not _IllllIIIll then return end
 for _, _llIIllIIlI in ipairs(_IllllIIIll:GetDescendants()) do if _llIIllIIlI:IsA("\066\097\115\101\080\097\114\116") and _llIIllIIlI.CanCollide then _llIIllIIlI.CanCollide = false end
 end
 end
 ) local _IllIIIIIlI = UserInputService.JumpRequest:Connect( function () if not _IllIlllIIl.infJump then return end
 local _IlIlIllllI = _lllIlIIIIl() if _IlIlIllllI then _IlIlIllllI:ChangeState(Enum.HumanoidStateType.Jumping) end
 end
 ) local _IIIIlIlIIl = _IIlIIIlllI.Idled:Connect( function () if not _IllIlllIIl.antiAfk then return end
 pcall( function () _IlllIIIlII:CaptureController() _IlllIIIlII:ClickButton2(Vector2.new()) end
 ) end
 ) task.spawn( function () while _llIIIllIlI.alive do if _IlIlIIIlII() then pcall(_IIlIIIIlIl) task.wait(0.35) else task.wait(0.6) end
 end
 end
 ) task.spawn( function () while _llIIIllIlI.alive do if _lIIllIIIll.enabled then pcall(_IIllIlIIIl) task.wait(0.7) else task.wait(0.8) end
 end
 end
 ) task.spawn( function () while _llIIIllIlI.alive do if _llllIllIlI.gifts or _llllIllIlI.cards then pcall(_llIlllIlII) task.wait(0.5) else task.wait(0.8) end
 end
 end
 ) task.spawn( function () while _llIIIllIlI.alive do if _IIIlIlllIl() then pcall(_lIIllIllll) task.wait(1.2) else task.wait(0x1) end
 end
 end
 ) task.spawn( function () while _llIIIllIlI.alive do if _lIIIlIIIIl.enabled then pcall(_lIlIIlIllI) else _lIIIlIIIIl.lastStatus = "\111\102\102" end
 task.wait(0x2) end
 end
 ) task.spawn( function () while _llIIIllIlI.alive do if _IllIIlIlII() then pcall(_IlIIIIIllI) end
 task.wait(0x3) end
 end
 ) task.spawn( function () while _llIIIllIlI.alive do pcall( function () if _llIllllIlI then _llIllllIlI:SetText(string.format( "\083\101\114\118\101\100\032\037\100\032\8226\032\068\101\108\105\118\101\114\101\100\032\037\100\032\8226\032\067\108\101\097\110\101\100\032\037\100\032\8226\032\082\101\112\097\105\114\101\100\032\037\100\032\8226\032\067\111\111\107\101\100\032\037\100", _lIIllllIlI.served, _lIIllllIlI.delivered, _lIIllllIlI.cleaned, _lIIllllIlI.repaired, _lIIllllIlI.cooked )) end
 if _IIlllIIllI then local _IIlIIllIII = _IIIIlIlIll() local _llIIIlIIII = _IIlIIllIII and _IIlIIllIII.active local _llIlIlIIll = _llIIIlIIII and tostring(_llIIIlIIII.stage) or "\105\100\108\101" local _IIlIIIllIl = _llIIIlIIII and tostring(_llIIIlIIII.name or "") or "" _IIlllIIllI:SetText(string.format("\083\116\097\103\101\058\032\037\115\032\037\115\032\8226\032\097\099\099\101\112\116\101\100\032\037\100", _llIlIlIIll, _IIlIIIllIl, _lIIllIIIll.accepted)) end
 if _IIIIlIllII then _IIIIlIllII:SetText(string.format("\071\105\102\116\115\032\037\100\032\8226\032\067\097\114\100\115\032\037\100", _llllIllIlI.giftsClaimed, _llllIllIlI.cardsClaimed)) end
 if _lIIlIIlIll then _lIIlIIlIll:SetText(string.format("\072\111\112\058\032\037\115\032\8226\032\104\111\112\115\032\116\104\105\115\032\114\117\110\058\032\037\100", _lIIIlIIIIl.lastStatus, _lIIIlIIIIl.hops)) end
 local _IIIIIllIlI = _lIlIlIIlll() if not _IIIIIllIlI then return end
 if _IIIIIllIlI.money and not _lIIllllllI then _lIIllllllI = _IIIIIllIlI.money end
 if _lllIIlIllI then _lllIIlIllI:SetText(_llIlIIIIlI(_IIIIIllIlI)) end
 if _lIIIIIlIII then _lIIIIIlIII:SetText(string.format( "\066\111\117\103\104\116\032\037\100\032\105\116\101\109\115\032\040\037\115\041\092\110\076\097\115\116\058\032\037\115\092\110\082\097\114\101\032\105\110\032\115\116\111\099\107\032\110\111\119\058\032\037\100", _lIlIlIlIlI.bought, _llIIllIIII(_lIlIlIlIlI.spent), _lIlIlIlIlI.last, _IIlIlIlllI(_IIIIIllIlI) )) end
 if _llllIlIIll then _llllIlIIll:SetText(string.format("\065\099\116\105\118\101\058\032\037\115\092\110\066\111\117\103\104\116\032\037\100\032\8226\032\108\097\115\116\058\032\037\115", _lllIIlllIl(), _lIlIIlIlII.bought, _lIlIIlIlII.last)) end
 if lastDay and _IIIIIllIlI.day and _IIIIIllIlI.day ~= lastDay and _IIlIIIIlll.autoFair and _lllIIllllI then _lllIIllllI:FireServer("\112\114\105\099\101\070\097\105\114\065\108\108", {}) end
 lastDay = _IIIIIllIlI.day if _IIlIIIIlll.lowStock then for _, _IllllIIIll in ipairs(_IllIlIlllI) do local _IIlIlIIlIl = _IIIIIllIlI.stock and _IIIIIllIlI.stock[_IllllIIIll] if type(_IIlIlIIlIl) == "\110\117\109\098\101\114" and _IIlIlIIlIl < _IIlIIIIlll.below and os.clock() - (_IIlIIIIlll.sent[_IllllIIIll] or -0x3E7) > 0x78 then _IIlIIIIlll.sent[_IllllIIIll] = os.clock() _IlIIlIlIll("\076\111\119\032\115\116\111\099\107", _lllIIlIlIl[_IllllIIIll] .. "\032\105\115\032\100\111\119\110\032\116\111\032" .. _IIlIlIIlIl, 0x5) _llIlIlllIl(string.format("\076\111\119\032\115\116\111\099\107\058\032\042\042\037\115\042\042\032\105\115\032\100\111\119\110\032\116\111\032\037\100", _lllIIlIlIl[_IllllIIIll], _IIlIlIIlIl)) end
 end
 end
 end
 ) task.wait(0x1) end
 end
 ) _llIIIllIlI.api = { teleport = _lllIIIllIl, _lllIllIllI = _lllIllIllI, travel = _llllIlllIl, farm = _lIIllllIlI, quest = _lIIllIIIll, collect = _llllIllIlI, shop = _lIlIlIlIlI, buff = _lIlIIlIlII, hop = _lIIIlIIIIl, _IllIlIIIll = _IllIlIllll, fly = _lllIlIIIlI, misc = _IllIlllIIl, _IlIIIIllIl = _IlIIIIllIl, _IIlIIIIlIl = _IIlIIIIlIl, _IIllIlIIIl = _IIllIlIIIl, _llIlllIlII = _llIlllIlII, _lIIllIllll = _lIIllIllll, _IlIIIIIllI = _IlIIIIIllI, _lIlIIlIllI = _lIlIIlIllI, _lIllIIIlII = _lIllIIIlII, _IlIIIllIIl = _IlIIIllIIl, } _llIIIllIlI.unload = function () _llIIIllIlI.alive = false _llllIlllIl.active = false _IIlIIlIlll() pcall(_lIllIlllll) pcall(_IIIlIIIlIl) pcall( function () RunService:Set3dRenderingEnabled(true) end
 ) for _, c in ipairs({ _llllllllll, _IIIlIIlllI, _IllIIIIIlI, _IIIIlIlIIl, _IlIlllIlll, _IIlIIIllll, _lIIIIllIIl }) do pcall( function () c:Disconnect() end
 ) end
 pcall( function () Library:Unload() end
 ) if getgenv().SikatHub == _llIIIllIlI then getgenv().SikatHub = nil end
 end
 Library:OnUnload( function () _llIIIllIlI.alive = false _llllIlllIl.active = false _IIlIIlIlll() pcall(_lIllIlllll) pcall(_IIIlIIIlIl) pcall( function () RunService:Set3dRenderingEnabled(true) end
 ) end
 ) _lIlllIlIll("\083\105\107\097\116\032\072\117\098\032\118\051\046\049\032\108\111\097\100\101\100\046\032\077\101\110\117\032\107\101\121\058\032\082\105\103\104\116\065\108\116\046") end
 )(...)
