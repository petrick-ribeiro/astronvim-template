-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  -- LSP
  { import = "astrocommunity.pack.angular" },
  -- { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },
  -- { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  --
  -- Colorschemes
  { import = "astrocommunity.colorscheme.nord-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.color.transparent-nvim" },
  --
  -- Utils
  { import = "astrocommunity.search.grug-far-nvim" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
  { import = "astrocommunity.git.octo-nvim" },
  { import = "astrocommunity.media.presence-nvim" },
  -- { import = "astrocommunity.startup.mini-starter" },
  -- { import = "astrocommunity.code-runner.sniprun" },
  -- { import = "astrocommunity.code-runner.compiler-nvim" },
  -- { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  --
  -- Recipes
  -- { import = "astrocommunity.recipes.auto-session-restore" },
}
