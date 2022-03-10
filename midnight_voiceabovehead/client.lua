local TagRange = 25
function headvoice()
for i = 0, 255 do
	if NetworkIsPlayerActive(i) then
		local iPed = GetPlayerPed(i)
		local lPed = PlayerPedId()
		if DoesEntityExist(iPed) then
			distance = math.ceil(GetDistanceBetweenCoords(GetEntityCoords(lPed), GetEntityCoords(iPed)))
			if TagDistance == 0 then TagDistance = TagRange end
			headDisplayId = CreateFakeMpGamerTag(iPed, "", false, false, "", false )
			isTalking = false
			visable = false
			driver = false
			IdPlayer = ""
			if NetworkIsPlayerTalking(i) then
				isTalking = true
			end
			SetMpGamerTagVisibility(headDisplayId, 0, visable)
			SetMpGamerTagVisibility(headDisplayId, 9, isTalking)
		end
	end
end
end

CreateThread(function()
	while true do
		headvoice() --kijelzi a pöcsös XDDD Hamarosan frissítem, lessz benne billenytyűzet kijelző!
		Wait(150) -- Késleltetés! Jó optimalizált!
	end
end)