function load_backgrounds()
bg1_frames={}
bg1=gfx.newImage("sprites/bg1-2-sprite.png")
bg1_width=bg1:getWidth()
bg1_height=bg1:getHeight()
bg1_framewidth=800
bg1_frameheight=600
  bg1_currentframe=1
  for i=0,9 do 
    table.insert(bg1_frames,gfx.newQuad(i*bg1_framewidth,0,bg1_framewidth,bg1_frameheight,bg1_width,bg1_height))
    end 
end


function bg_update(dt)
  bg1_currentframe=bg1_currentframe+dt*8
  if bg1_currentframe>10 then
    bg1_currentframe=1
  end
  bg1_frameNum=bg1_frames[math.floor(bg1_currentframe)]
end

function bg_draw()
  gfx.draw(bg1,bg1_frameNum,0,0)
  end
