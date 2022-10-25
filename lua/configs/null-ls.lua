local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then return end
null_ls.setup {
  on_attach = astronvim.lsp.on_attach,
  should_attach = function(bufnr) return not vim.api.nvim_buf_get_name(bufnr):match ".*\\.[hpp|cpp|c|h]" end,
}
