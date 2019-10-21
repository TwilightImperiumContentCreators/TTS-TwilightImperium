require('../../src/models/MapTile')
local testTile = MapTile(1, {'Jord', "Jard"},{"ɑ", "ᵝ"})
print (testTile.toString())