Citizen.CreateThread(function()
    while true do
        local user = GetPlayerPed(-1)
        
        Citizen.Wait(5*1000) 
        
        SetDiscordAppId(599716197541478421) -- input the applications client ID you created. This can be found in the tab "General Information"

        SetRichPresence( GetPlayerName(source) .. " is on " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(user))) )) --[[ this will show the players 
        current location in game(street name) there are more sources you can use to show more options 
        about the player--]]

        SetDiscordRichPresenceAsset("big") 
        SetDiscordRichPresenceAssetText(GetPlayerName(source)) 

        SetDiscordRichPresenceAssetSmall("small") 
        SetDiscordRichPresenceAssetSmallText("Health: "..(GetEntityHealth(player)-100)) -- when you hove over the "small" asset on the profile presence. it will show the players current health

    end
end)

