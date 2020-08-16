---@class CardModel

---@class static_CardModel
---@overload fun(name: string, description: string): CardModel
local CardModel = {}

setmetatable(CardModel,{
    ---@param name string
    ---@param description string
    __call = function(_,name, description)
        ---@type CardModel
        local self= {}

        self.Name = name
        self.Description = description

        setmetatable(self, {
            __tostring = function(_)
                return self.__tostring()
            end
        })

        return self
    end
});

return CardModel