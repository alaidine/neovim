require("alaidine.plugins")
require("alaidine.base")
require("alaidine.keymaps")
require("alaidine.lsp.mason")
require("alaidine.lsp.lspconfig")
require("alaidine.lsp.lspsaga")
require("alaidine.lsp.null-ls")

function Setcolors(color)
	return require("alaidine.colors." .. color)
end

Setcolors("gruvbox")
