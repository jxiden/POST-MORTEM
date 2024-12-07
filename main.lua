Talkies = require('libraries/talkies')
anim8 = require 'libraries/anim8'
flux = require 'libraries/flux'

--CHANGE GAMEMODE/GAMEPLAYMODE HERE IF YOU WISH TO DEBUG INDIVIDUAL THINGS
GAMEMODE = 0
INTERVIEW = 1

bgclr = {r=0,g=0,b=0}
ttlOption = 0

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

--INTERVIEW
--0: INTRO 
--1: FRANCIS HATT 
--2: 
--3:
--4: 
--5:

function love.load()
  --setup
  love.window.setTitle("MEAT")
  love.window.setMode(800,600)
  
  ssTimer = 0
  
  --graphics
  gfx = love.graphics
  require "gfx"
  loadGraphics()
  loadFonts()
  Creature = require "creatures"
  
  Creature.sayHello()
  
  require "bghandler"
  loadBackgrounds()
  
  --music/sfx
  snd = love.audio
  require "sounds"
  loadSounds()
end

function love.update(dt)
  flux.update(dt)
  if GAMEMODE == 0 then
    ssLen = 3
    fadeIn_SS = {f=255}
    flux.to(fadeIn_SS, 1, {f=0})--:ease("circinout")
    ssTimer = ssTimer+dt
    if ssTimer >= ssLen then
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
    --Options()
    TweenTest()
  elseif GAMEMODE == 3 then
    MainGameLoop()
  end
end

function love.keypressed(key)
  if key == "f" then 
    love.window.setFullscreen(true)
  end
  
  if key == "down" and GAMEMODE == 1 and ttlOption == 0 then
    ttlOption = 1
    snd.stop(sfx_ttlSelect)
    sfx_ttlSelect:play()
  elseif key == "up" and GAMEMODE == 1 and ttlOption == 1 then
    ttlOption = 0 
    snd.stop(sfx_ttlSelect)
    sfx_ttlSelect:play()
  end
  
  if key == "return" or key=="space" then Talkies.onAction()
  elseif key == "up" then Talkies.prevOption()
  elseif key == "down" then Talkies.nextOption()
  end
end

function SplashScreen()
  splashScreenArt = gfx.newImage("sprites/splashscreen.png")
  gfx.setColor(0,0,0,fadeIn_SS.f)
  gfx.draw(splashScreenArt,0,0)
  gfx.setColor(1,1,1)
  gfx.print(ssTimer,fontDebug, 0, 0)
  sfx_NOISE:play()
  end

function TitleScreen()
  mus_title:play()
  img2 = gfx.newImage("sprites/img2.png")
  gfx.setColor(0.3,0.3,0.4)
  gfx.draw(img2) 
  x, y = love.mouse.getPosition( )  
  gfx.setColor(1,1,1)
  gfx.print("POST-MORTEM",fontTitle,20,100)
  
  if ttlOption == 0 then
    gfx.setColor(1,1,1)
    gfx.print("START GAME",fontTextSM,220,300)
    gfx.setColor(0.5,0.5,0.5)
    gfx.print("OPTIONS",fontTextSM,270,360)
  elseif ttlOption == 1 then 
    gfx.setColor(1,1,1)
    gfx.print("OPTIONS",fontTextSM,270,360)
    gfx.setColor(0.5,0.5,0.5)
    gfx.print("START GAME",fontTextSM,220,300)
  end
  
  
end

function Options()
  
end

function MainGameLoop()
  bg_draw()
  Talkies.draw()
end

function BlackToWhite()
  gfx.setBackgroundColor(bgclr.r/100,bgclr.g/100,bgclr.b/100)
  end