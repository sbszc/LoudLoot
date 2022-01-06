local frame = CreateFrame("FRAME", "FooAddonFrame")
frame:RegisterEvent("CHAT_MSG_LOOT")

local function eventHandler(self, event, ...)
    local lootMsg = select(1, ...)
    local item = "Viewing Room Key"
    if string.find(lootMsg, item) then
        SendChatMessage(lootMsg, "YELL", nil, nil)
        SendChatMessage(lootMsg, "PARTY", nil, nil)
    end
end
frame:SetScript("OnEvent", eventHandler)