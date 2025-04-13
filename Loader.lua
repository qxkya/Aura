local Repository = "https://raw.githubusercontent.com/qxkya/Aura/refs/heads/main/Games/"
local Game = Repository .. game.PlaceId .. ".lua"

local LoadedScript = loadstring(game:HttpGet(Game))

if LoadedScript then
    local Success, Response = pcall(LoadedScript)
    
    if not Success then
        game:GetService("Players").LocalPlayer:Kick("Aura failed to load. Error: " .. tostring(Response))
    end
else
    game:GetService("Players").LocalPlayer:Kick("Aura does not have support for this game.")
end
