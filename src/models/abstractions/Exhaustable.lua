-- Exhaustable.lua
-- Firoso 2019
-- Written for use by the Twilight Imperium Tabletop Simulator Community
-- https://github.com/TwilightImperiumContentCreators/TTS-TwilightImperium

-- This file contains the class Exhaustable used to represent assets that can be
-- exhausted to gain some benefit.

-- Exhaustable Class
function Exhaustable()
    -- public members
    local self = {
      -- indicates if this asset is exhausted or not
      exhausted = false,
    }

    function self.exhaust()
      if exhausted then
        error ("Already exhausted", 2)
      end

      exhausted = true
    end

    function self.ready()
      exhausted = false
    end

    -- return the instance
    return self
  end