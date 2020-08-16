local CardModel = require('src/DeckGenerator/CardModel')
local DeckAsset = require('src/DeckGenerator/DeckAsset')
local DeckModel = require('src/DeckGenerator/DeckModel')

---@class DeckGenerator

---@class static_DeckGenerator
---@overload fun(): DeckGenerator
local DeckGenerator = {}

setmetatable(DeckGenerator,{
    __call = function(_)
        ---@type DeckGenerator
        local self= {}

        setmetatable(self, {
            __tostring = function(_)
                return self.__tostring()
            end
        })

        ---@param deckModel DeckModel
        ---@return tts__DeckCustom
        function self.Spawn(deckModel)
            local deckData = self.GenerateDeckSpawnData(deckModel)
            --log ('DECKDATA:')
            --log (deckData)
            local object =  spawnObjectData({data=deckData})
            return object
        end

        ---@param deckModel DeckModel
        self.GenerateDeckSpawnData = function (deckModel)
            ---@type tts__DeckCustomState
            local deckData = {
                Name='DeckCustom',
                ContainedObjects = {},
                DeckIDs={},
                CustomDeck =
                {
                    [2]=deckModel.DeckAsset
                },
                Transform = {
                    posX = 0, posY = 5, posZ = 0,
                    rotX = 0, rotY = 0, rotZ = 0,
                    scaleX = 1, scaleY = 1, scaleZ = 1
                },
                GUID='cabbab',
                Locked = false,
                Tooltip = true,
                Description = deckModel.Description,
                Nickname = deckModel.Name,
                ColorDiffuse = { r = 1, g = 1, b = 1 },
                Grid = true,
                Snap = true,
                Autoraise = true,
                Sticky = true,
                GridProjection = false,
                Hands = false,
                GMNotes = '',
                HideWhenFaceDown = false,
                SidewaysCard = false
            }

            for i,v in ipairs(deckModel.Cards) do
                ---@type tts__CardState
                local card = {
                    Name = 'Card',
                    CardID = 199+i,
                    Transform = {
                        posX = 0, posY = 5, posZ = 0,
                        rotX = 0, rotY = 0, rotZ = 0,
                        scaleX = 1, scaleY = 1, scaleZ = 1
                    },
                    GUID = 'd3fe7f',
                    Locked = false,
                    Tooltip = true,
                    Description = v.Description,
                    Nickname = v.Name,
                    ColorDiffuse = { r = 1, g = 1, b = 1 },
                    Grid = true,
                    Snap = true,
                    Autoraise = true,
                    Sticky = true,
                    GridProjection = false,
                    Hands = false
                }

                table.insert(deckData.ContainedObjects, card)
                table.insert(deckData.DeckIDs, 199+i)
            end

            return deckData
        end

        return self
    end
});

return DeckGenerator