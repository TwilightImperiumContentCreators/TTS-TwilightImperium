-- MapTile.lua
-- Firoso 2019
-- Written for use by the Twilight Imperium Tabletop Simulator Community
-- https://github.com/TwilightImperiumContentCreators/TTS-TwilightImperium

-- This file contains the class MapTile used to represent the data for the Map
-- tiles used in Twilight Imperium, as well as supporting methods for working
-- with those tiles.

-- MapTile Class
function MapTile(id, planets, anomolies)
  -- public members
  local self = {
    -- the numeric Id of the tile as shown center-left of the tile art.
    id = id or -1,
    -- a table containing a list of plants on this tile.
    planets = planets or {},
    -- a table containing the anomolies on this tile.
    anomolies = anomolies or {}
  }

  function self.containsPlanet(planetName)
    for _,v in pairs(self.planets) do
      if string.upper(v) == string.upper(planetName) then
        return true
      end
    end
    return false
  end

  function self.toString()
    return id .. " - " .. table.concat(planets, ", ") .. ((#anomolies ~= 0) and (" - " .. table.concat(anomolies, ", ")) or "")
  end

  -- return the instance
  return self
end