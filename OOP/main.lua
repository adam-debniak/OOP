local klocek = require("kloc")

local kloc1
local kloc2

function love.load()
    -- kloc1 = klocek:init()
    -- kloc1 = klocek.init(klocek) -- te dwie linijki są równoważne

    kloc1 = klocek:init(30, 40, 20, 30)
    kloc2 = klocek:init(100, 200, 100, 300)


end

function love.update()
end

function love.draw()
    kloc1:pisz() -- kloc1.pisz(kloc1)
    kloc1:rysuj() -- kloc1.rysuj(kloc1)
    kloc2:rysuj()
end
