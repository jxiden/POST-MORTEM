
function love.load()
  Talkies = require('libraries/talkies')
  Object = require "libraries/classic"
  gfx = love.graphics
  
  require "creatures"
  
  creature = Creature()
  
--  Talkies.say("i hate this shit", "Hello World!", {
--      image=love.graphics.newImage("sprites/img.png"),
--      talkSound=love.audio.newSource("sfx/talk.wav", "static"),
--      typedNotTalked=false,
--      textSpeed="slow"
--      })
end

function love.update(dt)
  Talkies.update(dt)
end

function love.draw()
  img2 = gfx.newImage("sprites/img2.png")
  gfx.draw(img2, 0,0)
  Talkies.draw()
  creature:draw()
end

function love.keypressed(key)
  if key == "f" then love.graphics.toggleFullscreen() end
  if key == "return" or key=="space" then Talkies.onAction()
  elseif key == "up" then Talkies.prevOption()
  elseif key == "down" then Talkies.nextOption()
  end
end