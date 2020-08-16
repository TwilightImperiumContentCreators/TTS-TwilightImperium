---@class DeckAsset

---@class static_DeckAsset
---@overload fun(faceUrl: string, backUrl: string, numWidth: number, numHeight: number, backIsHidden: boolean, uniqueBack: boolean): DeckAsset
local DeckAsset = {}

setmetatable(DeckAsset,{
    ---@param faceUrl string
    ---@param backUrl string
    ---@param numWidth number
    ---@param numHeight number
    ---@param backIsHidden boolean
    ---@param uniqueBack boolean
    __call = function(_,faceUrl, backUrl, numWidth, numHeight, backIsHidden, uniqueBack)
        ---@type DeckAsset
        local self= {}

        self.FaceURL = faceUrl
        self.BackURL = backUrl
        self.NumWidth = numWidth
        self.NumHeight = numHeight
        self.BackIsHidden = backIsHidden
        self.UniqueBack = uniqueBack
        self.Type = 0

        setmetatable(self, {
            __tostring = function(_)
                return self.__tostring()
            end
        })

        return self
    end
});

return DeckAsset
