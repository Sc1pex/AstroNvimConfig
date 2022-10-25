local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then return end
treesitter.setup(astronvim.user_plugin_opts("plugins.treesitter", {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  rainbow = {
    colors = {
      "#FFE004",
      "#D26ED5",
      "#1799EE",
    },
    enable = true,
    disable = { "html" },
    extended_mode = false,
    max_file_lines = nil,
  },
  autopairs = { enable = true },
  autotag = { enable = true },
  incremental_selection = { enable = true },
  indent = { enable = false },
}))
