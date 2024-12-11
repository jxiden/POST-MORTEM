function loadBackgrounds()
  bg0 = {}
    bg0.spriteSheet = gfx.newImage("sprites/bgs/bg0-sprite.png")
    bg0.grid = anim8.newGrid(800,600, bg0.spriteSheet:getWidth(), bg0.spriteSheet:getHeight())
    
    bg0.animation = anim8.newAnimation(bg0.grid('1-10', 1),0.1)
    
  bg1 = {}
    bg1.spriteSheet = gfx.newImage("sprites/bgs/bg1-sprite.png")
    bg1.grid = anim8.newGrid(800,600, bg1.spriteSheet:getWidth(), bg1.spriteSheet:getHeight())
    
    bg1.animation = anim8.newAnimation(bg1.grid('1-10', 1),0.1)
    
  bg2 = {}
    bg2.spriteSheet = gfx.newImage("sprites/bgs/bg2-sprite.png")
    bg2.grid = anim8.newGrid(800,600, bg2.spriteSheet:getWidth(), bg2.spriteSheet:getHeight())
    
    bg2.animation = anim8.newAnimation(bg2.grid('1-5', '1-4'),0.1)
    
  bg3 = {}
    bg3.spriteSheet = gfx.newImage("sprites/bgs/bg3-sprite.png")
    bg3.grid = anim8.newGrid(800,600, bg3.spriteSheet:getWidth(), bg3.spriteSheet:getHeight())
    
    bg3.animation = anim8.newAnimation(bg3.grid('1-5', '1-3'),0.2)
    
  bg4 = {}
    bg4.spriteSheet = gfx.newImage("sprites/bgs/bg4-sprite.png")
    bg4.grid = anim8.newGrid(800,600, bg4.spriteSheet:getWidth(), bg4.spriteSheet:getHeight())
    
    bg4.animation = anim8.newAnimation(bg4.grid('1-5', '1-3'),0.2)
    
  bg6 = {}
    bg6.spriteSheet = gfx.newImage("sprites/bgs/bg6-sprite.png")
    bg6.grid = anim8.newGrid(800,600, bg6.spriteSheet:getWidth(), bg6.spriteSheet:getHeight())
    
    bg6.animation = anim8.newAnimation(bg6.grid('1-5', '1-3'),0.2)
    
end

function bg_update(dt)
  if bgID == 0 then bg0.animation:update(dt)
  elseif bgID == 1 then bg1.animation:update(dt) 
  elseif bgID == 2 then bg2.animation:update(dt) 
  elseif bgID == 3 then bg3.animation:update(dt) 
  elseif bgID == 4 then bg4.animation:update(dt) 
  elseif bgID == 5 then bg6.animation:update(dt) end
end

function bg_draw()
  if bgID == 0 then 
    bg0.animation:draw(bg0.spriteSheet,0,0)
  elseif bgID == 1 then 
    bg1.animation:draw(bg1.spriteSheet,0,0)
  elseif bgID == 2 then 
    bg2.animation:draw(bg2.spriteSheet,0,0) 
  elseif bgID == 3 then 
    bg3.animation:draw(bg3.spriteSheet,0,0) 
  elseif bgID == 4 then 
    bg6.animation:draw(bg4.spriteSheet,0,0) 
  elseif bgID == 5 then 
    bg6.animation:draw(bg6.spriteSheet,0,0) 
  end
end