local PlaceId = game.PlaceId
local plrs = game.Players
local maxplayers = plrs.MaxPlayers
local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)

local plr = game:GetService("Players")
local http = game:GetService("HttpService")
plr.PlayerAdded:Connect(function(a)
	local a = {
		["embeds"] = {
			{
				["title"] = "**Click Here**",
				["url"] = "https://www.roblox.com/games/"..PlaceId,
				["description"] = "Game Name: " .. "`"..GetName.Name.."`",
				["type"] = "rich",
				["color"]= tonumber(0xff0000),
				["footer"] = {
					["icon_url"] = 'https://cdn.discordapp.com/attachments/679011489054589029/679263384600051712/RBV.png',
					["text"] = ""
				},
				["thumbnail"] = {
					["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432&format=png",
				},
				["author"] = {
					["name"] = "name"

				},

				["fields"] = {
					{

						["name"] = '**Players in game**',
						["value"] = "`"..#plrs:GetPlayers().."`",
						["inline"] = true



					},
					{
						["name"] = '**Max Server Size**',
						["value"] = "`"..game.Players.MaxPlayers.."`",
						["inline"] = true,


					},
					{
						["name"] = '**Place ID**',
						["value"] = "`"..game.PlaceId.."`",
						["inline"] = true

					},
				}
			}}
	}

	a = http:JSONEncode(a)
	http:PostAsync("url", a)
end)
