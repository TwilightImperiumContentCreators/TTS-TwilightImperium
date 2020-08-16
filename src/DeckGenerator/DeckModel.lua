---@class DeckModel

---@class static_DeckModel
---@overload fun(name: string, description: string, cards: CardModel[], deckAsset: DeckAsset): DeckModel
local DeckModel = {}

setmetatable(DeckModel,{
    ---@param name string
    ---@param description string
    ---@param cards CardModel[]
    ---@param deckAsset DeckAsset
    __call = function(_,name, description, cards, deckAsset)
        ---@type DeckModel
        local self= {}

        self.Name = name
        self.Description = description
        self.Cards = cards
        self.DeckAsset = deckAsset

        setmetatable(self, {
            __tostring = function(_)
                return self.__tostring()
            end
        })

        return self
    end
});

return DeckModel
