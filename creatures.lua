local Talkies = require('libraries/talkies')

Creature = Object:extend()

function Creature:new()
  self.voice = love.audio.newSource("sfx/SFX_TALK.wav", "static")
  self.sprite = gfx.newImage("sprites/img.png")
end

function Creature:draw()
  Talkies.say("...", "iasdfhasdjf",
    {
      image=self.sprite,
      talkSound=self.voice,
      typedNotTalked=true,
      textSpeed="slow",

      options={
        {"What's your name?", function() Creature:name() end},
        {"What was your life like?", function() Creature:life() end},
      }
    })
end

function Creature:name()
    Talkies.say("Francis", "My name is Francis Hatt",
    {
      image=self.sprite,
      talkSound=self.voice,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"How did you die?", function() Creature:die() end},
        {"What was your life like?", function() Creature:life() end},
      }
    })
end

function Creature:life()
    Talkies.say("Francis", "I had a plesant life, my wife and I owned a small farm near Louisa County. We sold eggs to locals and took care of a few cows, cats, and chickens. My wife was usually the one taking care of her garden, but I helped her out too.",
    {
      image=self.sprite,
      talkSound=self.voice,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"How did you die?", function() Creature:die() end},
        {"What was your life like?", function() Creature:life() end},
      }
    })
end

function Creature:die()
    Talkies.say("Francis", "cancer",
    {
      image=self.sprite,
      talkSound=self.voice,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"How did you die?", function() Creature:die() end},
        {"What was your life like?", function() Creature:life() end},
      }
    })
end
