local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/FE/main/notificationtest"))()
 local Notify = Notification.Notify

local old
old = hookmetamethod(game, "__namecall", function(self, ...)
local method = getnamecallmethod()
if method == "Kick" or method == "kick" then
return print("_")
end
return old(self, ...)
end)

Notify({
		 Description = "Maded by Gregory909, enjoy;)",
		 Title = "DarkCheatClient AntiCheatKick Bypasser",
		 Duration = dur or 5
		 })
		
