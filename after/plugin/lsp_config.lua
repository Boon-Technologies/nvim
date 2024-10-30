require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = { 'tsserver', 'html', 'volar', 'tailwindcss', 'eslint', 'jsonls', 'lua_ls', 'cssls', 'jdtls' },
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

-- Java language server configuration
lspconfig.jdtls.setup {
    cmd = { "jdtls" },
    root_dir = lspconfig.util.root_pattern(".git", "mvnw", "gradlew", "pom.xml", "build.gradle"),
    settings = {
        java = {
            format = {
                enabled = true,
                settings = {
                    profile = "GoogleStyle" -- Example format profile; change as needed
                }
            },
            contentProvider = { preferred = "fernflower" }, -- Decompiler to use
            completion = {
                favoriteStaticMembers = {
                    "org.hamcrest.MatcherAssert.assertThat",
                    "org.hamcrest.Matchers.*",
                    "org.hamcrest.CoreMatchers.*",
                    "org.junit.jupiter.api.Assertions.*",
                    "java.util.Objects.requireNonNull",
                    "java.util.Objects.requireNonNullElse"
                }
            },
            sources = {
                organizeImports = {
                    starThreshold = 5,
                    staticStarThreshold = 3
                }
            },
            codeGeneration = {
                toString = {
                    template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}"
                }
            }
        }
    },
    init_options = {
        bundles = {}
    }
}
