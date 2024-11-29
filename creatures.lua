local Talkies = require('libraries/talkies')

Creature = Object:extend()

function Creature:new()
	self.image = gfx.newImage("sprites/img.png")
  self.voice = love.audio.newSource("sfx/talk.wav", "static")
end


function Creature:draw()
  Talkies.say("i hate this shit", "Hello World!", {
      image=self.image,
      talkSound=self.voice,
      typedNotTalked=false,
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