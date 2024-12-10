Talkies = require('libraries/talkies')
anim8 = require 'libraries/anim8'
tween = require 'libraries/tween'

--CHANGE GAMEMODE/GAMEPLAYMODE HERE IF YOU WISH TO DEBUG INDIVIDUAL THINGS
GAMEMODE = 0
INTERVIEW = 1

isFullScreen = false

playNOISE = true
fadeOutSS = 0
fadeInSS = 1
fadeInBLK = {r=0,g=0,b=0}
fadeInNAT = {r=100,g=100,b=100}
ttlOption = 0

creditsStartPos = 600

function love.load()
  --setup
  love.window.setTitle("MEAT")
  love.window.setMode(800,600)
  
  ssTimer = 0
  
  --graphics
  gfx = love.graphics
  require "gfx"
  require "shaders"
  loadGraphics()
  loadFonts()
  ghost1 = require "ghost1"
  
  ghost1.sayHello()
  
  require "bghandler"
  loadBackgrounds()
  
  --music/sfx
  snd = love.audio
  require "sounds"
  loadSounds()
end

function love.update(dt)
  mausx, mausy = love.mouse.getPosition()  
  if GAMEMODE == 0 then
    ssLen = 4
    colors_SS=fadeInBLK
    if fadeInSS == 1 then
      local fade = tween.new(0.39, colors_SS, fadeInNAT, inOutQuint)
      fade:update(dt)
    end
    ssTimer = ssTimer+dt
    if ssTimer >= ssLen then
      GAMEMODE = 1
    end
    snd.setEffect("NOISEVerb", {type="reverb"})
    if math.floor(ssTimer) == 1 then
      fadeInSS = 0
      if playNOISE == true then
        sfx_NOISE:setEffect("NOISEVerb")
        sfx_NOISE:play()
        playNOISE = false
      end
    elseif math.floor(ssTimer) == 3 then
      fadeOutSS = 1
    end
    if fadeOutSS == 1 then
      local fade2 = tween.new(0.5, colors_SS, fadeInBLK, inOutQuint)
      fade2:update(dt)
    end
  elseif GAMEMODE == 1 then
    if mausx >= 210 and mausx <= 590 then 
      if mausy >= 300 and mausy <360 then
        ttlOption = 0
      elseif mausy >= 360 and mausy <420 then
        ttlOption = 1
      elseif mausy >= 420 and mausy <480 then
        ttlOption = 2
      end
    end 
  elseif GAMEMODE == 2 then 
  elseif GAMEMODE == 3 then
    Talkies.update(dt)
    bg_update(dt)
  elseif GAMEMODE == 4 then
    creditsUpdate(dt)
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
  elseif GAMEMODE == 4 then
    Credits()
  end
end

function love.keypressed(key)
  if GAMEMODE == 1 then
    if ttlOption == 0 then
      if key == "down" then
        ttlOption = 1
        snd.stop(sfx_ttlSelect)
        sfx_ttlSelect:play()
      elseif key == "return" then
        mus_title:stop()
        GAMEMODE = 3
      end
    elseif ttlOption == 1 then
      if key == "down" then
        ttlOption = 2
        snd.stop(sfx_ttlSelect)
        sfx_ttlSelect:play()  
      elseif key == "up" then
        ttlOption = 0 
        snd.stop(sfx_ttlSelect)
        sfx_ttlSelect:play()
      elseif key == "return" then
        mus_title:stop()
        GAMEMODE = 2
      end
    elseif ttlOption == 2 then
      if key == "up" then
        ttlOption = 1 
        snd.stop(sfx_ttlSelect)
        sfx_ttlSelect:play()  
      elseif key == "return" then
        mus_title:stop()
        GAMEMODE = 4
      end
    end  
  elseif GAMEMODE == 2 then 
    if key == "return" and optionSelect == 0 then
      fullscreen = not fullscreen
      love.window.setFullscreen(fullscreen, "exclusive")
    end
  elseif GAMEMODE == 3 then
    if key == "return" or key=="space" then 
      Talkies.onAction()
    elseif key == "up" then 
      Talkies.prevOption()
    elseif key == "down" then 
      Talkies.nextOption()
    end
  end

end

function SplashScreen()
  splashScreenArt = gfx.newImage("sprites/splashscreen.png")
  gfx.setColor(colors_SS.r/100,colors_SS.g/100,colors_SS.b/100)
  gfx.draw(splashScreenArt,0,0)
  gfx.setColor(1,1,1)
  gfx.print(colors_SS.r,fontDebug,0,0)
  gfx.print(math.floor(fadeOutSS),fontDebug,0,20)
  end

