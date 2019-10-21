-- Planet.lua
-- Firoso 2019
-- Written for use by the Twilight Imperium Tabletop Simulator Community
-- https://github.com/TwilightImperiumContentCreators/TTS-TwilightImperium

-- This file contains the class Planet used to represent the data for individual planets
-- used in Twilight Imperium, as well as supporting methods for working with those planets.

require('src/models/abstractions/Exhaustable')

-- Planet Class
function Planet(name, tileId, resources, influence, planetType, technologySpeciality)
    -- public members
    local self = Exhaustable()
    -- the name of the planet
    self.name = name or 'unknown'    
    -- the id of the tile associated with this planet or -1 for 'none'
    self.tileId = tileId or -1
    -- the resources provided by this planet
    self.resources = resources or 0
    -- the influence provided by this planet
    self.influence = influence or 0
    -- the type of this planet
    -- NOTE: this should likely be enumerable or a discriminated union
    self.planetType = planetType
    -- the technologySpeciality provided by the planet
    -- NOTE: this should likely be enumerable or a discriminated union
    self.technologySpeciality = technologySpeciality
   
    function self.toString()
      return (tileId ~= -1 and "("..tileId..")" or "") .. name .. " - " .. resources .. "R " .. influence .. "I" .. (planetType and (" - " .. planetType)  or "") .. (technologySpeciality and (" - " .. technologySpeciality)  or "") .. (exhausted and " |Exhausted|"  or " |Ready|")
    end
  
    -- return the instance
    return self
  end