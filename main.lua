Talkies = require('libraries/talkies')
anim8 = require 'libraries/anim8'


GAMEMODE = 1
GAMEPLAYMODES = 1

--TODO:
--SPLIT ALL DATA INCLUDES INTO RESPECTIVE FILES TO BE LOADED AT LOVE.LOAD
  --SOUNDS: DONE
  --GRAPHICS: 
--CREATE FADEIN/FADEOUT ROUTINES THAT CAN BE CALLED ON A DIME
--


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
  --setup
  love.window.setTitle("MEAT")
  love.window.setMode(800,600)
  
  --graphics
  gfx = love.graphics
  require "gfx"
  LoadGraphics()
  LoadFonts()
  Creature = require "creatures"
  
  Creature.sayHello()
  
  require "bghandler"
  load_backgrounds()
  
  --music/sfx
  snd = love.audio
  require "sounds"
  load_sounds()
end

function love.update(dt)
  if GAMEMODE == 0 then 
  ssTimer = ssTimer+dt
    if ssTimer == 180
      GAMEMODE = 1
    end
  elseif GAMEMODE == 1 then
    
  elseif GAMEMODE == 2 then 
    
  elseif GAMEMODE == 3 then
    Talkies.update(dt)
    bg_update(dt)
  end

end

function love.draw()
  if GAMEMODE == 0 then
    SplashScreen()
  elseif GAMEMODE == 1 then
    TitleScreen()
  elseif GAMEMODE == 2 then
    Options()
  elseif GAMEMODE == 3 then
    MainGameLoop()
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

function SplashScreen()
  
  end

function TitleScreen()
  mus_title:play()
  img2 = gfx.newImage("sprites/img2.png")
  gfx.setColor(0.3,0.3,0.3)
  gfx.draw(img2) 
  x, y = love.mouse.getPosition( )  
  love.graphics.setColor(1,1,1)
  gfx.print("POST-MORTEM",fontTitle,0,125)
  gfx.print("START GAME",fontTextSM,220,300)
  gfx.print("OPTIONS",fontTextSM,270,360)
  
  
end

function Options()
  
end

function MainGameLoop()
  bg_draw()
  Talkies.draw()
  end