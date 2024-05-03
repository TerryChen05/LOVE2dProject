function love.load()
    player = {}
    player.x = 0
    player.y = 0
    player.speed = 10
    player.sprite = love.graphics.newImage('sprites/boat.png')
    background = love.graphics.newImage('sprites/ocean.jpg')
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        player.x = player.x + player.speed
    end     
    if love.keyboard.isDown("left") then
        player.x = player.x - player.speed
    end  
    if love.keyboard.isDown("down") then
        player.y = player.y + (player.speed-3)
    end  
    if love.keyboard.isDown("up") then
        player.y = player.y - (player.speed-3)
    end  
end

function love.draw()
    love.graphics.draw(background, 0, 0, 0, love.graphics.getWidth() / background:getWidth(), love.graphics.getHeight() / background:getHeight())
    love.graphics.draw(player.sprite, player.x, player.y, 0, 0.15,0.15)
end
