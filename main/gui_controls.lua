local HIGHTLIGHT_SCALE = vmath.vector3(1.05, 1.05, 1)
local HIGHTLIGHT_COLOR = vmath.vector4(0, .2, 1, 1)
local NORMAL_SCALE = vmath.vector3(1, 1, 1)
local NORMAL_COLOR = vmath.vector4(1, 0, 0, 1)


function update_highlight(self, gui)
	for i, node in ipairs(self.buttons) do
		local button_unlocked = true

		if self.levels_data then
			local level_data = self.levels_data['level_' .. i]
			if level_data then
				button_unlocked = level_data.unlocked
			end
		end
		
		if i == self.selected_index and button_unlocked then
			gui.set_scale(node, HIGHTLIGHT_SCALE)
			gui.set_color(node, HIGHTLIGHT_COLOR)
		else
			gui.set_scale(node, NORMAL_SCALE)
			gui.set_color(node, NORMAL_COLOR)
			
			if not button_unlocked then
				gui.set_alpha(node, .5)
			end
		end
		
	end
end

return {
	navigate = function(self, delta, gui)
		local new_selected_index = self.selected_index + delta
		local buttons_count = #self.buttons
		if new_selected_index < 1 then new_selected_index = buttons_count end
		if new_selected_index > buttons_count then new_selected_index = 1 end
		
		local button_unlocked = true

		if self.levels_data then
			local level_data = self.levels_data['level_' .. new_selected_index]
			if level_data then
				button_unlocked = level_data.unlocked
			end
		end

		if button_unlocked then
			self.selected_index = new_selected_index
			update_highlight(self, gui)
		end
	end
}
