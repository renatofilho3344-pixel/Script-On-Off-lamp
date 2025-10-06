local door = game.Workspace:WaitForChild("Door")
local prompt = script.Parent:WaitForChild("Proximity prompt")
local open = false

prompt.Triggered:Connect(function(player)
   prompt.Enabled = false
   if open == false then
      open = true
      for i = 1,20 do
         door.CFrame = door.CFrame * CFrame.new(0, 1, 0)
         wait(0.1)
      end
   else
      open = false
      for i = 1,20 do
         door.CFrame = door.CFrame * CFrame.new(0, -1, 0)
         wait(0.1)
      end
   end
   prompt.Enabled = true
end)
