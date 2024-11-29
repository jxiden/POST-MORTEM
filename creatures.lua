local Talkies = require('libraries/talkies')

Creature = Object:extend()

function Creature:new()
  self.voice = love.audio.newSource("sfx/SFX_TALK.wav", "static")
  self.spriteSheet = gfx.newImage("sprites/img.png")
  self.grid = anim8.newGrid(128,128,self.spriteSheet:getWidth(),self.spriteSheet:getHeight())
  self.animation=anim8.newAnimation(self.grid('1-2', 1),0.2)
end

function Creature:update(dt)
  self.animation:update(dt)
end


function Creature:draw()
    Talkies.say("...", "...", {
      image=self.animation:draw(self.spriteSheet),
      talkSound=self.voice,
      typedNotTalked=true,
      textSpeed="slow"
    })
  Talkies.say("...", "Hello World!", {
      image=self.image,
      talkSound=self.voice,
      typedNotTalked=true,
      textSpeed="slow"
    })
  Talkies.say("Tutorial", "",
    {
      options={
        {"What's your name?", function() Creature:draw() end},
        {"What was your life like?", function() Creature:draw() end},
        {"Where are you?", function() Creature:draw() end}
      }
    })
end