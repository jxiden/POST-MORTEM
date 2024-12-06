function loadBackgrounds()
  bg1 = {}
    bg1.spriteSheet = gfx.newImage("sprites/bg1-2-sprite.png")
    bg1.grid = anim8.newGrid(800,600, bg1.spriteSheet:getWidth(), bg1.spriteSheet:getHeight())
    
    bg1.animation = anim8.newAnimation(bg1.grid('1-10', 1),0.2)
    
  bg2 = {}
    bg2.spriteSheet = gfx.newImage("sprites/bg2-sprite.png")
    bg2.grid = anim8.newGrid(800,600, bg2.spriteSheet:getWidth(), bg2.spriteSheet:getHeight())
    
    bg2.animation = anim8.newAnimation(bg2.grid('1-20', 1),0.2)
    
end


function bg_update(dt)
  --bg1.animation:update(dt)
  bg2.animation:update(dt)
end

function bg_draw()
  --bg1.animation:draw(bg1.spriteSheet,0,0)
  bg2.animation:draw(bg2.spriteSheet,0,0)
end
