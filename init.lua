if vim.loader then
    vim.loader.enable()
end

require("config.lazy")
require("treesitter-context").toggle()
