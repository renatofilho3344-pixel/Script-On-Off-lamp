local lamp = game.Workspace.Lamp --- Your Lamp
local Spotlight = game.lamp:WaitForChild("Spotlight") --- Spotlight inside of Lamp
local prompt = script.Parent:WaitForChild("ProximityPrompt") --- ProximityPrompt Inside of the switch
local On = false --- starts off

prompt.Triggered:Connect(function(player) --- when player triggers the propmpt then do an action
  
   if On == false then -- if It is off then it turns on
      lamp.Color = Color3.new(1, 1, 1) --- Makes the lamp white
      Spotlight.Enabled = true --- turns the light on
      On = true --- since now it is on we Make On be equal to true
   else --- if it isn't off than it is on, so we should turn the light off
      lamp.BrickColor = Brickcolor.new("Black") --- lamp color black 
      Spotlight.Enabled = false --- disable spotlight
      On = false --- since it's now off we switch On to false
    end
end)
