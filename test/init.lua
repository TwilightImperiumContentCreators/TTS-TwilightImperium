local TI = require("src")

assert(tostring(TI.MapTile:new(1, {'Jord', "Jard"}, {"ɑ", "ᵝ"}))
        == "1 - Jord, Jard - ɑ, ᵝ",
       "MapTile converted to unexpected string")
assert(tostring(TI.Planet:new("Jord", 1, 4, 2, "Sol Homeworld"))
         == "(1)Jord - 4R 2I - Sol Homeworld |Ready|",
        "Planet converted to unexpected string")