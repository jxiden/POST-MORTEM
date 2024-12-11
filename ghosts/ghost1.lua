local Talkies = require('libraries/talkies')

local ghost1 = {}
local avatar;
local blop

Talkies.font = fontTextInGame

function ghost1.sayHello()
  f_sprite = gfx.newImage("sprites/ghosts/g1-0.png")

  Talkies.say("...", "Hello there youngster.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",

      options={
        {"What's your name?", function() ghost1.name() end}
      }
    })
end

function ghost1.name()
    Talkies.say("Francis", "My name is Francis Hatt",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"How did you die?", function() ghost1.die() end},
        {"What was your life like?", function() ghost1.life() end},
      }
    })
end

function ghost1.life()
    Talkies.say("Francis", "I had a pleasant life. My wife Mabel and I owned a small farm in Louisa County. We sold eggs to locals and took care of a few cows, cats, and chickens. My wife was usually the one taking care of her garden, but I helped her out too.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"How did you die?", function() ghost1.die() end},
        {"What was your life like?", function() ghost1.life() end},
      }
    })
end

function ghost1.die()
    Talkies.say("Francis", "I died of cancer.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"How did you die?", function() ghost1.die() end},
        {"What was your life like?", function() ghost1.life() end},
      }
    })
end


return ghost1
