local Talkies = require('libraries/talkies')

local ghost3 = {}
local avatar;

Talkies.font = fontTextInGame

function ghost3.sayHello()
  f_sprite = gfx.newImage("sprites/ghosts/g3-0.png")

  Talkies.say("...", "Hello...",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",

      options={
        {"What's your name?", function() ghost3.name() end}
      }
    })
end

function ghost3.name()
    Talkies.say("Leah", "Leah Abate",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What  was  your  life  like?", function() ghost3.life() end},
      }
    })
end

function ghost3.life()
    Talkies.say("Leah", "Ever since I was a young girl I was told that God and Jesus loved me. And who could blame them, I was a shining light. Every night I would pray that I would meet Jesus and eventually he started talking back. When I was alone in the world he was there for me.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What  achievements  are  you  proud  of?", function() ghost3.proud() end},
      }
    })
end

function ghost3.proud()
    Talkies.say("Leah", "Being myself.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What  do  you  love?", function() ghost3.love() end},
      }
    })
end

function ghost3.love()
    Talkies.say("Leah", "All I love is myself and my love, the lord.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What’s  your  biggest  regret?", function() ghost3.regret() end},
      }
    })
end

function ghost3.regret()
    Talkies.say("Leah", "Not having died sooner, I miss my home in Heaven.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"Any  predictions  for  the  afterlife?", function() ghost3.afterlife() end},
      }
    })
end

function ghost3.afterlife()
    Talkies.say("Leah", "I know where I'm going, back to my love's glorious kingdom.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"good  afterlife", function() ghost3.good() end},
        {"bad  afterlife", function() ghost3.bad() end},
        {"limbo", function() ghost3.limbo() end},
      }
    })
end

function ghost3.good()
  bgID = bgID+1
  Talkies.say("?????", {"you've sent Leah to the good afterlife.", "this is the end of the demo, thanks for playing!"},
    {
      talkSound=sfx_talk_u,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"continue", function() ghost3.next() end},
      }
    })
end

function ghost3.bad()
  bgID = bgID+1
  Talkies.say("?????", {"you've sent Leah to the bad afterlife.", "this is the end of the demo, thanks for playing!"},
    {
      talkSound=sfx_talk_u,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"continue", function() ghost3.next() end},
      }
    })
end

function ghost3.limbo()
  bgID = bgID+1
  Talkies.say("?????", {"you've kept Leah in limbo.", "this is the end of the demo, thanks for playing!"},
    {
      talkSound=sfx_talk_u,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"continue", function() ghost3.next() end},
      }
    })
end

function ghost3.next()
  mus_leah:stop()
  GAMEMODE = 0
  INTERVIEW = 0
  bgID = 0
  ghostIntro.sayHello()
end

return ghost3
