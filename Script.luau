local lamp = game.Workspace.Lamp
local Spotlight = game.lamp:WaitForChild("Spotlight")
local prompt = script.Parent:WaitForChild("ProximityPrompt")
local On = false

prompt.Triggered:Connect(function(player)
   if On == false then
      lamp.Color = Color3.new(1, 1, 1)
      Spotlight.Enabled = true
      On = true
   else 
      lamp.BrickColor = Brickcolor.new("Black")
      Spotlight.Enabled = false
      On = false
    end
end)
