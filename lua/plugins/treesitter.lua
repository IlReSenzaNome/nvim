return {
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "VeryLazy",
    main = "nvim-treesitter.configs",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "cpp",
	      "rust",
	      "svelte",
	      "cpp",
	      "python",
	      "yaml"
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    },
},
}
