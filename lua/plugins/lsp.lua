return {
  { "williamboman/mason.nvim", build = ":MasonUpdate", config = function()
    require("mason").setup()
  end },
  { "williamboman/mason-lspconfig.nvim", dependencies = { "williamboman/mason.nvim" }, config = function()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "ts_ls", "pyright", "rust_analyzer" },
      automatic_installation = true,
    })
  end },
  { "neovim/nvim-lspconfig", dependencies = { "williamboman/mason-lspconfig.nvim" }, config = function()
    local on_attach = function(ev)
      local opts = { noremap = true, silent = true, buffer = ev.buf }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
    end
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client then return end
        if client.name == "lua_ls" then
          client.config.settings = {
            Lua = {
              runtime = { version = "LuaJIT" },
              diagnostics = { globals = { "vim" } },
              workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            },
          }
        end
        on_attach(args)
      end,
    })
    local servers = { "lua_ls", "ts_ls", "pyright", "rust_analyzer" }
    for _, server in ipairs(servers) do
      vim.lsp.enable(server)
    end
  end },
}
