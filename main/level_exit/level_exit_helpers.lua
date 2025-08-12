return {
	get_level_exit_url = function(go, level_count)
		for i = 1, level_count do
			local level_exit_url = '/level_' .. i .. '_exit'
			if go.exists(level_exit_url) then
				return level_exit_url
			end
		end
	end,
}