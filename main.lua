function love.load()
    windfield = require 'libraries/windfield'
    world = windfield.newWorld(0, 0)

    camera = require 'libraries/camera'
    cam = camera()
    
    anim8 = require 'libraries/anim8'   -- importing anim8
    love.graphics.setDefaultFilter("nearest", "nearest")    -- for scaling without blur

    sti = require 'libraries/sti'
    gameMap = sti('maps/forestmap.lua')

    local spawnX = (gameMap.width * gameMap.tilewidth)/2 - 30
    local spawnY = gameMap.height * gameMap.tileheight - 65

    player = {}
    player.collider = world:newBSGRectangleCollider(spawnX, spawnY, 25,35,5) -- wdith, height, corners
    player.collider:setFixedRotation(true)
    player.x = spawnX
    player.y = spawnY
    player.speed = 190
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
    
    walls = {}
    if gameMap.layers['walls'] then
        for i, obj in pairs(gameMap.layers['walls'].objects) do
            local wall = world:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
            wall:setType('static')
            table.insert(walls, wall) -- puts wall object into walls table
        end
    end
    

end

function love.update(dt)
    local isMoving = false
    local diagSlow = 45

    local vx = 0    -- collider speed
    local vy = 0

    if love.keyboard.isDown("right") then
        if love.keyboard.isDown("down") or love.keyboard.isDown("up") then
            player.diagSpeed = player.speed-diagSlow
        else 
            player.diagSpeed = player.speed
        end
        vx = player.diagSpeed
        player.anim = player.animations.right
        isMoving = true
    end     
    if love.keyboard.isDown("left") then
        if love.keyboard.isDown("down") or love.keyboard.isDown("up") then
            player.diagSpeed = player.speed-diagSlow
        else 
            player.diagSpeed = player.speed
        end
        vx = -1 * player.diagSpeed
        player.anim = player.animations.left
        isMoving = true
    end  
    if love.keyboard.isDown("down") then
        if love.keyboard.isDown("left") or love.keyboard.isDown("right") then
            player.diagSpeed = player.speed-diagSlow
        else 
            player.diagSpeed = player.speed
        end
        vy = (player.diagSpeed-1)
        player.anim = player.animations.down
        isMoving = true
    end  
    if love.keyboard.isDown("up") then
        if love.keyboard.isDown("left") or love.keyboard.isDown("right") then
            player.diagSpeed = player.speed-diagSlow
        else 
            player.diagSpeed = player.speed
        end
        vy = -1 * (player.diagSpeed-1)
        player.anim = player.animations.up
        isMoving = true
    end  

    player.collider:setLinearVelocity(vx, vy)

    if isMoving == false then
        player.anim:gotoFrame(2)
    end 

    world:update(dt)
    player.x = player.collider:getX()
    player.y = player.collider:getY() -3    -- collider offset


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
        player.anim:draw(player.spriteSheet, player.x, player.y, nil, 0.75, nil, 24,32)   -- down anim drawing
    cam:detach()
    love.graphics.setFont(gameFont)
    love.graphics.print("Level: "..player.level)
end
