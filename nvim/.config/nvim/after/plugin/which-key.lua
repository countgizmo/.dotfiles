local wk = require("which-key")
--[[local mappings = {
  e = {
    name = "Conjure Eval",
    e = { "<cmd>ConjureEvalCurrentForm<cr>", "Eval Current Form"},
    f = { "<cmd>ConjureEvalFile<cr>", "Eval File"},
    r = { "<cmd>ConjureEvalRootForm<cr>", "Eval Root Form"},
  },
}
local opts = { prefix = '<leader>' }

wk.register(mappings, opts)
--]]
wk.setup()
