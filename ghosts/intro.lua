local Talkies = require('libraries/talkies')

local Satan = {}
local avatar;
local blop

Talkies.font = fontTextInGame

function Satan.sayHello()
  --f_sprite = gfx.newImage("ghosts/g1-1.png")

  Talkies.say("?????", {"Pleased to meet you! -- Won't you guess my name?",
    "You're probably wondering why you're here instead of spending your precious afterlife doing something relaxing.",
    "Well, you've somehow lived the most neutral life possible.",
    "I don't know how you did it, but you did, and now i've selected you to become my new secretary!",
    "Your new job is to wait at the gates of our precious little limbo and interview the recently deceased, -- got it?",
    "Alright. have fun! -- But make sure that everyone goes to the right place. -- We don't want any nutjobs in the wrong places, -- the Big Man upstaris won't be pleased..."},
    {
      talkSound=sfx_talk_u,
      typedNotTalked=true,
      textSpeed="slow",
    })
end

return Satan