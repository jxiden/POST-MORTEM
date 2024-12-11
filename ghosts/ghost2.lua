local Talkies = require('libraries/talkies')

local ghost2 = {}
local avatar;

Talkies.font = fontTextInGame

function ghost2.sayHello()
  f_sprite = gfx.newImage("sprites/ghosts/g2-0.png")

  Talkies.say("...", "Hello  there  youngster.",
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
    Talkies.say("Francis", "My  name  is  Francis  Hatt",
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
    Talkies.say("Francis", "I  had  a  pleasant  life.  My  wife  Mabel  and  I  owned  a  small  farm  in  Louisa  County.  We  sold  eggs  to  locals  and  took  care  of  a  few  cows,  cats,  and  chickens.  My  wife  was  usually  the  one  taking  care  of  her  garden,  but  I  helped  her  out  too.",
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
    Talkies.say("Francis", "I’m  proud  of  being  able  to  care  for  my  community  and  my  lovely  wife.",
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
    Talkies.say("Francis", "My  wife.",
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
    Talkies.say("Francis", "Not  having  children.  I  wish  I  had  someone  to  pass  everything  down  to.  I  hope  someone  finds  the  farm  and  takes  care  of  it.",
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
    Talkies.say("Francis", "I’m  not  sure,  but  I hope  it’s  kind  to  me.",
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
