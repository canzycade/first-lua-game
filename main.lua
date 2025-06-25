function love.load()
    player = {}
    player.x = 400
    player.y = 275
    player.speed = 200
end

function love.update(dt)
    if love.keyboard.isDown("w") then
        player.y = player.y - player.speed * dt
    end
    if love.keyboard.isDown("s") then
        player.y = player.y + player.speed * dt
    end
    if love.keyboard.isDown("a") then
        player.x = player.x - player.speed * dt
    end
    if love.keyboard.isDown("d") then
        player.x = player.x + player.speed * dt
    end
end

function love.draw()
    love.graphics.circle("fill", player.x, player.y, 50)
end
