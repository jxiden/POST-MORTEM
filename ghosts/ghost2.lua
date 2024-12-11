local Talkies = require('libraries/talkies')

local ghost2 = {}
local avatar;

Talkies.font = fontTextInGame

function ghost2.sayHello()
  f_sprite = gfx.newImage("sprites/ghosts/g2-0.png")

  Talkies.say("...", "Oh god, I'm finally here.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",

      options={
        {"What's your name?", function() ghost2.name() end}
      }
    })
end

function ghost2.name()
    Talkies.say("Mickey", "My name is Michael Lopez. But people call me Mickey.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What  was  your  life  like?", function() ghost2.life() end},
      }
    })
end

function ghost2.life()
    Talkies.say("Mickey", { "I was born on July 27th 1985. --Height of the cocaine boom.",
        "My father was a local drug guy. -- Worked for The Corporation under Jose Battle. He made millions from the trade.", 
        "Didn’t find out until I was order that that’s how mama got me through college."},
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What  accomplishments  are  you  proud  of?", function() ghost2.proud() end},
      }
    })
end

function ghost2.proud()
    Talkies.say("Mickey", { "I was a quick thinking kid, -- I knew how to keep myself out of trouble while causing it. It made me popular. I had every girl in every school swooning over me and yet I didn’t want any of them. I guess you could say that I’m proud of myself for living my truth. But if you want a real answer, I had sex with Ricky Martin once. I never returned his calls. I wasn’t into iving “la vida loca.”  ",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What  do  you  love?", function() ghost2.love() end},
      }
    })
end

function ghost2.love()
    Talkies.say("Mickey", "My  wife.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What’s  your  biggest  regret?", function() ghost2.regret() end},
      }
    })
end

function ghost2.regret()
    Talkies.say("Mickey", "Not  having  children.  I  wish  I  had  someone  to  pass  everything  down  to.  I  hope  someone  finds  the  farm  and  takes  care  of  it.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"Any  predictions  for  the  afterlife?", function() ghost2.afterlife() end},
      }
    })
end

function ghost2.afterlife()
    Talkies.say("Mickey", "I’m  not  sure,  but  I hope  it’s  kind  to  me.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"good  afterlife", function() ghost2.good() end},
        {"bad  afterlife", function() ghost2.bad() end},
        {"limbo", function() ghost2.limbo() end},
      }
    })
end

return ghost2
