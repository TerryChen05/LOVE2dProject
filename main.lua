function love.load()
    camera = require 'libraries/camera'
    cam = camera()
    
    anim8 = require 'libraries/anim8'   -- importing anim8
    love.graphics.setDefaultFilter("nearest", "nearest")    -- for scaling without blur

    sti = require 'libraries/sti'
    gameMap = sti('maps/forestmap.lua')

    player = {}     
    player.x = (gameMap.width * gameMap.tilewidth)/2 - 15
    player.y = gameMap.height * gameMap.tileheight - 50
    player.speed = 5
    player.diagSpeed = player.speed
    player.level = 1

    gameFont = love.graphics.newFont(25)

    -- player sprite
    player.spriteSheet = love.graphics.newImage('sprites/werewolf-SWEN.png')
    player.grid = anim8.newGrid(48,64, player.spriteSheet:getWidth(), player.spriteSheet:getHeight())

    player.animations = {}
    player.animations.down = anim8.newAnimation(player.grid('1-3', 1), 0.2) -- 0.2 is frame rate
    player.animations.left = anim8.newAnimation(player.grid('1-3', 2), 0.2) 
    player.animations.right = anim8.newAnimation(player.grid('1-3', 3), 0.2) 
    player.animations.up = anim8.newAnimation(player.grid('1-3', 4), 0.2) 

    player.anim = player.animations.left

end

function love.update(dt)
    local isMoving = false
    local diagSlow = 1.25

    if love.keyboard.isDown("right") then
        if love.keyboard.isDown("down") or love.keyboard.isDown("up") then
            player.diagSpeed = player.speed-diagSlow
        else 
            player.diagSpeed = player.speed
        end
        player.x = player.x + player.diagSpeed
        player.anim = player.animations.right
        isMoving = true
    end     
    if love.keyboard.isDown("left") then
        if love.keyboard.isDown("down") or love.keyboard.isDown("up") then
            player.diagSpeed = player.speed-diagSlow
        else 
            player.diagSpeed = player.speed
        end
        player.x = player.x - player.diagSpeed
        player.anim = player.animations.left
        isMoving = true
    end  
    if love.keyboard.isDown("down") then
        if love.keyboard.isDown("left") or love.keyboard.isDown("right") then
            player.diagSpeed = player.speed-diagSlow
        else 
            player.diagSpeed = player.speed
        end
        player.y = player.y + (player.diagSpeed-1)
        player.anim = player.animations.down
        isMoving = true
    end  
    if love.keyboard.isDown("up") then
        if love.keyboard.isDown("left") or love.keyboard.isDown("right") then
            player.diagSpeed = player.speed-diagSlow
        else 
            player.diagSpeed = player.speed
        end
        player.y = player.y - (player.diagSpeed-1)
        player.anim = player.animations.up
        isMoving = true
    end  

    if isMoving == false then
        player.anim:gotoFrame(2)
    end 

    player.anim:update(dt) -- updates down animation
    cam:lookAt(player.x, player.y) -- follows player

    local w = love.graphics.getWidth()
    local h = love.graphics.getHeight()

    -- left and top borders
    if cam.x < w/2 then
        cam.x = w/2
    end
    if cam.y < h/2 then
        cam.y = h/2
    end

    local mapW = gameMap.width * gameMap.tilewidth
    local mapH = gameMap.height * gameMap.tileheight

    -- right and bottom borders
    if cam.x > (mapW - w/2) then
        cam.x = (mapW - w/2)
    end
    if cam.y > (mapH - h/2) then
        cam.y = (mapH- h/2)
    end
end

function love.draw()
    cam:attach()
        gameMap:drawLayer(gameMap.layers["grass"])
        gameMap:drawLayer(gameMap.layers["dirt"])
        gameMap:drawLayer(gameMap.layers["bonus"])
        --love.graphics.draw(background, 0, 0, 0, love.graphics.getWidth() / background:getWidth(), love.graphics.getHeight() / background:getHeight())
        player.anim:draw(player.spriteSheet, player.x, player.y, nil, 1, nil, 24,32)   -- down anim drawing
    cam:detach()
    love.graphics.setFont(gameFont)
    love.graphics.print("Level: "..player.level)
end
