return {
	get_player_url = function(go)
		if go.exists('/player_with_minecart/player') then
			return '/player_with_minecart/player'
		else
			return '/player'
		end
	end,

	get_minecart_url = function(go)
		if go.exists('/player_with_minecart/minecart') then
			return '/player_with_minecart/minecart'
		else
			return '/minecart'
		end
	end,
}