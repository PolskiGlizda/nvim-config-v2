return {
	{
		"mbbill/undotree",

		config = function()
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
		end,
	},
	{
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup()
		end,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"NvChad/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"altermo/ultimate-autopair.nvim",
		config = function()
			require("ultimate-autopair").setup()
		end,
	},
}
