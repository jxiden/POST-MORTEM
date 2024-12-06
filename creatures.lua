local Talkies = require('libraries/talkies')

local Creature = {}
local avatar;
local blop


function Creature.sayHello()
  f_sprite = gfx.newImage("sprites/img.png")

  Talkies.say("...", "Hello there youngster.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",

      options={
        {"What's your name?", function() Creature.name() end}
      }
    })
end

function Creature.name()
    Talkies.say("Francis", "My name is Francis Hatt",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"How did you die?", function() Creature.die() end},
        {"What was your life like?", function() Creature.life() end},
      }
    })
end

function Creature.life()
    Talkies.say("Francis", "I had a pleasant life. My wife Mabel and I owned a small farm near Louisa County. We sold eggs to locals and took care of a few cows, cats, and chickens. My wife was usually the one taking care of her garden, but I helped her out too.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"How did you die?", function() Creature.die() end},
        {"What was your life like?", function() Creature.life() end},
      }
    })
end

function Creature.die()
    Talkies.say("Francis", "I died of cancer.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"How did you die?", function() Creature.die() end},
        {"What was your life like?", function() Creature.life() end},
      }
    })
end


return Creature
