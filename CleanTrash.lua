local Trash = script.Parent
local prompt = Trash.ProximityPrompt

prompt.ActionText = "Clean trash"
prompt.HoldDuration = 3

prompt.Triggered:Connect(function(player)
   prompt.Enabled = false
   Trash.CanCollide = false
   for i = 1,10 do
      Trash.Transparency = Trash.Transparency + 0.1
      wait(0.001)
   end
   wait(20) -- respawn time
   prompt.Enabled = true
   Trash.Transparency = 0
   Trash.CanCollide = true
end)