Talkies = require('libraries/talkies')
anim8 = require 'libraries/anim8'

GAMEMODE = 1
GAMEPLAYMODES = 1

--GAMEMODES
--0: SPLASHSCREENS
--1: TITLESCREEN
--2: OPTIONS(?)
--3: GAMEPLAY

--GAMEPLAYMODES
--0: DUMMY 
--1: FRANCIS HATT 
--2: 
--3:
--4: 
--5:
--6: 

function love.load()
  love.window.setTitle("MEAT")
  love.window.setMode(800,600)
  gfx = love.graphics
  
  Creature = require "creatures"
  
  Creature.sayHello()
  
  require "bghandler"
  load_backgrounds()
end

function love.update(dt)
  
  
  Talkies.update(dt)
  bg_update(dt)
end

function love.draw()
  if GAMEMODE == 1 then
    img2 = gfx.newImage("sprites/bg2-sprite.png")
    gfx.draw(img2)  
  elseif GAMEMODE == 3 then
    bg_draw()
    Talkies.draw()
  end
end

function love.keypressed(key)
  if key == "f" then 
    love.window.setFullscreen(true)
  end
  if key == "return" or key=="space" then Talkies.onAction()
  elseif key == "up" then Talkies.prevOption()
  elseif key == "down" then Talkies.nextOption()
  end
end