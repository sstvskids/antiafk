local cloneref = cloneref or function(o) return o end
local lplr = cloneref(game:GetService('Players')).LocalPlayer
local VirtualUser: VirtualUser = cloneref(game:GetService('VirtualUser'))
local AFKCheck

AFKCheck = plr.Idled:Connect(function()
  VirtualUser:CaptureController()
  VirtualUser:ClickButton2(Vector2.new())
end)

getgenv().stopafkservice = function()
  return AFKCheck:Disconnect()
end
