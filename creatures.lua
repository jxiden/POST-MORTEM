local Talkies = require('libraries/talkies')

Creature = Object:extend()

function Creature:new()
	self.image = love.graphics.newImage("sprites/img.png")
  self.voice = love.audio.newSource("sfx/SFX_TALK.wav", "static")
end


function Creature:draw()
  Talkies.say("i hate this shit", "Hello World!", {
      image=self.image,
      talkSound=self.voice,
      typedNotTalked=true,
      textSpeed="slow"
    })
  Talkies.say("Tutorial", "",
    {
      options={
        {"What's your name?", function() red() end},
        {"What was your life like?", function() blue() end},
        {"Where are you?", function() green() end}
      }
    })
end