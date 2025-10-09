local Trash = script.Parent
local prompt = script.Parent:Waitforchild("ProximityPrompt")

prompt.Triggered:Connect(function(player)
   prompt.Enabled = false
   for i = 1,10 do
      Trash.Transparency = Trash.Transparency + 0.1
   end
   wait(20) -- respawn time
   prompt.Enabled = true
   Trash.Transparency = 0
end)