local function nvim_on_attach(buffer)
    local api = require'nvim-tree.api'

    local function opts(desc)
        return {desc = "nvim-tree: " .. desc, buffer = buffer, noremap = true, silent = true, nowait = true} 
    end

    api.config.mappings.default_on_attach(buffer)

    vim.keymap.set({'n', 'i'}, '<c-t><c-g>', api.tree.close, opts('[Toggle]'))
end
require"nvim-tree".setup{ 
    on_attach = nvim_on_attach,
}

-- for lsp
local cmp = require'cmp'

cmp.setup{
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end
    },
    mapping = cmp.mapping.preset.insert({
        ['<c-b>'] = cmp.mapping.scroll_docs(-4),
        ['<c-f>'] = cmp.mapping.scroll_docs(4),
        ['<c-space>'] = cmp.mapping.complete(),
        ['c-e'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({select = true})
    }),
    sources =cmp.config.sources({
        {name = 'nvim_lsp'},
        {name = 'vsnip'}
    },{
            {name = 'buffer'}
        })
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require'lspconfig'.rust_analyzer.setup{
    capabilities = capabilities,
    settings = {
        ['rust-analyzer'] = {
            diagnostics = { enable = false}
        }
    }
}

require'lspconfig'.pyright.setup{}
