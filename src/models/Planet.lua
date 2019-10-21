-- Planet.lua
-- Firoso 2019
-- Written for use by the Twilight Imperium Tabletop Simulator Community
-- https://github.com/TwilightImperiumContentCreators/TTS-TwilightImperium

-- This file contains the class Planet used to represent the data for individual planets
-- used in Twilight Imperium, as well as supporting methods for working with those planets.

-- Planet Class
function Planet(name, tileId, resources, influence, planetType, technologySpeciality)
    -- public members
    local self = {
      -- the name of the planet
      name = name or 'unknown',
      
      -- the id of the tile associated with this planet or -1 for 'none'
      tileId = tileId or -1,

      resources = resources or 0,
      influence = influence or 0,
      planetType = planetType,
      technologySpeciality = technologySpeciality
    }
   
    function self.toString()
      return (tileId ~= -1 and "("..tileId..")" or "") .. name .. " - " .. resources .. "R " .. influence .. "I" .. (planetType and (" - " .. planetType)  or "") .. (technologySpeciality and (" - " .. technologySpeciality)  or "")
    end
  
    -- return the instance
    return self
  end