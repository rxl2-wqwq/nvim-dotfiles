return {
	"nvzone/floaterm",
	dependencies = "nvzone/volt",
	cmd = "FloatermToggle",
	opts = {
		border = false,
		size = { h = 60, w = 70 },
		cwd = "current_file", -- follow current_file
		-- to use, make this func(buf)
		-- mappings = { sidebar = nil, term = nil },

		-- Default sets of terminals you'd like to open
		mappings = {
			sidebar = nil,
			term = function(buf)
				vim.keymap.set({ "n", "t" }, "<C-p>", function()
					require("floaterm.api").cycle_term_bufs("prev")
				end, { buffer = buf })
			end,
		},
		terminals = {
			{ name = "Terminal" },
			-- cmd can be function too
			-- { name = "Terminal", cmd = "neofetch" },
			-- More terminals
		},
	},
}
