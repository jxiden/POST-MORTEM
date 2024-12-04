Talkies = require('libraries/talkies')
anim8 = require 'libraries/anim8'
function love.load()


  gfx = love.graphics
  
  Creature = require "creatures"
  
  Creature.sayHello()
end

function love.update(dt)
  Talkies.update(dt)
end

function love.draw()
  img2 = gfx.newImage("sprites/img2.png")
  gfx.draw(img2)
  Talkies.draw()
end

function love.keypressed(key)
  if key == "f" then love.graphics.toggleFullscreen() end
  if key == "return" or key=="space" then Talkies.onAction()
  elseif key == "up" then Talkies.prevOption()
  elseif key == "down" then Talkies.nextOption()
  end
end