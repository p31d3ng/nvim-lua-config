local util = require 'lspconfig/util'

return {
  root_dir = function(fname)
    return util.root_pattern("setup.py", "setup.cfg")(fname) or
        util.path.dirname(fname)
  end,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
      },
    },
  },
}
