-- Mason
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"clangd",
		"pyright",
		"tsserver",
		"rust_analyzer",
		"gopls",
		"bashls",
		"emmet_language_server",
		"html",
		"htmx",
	},
})
-- lsp setup
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({
	filetypes = { "lua" },
	capabilities = capabilities,
})
lspconfig.clangd.setup({
	filetypes = { "c", "cpp", "objc", "objcpp" },
	capabilities = capabilities,
})
lspconfig.pyright.setup({
	filetypes = { "python" },
	capabilities = capabilities,
})
lspconfig.tsserver.setup({
	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
	capabilities = capabilities,
})
lspconfig.rust_analyzer.setup({
	filetypes = { "rust" },
	capabilities = capabilities,
})
lspconfig.gopls.setup({
	filetypes = { "go" },
	capabilities = capabilities,
})
lspconfig.bashls.setup({
	filetypes = { "sh" },
	capabilities = capabilities,
})
lspconfig.html.setup({
	filetypes = { "html" },
	capabilities = capabilities,
})
lspconfig.emmet_language_server.setup({
	filetypes = {
		"css",
		"eruby",
		"html",
		"javascript",
		"javascriptreact",
		"less",
		"sass",
		"scss",
		"pug",
		"typescriptreact",
	},
	capabilities = capabilities,
})
lspconfig.htmx.setup({
	filetypes = { "html" },
	capabilities = capabilities,
})
-- lspconfig.beutysh.setup({ capabilities = capabilities })
-- keybinds
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover information" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
