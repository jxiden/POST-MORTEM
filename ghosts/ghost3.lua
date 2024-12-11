local Talkies = require('libraries/talkies')

local ghost3 = {}
local avatar;

Talkies.font = fontTextInGame

function ghost3.sayHello()
  f_sprite = gfx.newImage("sprites/ghosts/g3-0.png")

  Talkies.say("...", "Hello  there  youngster.",
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
    Talkies.say("Francis", "My  name  is  Francis  Hatt",
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
    Talkies.say("Francis", "I  had  a  pleasant  life.  My  wife  Mabel  and  I  owned  a  small  farm  in  Louisa  County.  We  sold  eggs  to  locals  and  took  care  of  a  few  cows,  cats,  and  chickens.  My  wife  was  usually  the  one  taking  care  of  her  garden,  but  I  helped  her  out  too.",
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
    Talkies.say("Francis", "I’m  proud  of  being  able  to  care  for  my  community  and  my  lovely  wife.",
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
    Talkies.say("Francis", "My  wife.",
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
    Talkies.say("Francis", "Not  having  children.  I  wish  I  had  someone  to  pass  everything  down  to.  I  hope  someone  finds  the  farm  and  takes  care  of  it.",
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
    Talkies.say("Francis", "I’m  not  sure,  but  I hope  it’s  kind  to  me.",
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
  Talkies.say("?????", {"you've sent Francis to the good afterlife."},
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
  Talkies.say("?????", {"you've sent Francis to the bad afterlife."},
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
  Talkies.say("?????", {"you've kept Francis in limbo."},
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
  GAMEMODE = 0
  INTERVIEW = 0
  bgID = 0
end

return ghost3
