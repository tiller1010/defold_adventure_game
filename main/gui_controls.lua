local HIGHTLIGHT_SCALE = vmath.vector3(1.05, 1.05, 1)
local HIGHTLIGHT_COLOR = vmath.vector4(0, .2, 1, 1)
local NORMAL_SCALE = vmath.vector3(1, 1, 1)
local NORMAL_COLOR = vmath.vector4(1, 0, 0, 1)


function update_highlight(self, gui)
	for i, node in ipairs(self.buttons) do
		if i == self.selected_index then
			gui.set_scale(node, HIGHTLIGHT_SCALE)
			gui.set_color(node, HIGHTLIGHT_COLOR)
		else
			gui.set_scale(node, NORMAL_SCALE)
			gui.set_color(node, NORMAL_COLOR)
		end
	end
end

return {
	navigate = function(self, delta, gui)
		local buttons_count = #self.buttons
		self.selected_index = self.selected_index + delta
		if self.selected_index < 1 then self.selected_index = buttons_count end
		if self.selected_index > buttons_count then self.selected_index = 1 end
		update_highlight(self, gui)
	end
}
