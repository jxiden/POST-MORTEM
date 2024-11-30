local Talkies = require('libraries/talkies')

Creature = Object:extend()

function Creature:new()
  self.voice = love.audio.newSource("sfx/SFX_TALK.wav", "static")
  self.sprite = gfx.newImage("sprites/img.png")
end

function Creature:draw()
    --Talkies.say("...", "...", {
      --image=self.sprite,
      --talkSound=self.voice,
      --typedNotTalked=true,
      --textSpeed="slow"
    --})
  Talkies.say("...", "",
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
    Talkies.say("Francis", "My name is Francis, Francis Hatt",
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
    Talkies.say("Francis", "I had a plesant life, my wife and I owned a farm in the middle of Virginia.",
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