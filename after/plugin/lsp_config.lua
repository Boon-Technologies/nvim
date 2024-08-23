require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = { 'tsserver', 'html', 'volar', 'tailwindcss', 'eslint', 'jsonls', 'lua_ls', 'cssls' },
})

local lspconfig = require('lspconfig')

lspconfig.tsserver.setup({
    filetypes = {
        "javascript",
        "typescript",
        "vue",
    },
    settings = {
        typescript = {
            format = {
                enable = true,
            },
        },
    },
    on_attach = function(client)
        -- ... other on_attach settings
        vim.keymap.set('n', '<leader>f', function()
            vim.lsp.buf.format()
        end, { desc = 'Format buffer' })
    end,
})

lspconfig.html.setup({
    init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
            css = true,
            javascript = true
        },
        provideFormatter = true
    }
})

lspconfig.volar.setup({})

lspconfig.tailwindcss.setup({})

lspconfig.eslint.setup({})

lspconfig.jsonls.setup({})

lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }
})

lspconfig.cssls.setup({})
