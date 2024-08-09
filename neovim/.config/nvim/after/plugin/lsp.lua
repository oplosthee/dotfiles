local lsp_zero = require('lsp-zero');

local cmp = require('cmp');
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp_zero.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true}),
    ['<C-Space>'] = cmp.mapping.complete(),
})

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'gopls'},
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})

lsp_zero.set_preferences({
    sign_icons = { }
});

