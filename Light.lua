---this script is for you light switch to turn the light on or off.

local Lamp = game.Workspace:WaitForChild("Lamp")
local Prompt = script.Parent:WaitForChild("Proximity prompt)
local Spotlight = Lamp.SpotLight
local On = false ----- the lamp should start false

prompt.Triggered:Connect(function(player)
   if On == false then
      Lamp.Color = Color3.new(1, 1, 1) 
      Spotlight.Enabled = true
      On = true
   else
      Lamp.BrickColor = BrickColor.new("Black")
      Spotlight.Enabled = false
      On = false
   end
end)