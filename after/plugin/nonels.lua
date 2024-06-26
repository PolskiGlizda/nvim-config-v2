local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.pyink,
        -- null_ls.builtins.formatting.pylint,
        -- null_ls.builtins.diagnostics.eslint_d,
        -- null_ls.builtins.formatting.beautysh,
    },
})
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format code"})
