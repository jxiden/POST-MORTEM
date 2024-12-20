local Talkies = require('libraries/talkies')

local ghost1 = {}
local avatar;

Talkies.font = fontTextInGame

function ghost1.sayHello()
  f_sprite = gfx.newImage("sprites/ghosts/g1-0.png")

  Talkies.say("...", "Hello  there  youngster.",
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
    Talkies.say("Francis", "My  name  is  Francis  Hatt",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What  was  your  life  like?", function() ghost1.life() end},
      }
    })
end

function ghost1.life()
    Talkies.say("Francis", "I  had  a  pleasant  life.  My  wife  Mabel  and  I  owned  a  small  farm  in  Louisa  County.  We  sold  eggs  to  locals  and  took  care  of  a  few  cows,  cats,  and  chickens.  My  wife  was  usually  the  one  taking  care  of  her  garden,  but  I  helped  her  out  too.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What  achievements  are  you  proud  of?", function() ghost1.proud() end},
      }
    })
end

function ghost1.proud()
    Talkies.say("Francis", "I’m  proud  of  being  able  to  care  for  my  community  and  my  lovely  wife.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What  do  you  love?", function() ghost1.love() end},
      }
    })
end

function ghost1.love()
    Talkies.say("Francis", "My  wife.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"What’s  your  biggest  regret?", function() ghost1.regret() end},
      }
    })
end

function ghost1.regret()
    Talkies.say("Francis", "Not  having  children.  I  wish  I  had  someone  to  pass  everything  down  to.  I  hope  someone  finds  the  farm  and  takes  care  of  it someday.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"Any  predictions  for  the  afterlife?", function() ghost1.afterlife() end},
      }
    })
end

function ghost1.afterlife()
    Talkies.say("Francis", "I’m  not  sure,  but  I hope  it’s  kind  to  me.",
    {
      image=f_sprite,
      talkSound=sfx_talk_f,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"good  afterlife", function() ghost1.good() end},
        {"bad  afterlife", function() ghost1.bad() end},
        {"limbo", function() ghost1.limbo() end},
      }
    })
end

function ghost1.good()
  bgID = bgID+1
  Talkies.say("?????", {"you've sent Francis to the good afterlife."},
    {
      talkSound=sfx_talk_u,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"continue", function() ghost1.next() end},
      }
    })
end

function ghost1.bad()
  bgID = bgID+1
  Talkies.say("?????", {"you've sent Francis to the bad afterlife."},
    {
      talkSound=sfx_talk_u,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"continue", function() ghost1.next() end},
      }
    })
end

function ghost1.limbo()
  bgID = bgID+1
  Talkies.say("?????", {"you've kept Francis in limbo."},
    {
      talkSound=sfx_talk_u,
      typedNotTalked=true,
      textSpeed="slow",
      
      options={
        {"continue", function() ghost1.next() end},
      }
    })
end

function ghost1.next()
  INTERVIEW = INTERVIEW+1
  bgID = bgID+1
  ghost2.sayHello()
end

return ghost1
