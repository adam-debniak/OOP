-- tworzymy BIBLIOTEKE!
-- ta biblioteka jest klasą akurat
local klocuch = {}
klocuch.__index = klocuch   -- do klocucha dodalismy pole o nazwie __index

-- function klocuch.init(self)
-- function klocuch:init() -- te dwie linijki są równoważne

-- pola klocucha z danymi:

-- teraz WIDZIMY jakie pola zawiera tabela klocuch
klocuch.lewaStrona = 0
klocuch.prawaStrona = 0
klocuch.gora = 0
klocuch.dol = 0

function klocuch:init(lewaStrona, prawaStrona, gora, dol)
    -- to MUSI być w tej formie
    local nowyKloc = {}
    setmetatable(nowyKloc, klocuch)
    -- aż dotąd

    nowyKloc.lewaStrona = lewaStrona
    nowyKloc.prawaStrona = prawaStrona
    nowyKloc.gora = gora
    nowyKloc.dol = dol

    return nowyKloc
end

function klocuch:pisz()
    love.graphics.print("wys/szer: " .. (self.dol - self.gora) .. "/".. (self.prawaStrona - self.lewaStrona))
end

-- function klocuch.rysuj(self) <- do self trafi FAKTYCZNY obiekt, ktory masz w main.lua
function klocuch:rysuj()
    love.graphics.polygon(
        "fill", 
        {
            self.lewaStrona, self.gora,
            self.prawaStrona, self.gora,
            self.prawaStrona, self.dol,
            self.lewaStrona, self.dol,
        }
    )
end


return klocuch