function TitleScreen()
  mus_title:play()
  img2 = gfx.newImage("sprites/img2.png")
  gfx.setColor(0.3,0.3,0.4)
  gfx.draw(img2) 
  gfx.setColor(1,1,1)
  gfx.print("POST-MORTEM",fontTitle,20,100)
  gfx.print(mausx,fontDebug,mausx,mausy+100)
  
  option1x=210 --option 1 on menu
  option23x=260 --options 2 and 3 on menu
  
  if ttlOption == 0 then
    gfx.setColor(1,1,1)
    gfx.print("START GAME",fontTextSM,option1x,300)
    gfx.setColor(0.5,0.5,0.5)
    gfx.print("OPTIONS",option23x,360)
    gfx.print("CREDITS",option23x,420)
  elseif ttlOption == 1 then 
    gfx.setColor(1,1,1)
    gfx.print("OPTIONS",fontTextSM,option23x,360)
    gfx.setColor(0.5,0.5,0.5)
    gfx.print("START GAME",option1x,300)
    gfx.print("CREDITS",option23x,420)
  elseif ttlOption == 2 then
    gfx.setColor(1,1,1)
    gfx.print("CREDITS",fontTextSM,option23x,420)
    gfx.setColor(0.5,0.5,0.5)
    gfx.print("START GAME",option1x,300)
    gfx.print("OPTIONS",option23x,360)
  end
  
  
end
optionSelect = 0  
function Options()
  if key == "f" then
    fullscreen = not fullscreen
    love.window.setFullscreen(fullscreen, "exclusive")
  end
end
function OptionsUpdate()
  
end
function MainGameLoop()
  bg_draw()
  Talkies.draw()
end

function Credits()
  mus_credits:play()
  credSpacing=40
  credX = 20
  gfx.setColor(1,1,1)
  tempBG = gfx.newImage("sprites/tempBG.jpg")
  gfx.draw(tempBG)
  gfx.setColor(0,0,0)
  gfx.rectangle("fill",0,0,180,600)
  gfx.setColor(1,1,1)
  gfx.print(creditsStartPos,fontDebug)
  gfx.print("post-mortem credits",fontCredits,credX,creditsStartPos)
  gfx.print("",credX,creditsStartPos+credSpacing*1)
  gfx.print("lead design:",credX,creditsStartPos+credSpacing*2)
  gfx.print("desi",credX,creditsStartPos+credSpacing*3)
  gfx.print("art direction:",credX,creditsStartPos+credSpacing*4)
  gfx.print("jaiden",credX,creditsStartPos+credSpacing*5)
  gfx.print("art assets:",credX,creditsStartPos+credSpacing*6)
  gfx.print("jaiden",credX,creditsStartPos+credSpacing*7)
  gfx.print("music & sfx:",credX,creditsStartPos+credSpacing*8)
  gfx.print("desi",credX,creditsStartPos+credSpacing*9)
  gfx.print("programming:",credX,creditsStartPos+credSpacing*10)
  gfx.print("desi & jaiden",credX,creditsStartPos+credSpacing*11)
  gfx.print("",credX,creditsStartPos+credSpacing*12)
  gfx.print("libraries used:",credX,creditsStartPos+credSpacing*13)
  gfx.print("anim8",credX,creditsStartPos+credSpacing*14)
  gfx.print("talkies.lua",credX,creditsStartPos+credSpacing*15)
  gfx.print("tween.lua",credX,creditsStartPos+credSpacing*16)
  gfx.print("",credX,creditsStartPos+credSpacing*17)
  gfx.print("special thanks",credX,creditsStartPos+credSpacing*18)
  gfx.print("niko baletin",credX,creditsStartPos+credSpacing*19)
  gfx.print("lee tusman",credX,creditsStartPos+credSpacing*20)
  gfx.print("windows97",credX,creditsStartPos+credSpacing*21)
  gfx.print("",credX,creditsStartPos+credSpacing*22)
  gfx.print("thank you for playing!",credX,creditsStartPos+credSpacing*23)
end
function creditsUpdate(dt)
  creditsStartPos=creditsStartPos-(dt*12)
  --if creditsStartPos >= 
end


function BlackToWhite()
  gfx.setBackgroundColor(bgclr.r/100,bgclr.g/100,bgclr.b/100)
  end