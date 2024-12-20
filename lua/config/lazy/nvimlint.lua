return {
    "mfussenegger/nvim-lint",
    config = function()
        local lint = require("lint")
        lint.linters_by_ft = {
            tsx = { "eslint" },
            jsx = { "eslint" },
            typescript = { "eslint" },
            javascript = { "eslint" },
        }
        vim.keymap.set("n", "<leader>gl", lint.try_lint, { desc = "Lint code" })
    end,
}
