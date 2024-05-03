function love.load()
    target =  {}
    target.x = 300
    target.y = 300
    target.radius = 50

    score = 0
    timer = 0
    maxTime = 15

    gameIsOver = false
end

function love.update(dt)
    timer = timer + dt
    if timer >= maxTime then
        gameIsOver = true
    end
end

function love.draw()
    love.graphics.setBackgroundColor(0.9, 0.9, 0.5)
    love.graphics.setColor(1,0,0)
    love.graphics.circle("fill", target.x, target.y, target.radius)
    love.graphics.setColor(1,1,1)
    love.graphics.circle("fill", target.x, target.y, target.radius-15)
    love.graphics.setColor(1,0,0)
    love.graphics.circle("fill", target.x, target.y, target.radius-30)

    love.graphics.setColor(1,1,1)
    
    

    if gameIsOver then
        love.graphics.print("Game Over!", love.graphics.getWidth()/2.75, 20)
        love.graphics.print("Final Score: "..score, love.graphics.getWidth()/2.9, 55)
    else
        gameFont = love.graphics.newFont(50)
        love.graphics.setFont(gameFont)
        love.graphics.print(score, 5, 0)
        gameFont = love.graphics.newFont(35)
        love.graphics.setFont(gameFont)
        love.graphics.print("Timer: " .. math.floor(maxTime - timer), 5, love.graphics.getHeight()-45)
        
    end
end

function love.mousepressed(x, y, button, istouch, presses)
    if button == 1 and gameIsOver~=true then
        local mouseToTarget = distanceBetween(x,y, target.x,target.y)
        if mouseToTarget < target.radius then
            score = score + 1
            target.x = math.random(target.radius,love.graphics.getWidth()-target.radius)
            target.y = math.random(target.radius,love.graphics.getHeight()-target.radius)
        end
    end
end

function distanceBetween(x1, y1, x2, y2)
    return math.sqrt(((x2-x1)^2) + ((y2-y1)^2))
end