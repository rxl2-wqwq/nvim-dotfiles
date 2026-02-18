require("hlchunk").setup({ -- plugins/hlchunk
	chunk = {
		enable = false,
		chars = {
			horizontal_line = "─",
			vertical_line = "│",
			left_top = "╭",
			left_bottom = "╰",
			right_arrow = ">",
		},
		style = "#00ffff",
		delay = 0,
		line_num = {
			enable = true,
			style = "#806d9c",
		},
	},
})
