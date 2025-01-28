return {
    {
        "saghen/blink.cmp",
        event = { "LspAttach" },
        version = "*",
        dependencies = { "rafamadriz/friendly-snippets", "L3MON4D3/LuaSnip", "giuxtaposition/blink-cmp-copilot" },
        build = "cargo build --release",
        opts = {
            keymap = { preset = "default" },
            appearance = {
                use_nvim_cmp_as_default = true,
                nerd_font_variant = "mono",
            },
            signature = { enabled = true },
        },
        sources = {
            default = { "lsp" },
            providers = {
                lsp = {
                    name = "LSP",
                    module = "blink.cmp.sources.lsp",
                },
            },
        },
    },
}
