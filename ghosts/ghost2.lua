local Talkies = require('libraries/talkies')

local ghost2 = {}
local avatar;

Talkies.font = fontTextInGame

function ghost2.sayHello()
  f_sprite = gfx.newImage("sprites/ghosts/g2-0.png")

  Talkies.say("...", "Oh god, I'm finally here.",
    {
      image=f_sprite,
      talkSound=sfx_talk_r,
      typedNotTalked=true,
      textSpeed="slow",

      options={
        {"What's your name?", function() ghost2.name() end}
      }
    })
end

function ghost2.name()
    Talkies.say("Ricky", "My name is Richard Lopez. But people call me Ricky.",
    {
      image=f_sprite,
      talkSound=sfx_talk_r,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What  was  your  life  like?", function() ghost2.life() end},
      }
    })
end

function ghost2.life()
    Talkies.say("Ricky", { "I was born on July 27th 1985. --Height of the cocaine boom.",
        "My father was a local drug guy. -- Worked for The Corporation under Jose Battle. He made millions from the trade.", 
        "Didn’t find out until I was older that that’s how mama got me through college."},
    {
      image=f_sprite,
      talkSound=sfx_talk_r,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What  achievements  are  you  proud  of?", function() ghost2.proud() end},
      }
    })
end

function ghost2.proud()
    Talkies.say("Ricky", {"I was a quick thinking kid, -- I knew how to keep myself out of trouble while causing it.",
        "It made me popular.",
        "I had every girl in every school swooning over me and yet I didn’t want any of them.",
        "...",
        "I guess you could say that I’m proud of myself -- for living my truth.",
        "But if you want a real answer, -- I had sex with Ricky Martin once. -- I never returned his calls.",
        "I wasn’t into living la vida loca. "},
    {
      image=f_sprite,
      talkSound=sfx_talk_r,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What  do  you  love?", function() ghost2.love() end},
      }
    })
end

function ghost2.love()
    Talkies.say("Ricky", {"I love rock climbing. --Getting into it gave me a space to meet a lot of wonderful friends whom I care for deeply, including my boyfriend who motivated me a lot to do better.",
      "I think rock climbing improved who I was as a person."},
    {
      image=f_sprite,
      talkSound=sfx_talk_r,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What’s  your  biggest  regret?", function() ghost2.regret() end},
      }
    })
end

function ghost2.regret()
    Talkies.say("Ricky", {"Not being kinder to the people I loved.",
        "I grew up in tough places.",
        "I couldn’t peel back except to my boyfriend. -- He was really the only one I could trust.",
        "I remember fighting with my mother so much. -- she was ashamed of who I was. She would always ask me when I'd start being normal.",
        "When I got on line here we hadn’t spoken in 3 years. -- I don’t even know if she knows I’m dead or not.",
        "It’s been eating at me since I got here."},
    {
      image=f_sprite,
      talkSound=sfx_talk_r,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"Any  predictions  for  the  afterlife?", function() ghost2.afterlife() end},
      }
    })
end

function ghost2.afterlife()
    Talkies.say("Ricky", {"I don’t know, I honestly didn’t think there was one.",
        "And if there was, I sure as hell wasn't going to heaven, -- pun intended.",
        "I'm ready for anything. I have a lot to think about in my afterlife."},
    {
      image=f_sprite,
      talkSound=sfx_talk_r,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"good  afterlife", function() ghost2.good() end},
        {"bad  afterlife", function() ghost2.bad() end},
        {"limbo", function() ghost2.limbo() end},
      }
    })
end

function ghost2.good()
  bgID = bgID+1
  Talkies.say("?????", {"you've sent Ricky to the good afterlife."},
    {
      talkSound=sfx_talk_u,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"continue", function() ghost2.next() end},
      }
    })
end

function ghost2.bad()
  bgID = bgID+1
  Talkies.say("?????", {"you've sent Ricky to the bad afterlife."},
    {
      talkSound=sfx_talk_u,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"continue", function() ghost2.next() end},
      }
    })
end

function ghost2.limbo()
  bgID = bgID+1
  Talkies.say("?????", {"you've kept Ricky in limbo."},
    {
      talkSound=sfx_talk_u,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"continue", function() ghost2.next() end},
      }
    })
end

function ghost2.next()
  INTERVIEW = INTERVIEW+1
  bgID = bgID+1
  ghost3.sayHello()
end

return ghost2
