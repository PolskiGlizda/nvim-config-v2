return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "saghen/blink.cmp",
        "rafamadriz/friendly-snippets",
        "L3MON4D3/LuaSnip",
        "j-hui/fidget.nvim",
        "zbirenbaum/copilot.lua",
    },
    opts = {
        servers = {
            lua_ls = {},
            clangd = {},
            pyright = {},
            ts_ls = {},
            rust_analyzer = {},
            gopls = {},
            bashls = {},
            emmet_language_server = {},
            html = {},
            htmx = {},
            cssls = {},
            hls = {},
            tailwindcss = {},
        }
    },
    config = function(_, opts)
        require("copilot").setup({
            suggestion = { enabled = false },
            panel = { enabled = false },
        })
        -- require("copilot_cmp").setup()
        require("fidget").setup({})
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "clangd",
                "pyright",
                "ts_ls",
                "rust_analyzer",
                "gopls",
                "bashls",
                "emmet_language_server",
                "html",
                "htmx",
                "cssls",
                "hls",
                "tailwindcss"
            },
        })
        local lspconfig = require("lspconfig")
        for servers, config in pairs(opts.servers) do
            config.capabilities = require("blink.cmp").get_lsp_capabilities()
            lspconfig[servers].setup(config)
        end
        vim.diagnostic.config({
            -- update_in_insert = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover information" })
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
    end,
}
