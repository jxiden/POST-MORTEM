local Talkies = require('libraries/talkies')

local Creature = {}
local avatar;
local blop

function Creature.sayHello()
  blop = love.audio.newSource("sfx/SFX_TALK.wav", "static")
  avatar = love.graphics.newImage("sprites/img.png")

  Talkies.say("Talkies.lua", "Hello World!", {
    image=avatar,
    talkSound=blop,
    typedNotTalked=true,
    textSpeed="slow"
  })
  Talkies.say( "Tutorial",
    {
      "Talkies is a simple to use messagebox library, it includes;",
      "Multiple choices,-- UTF8 text,-- Pauses,-- Onstart/OnMessage/Oncomplete functions,-- Complete customization,-- Variable typing speeds amongst other things."
    },
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=true,
      onstart = function(dialog)
        print("are we showing:", dialog:isShown())
      end,
      onmessage = function(dialog, left)
        print(left .. " messages left in the dialog, is showing:", dialog:isShown())
      end,
      oncomplete = function(dialog)
        print("are we still showing:", dialog:isShown())
      end
    }
  )
end

function Creature.sayGoodbye()
  Talkies.say(
    "Goodbye",
    "See ya around!",
    {
      image=avatar,
      talkSound=blop,
      typedNotTalked=false,
      oncomplete=function() end,
      titleColor = {1, 0, 0}
    }
  )
end

return Creature
