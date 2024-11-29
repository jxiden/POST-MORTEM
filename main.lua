
function love.load()
  Talkies = require('libraries/talkies')
  Object = require "libraries/classic"
  anim8 = require 'libraries/anim8'

  gfx = love.graphics
  
  require "creatures"
  
  creature = Creature()
  
end

function love.update(dt)
  Talkies.update(dt)
  creature:update(dt)
end

function love.draw()
  img2 = gfx.newImage("sprites/img2.png")
  gfx.draw(img2)
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