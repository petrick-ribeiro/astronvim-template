return {
  "AstroNvim/astrolsp",
  opts = {
    config = {
      angularls = {
        cmd = (function()
          local install_path = vim.fn.stdpath "data" .. "/mason/packages/angular-language-server/node_modules"
          return {
            "ngserver",
            "--stdio",
            "--tsProbeLocations",
            install_path,
            "--ngProbeLocations",
            install_path .. "/@angular/language-server/node_modules",
          }
        end)(),
        on_new_config = function(new_config, _)
          new_config.cmd = vim.tbl_deep_extend("force", new_config.cmd or {}, {
            "ngserver",
            "--stdio",
            "--tsProbeLocations",
            vim.fn.stdpath "data" .. "/mason/packages/angular-language-server/node_modules",
            "--ngProbeLocations",
            vim.fn.stdpath "data"
              .. "/mason/packages/angular-language-server/node_modules/@angular/language-server/node_modules",
          })
        end,
      },
    },
  },
}
