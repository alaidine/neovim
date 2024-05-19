
return {
    {
        "ellisonleao/gruvbox.nvim",
        opts = function()
            local enable_transparency = true

            if vim.g.neovide then
                enable_transparency = false
            end

            return {
                transparent_mode = enable_transparency,
            }
        end,
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = true,
            style = "night",
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            }
        },
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 100,
        opts = function()
            local enable_transparency = true

            if vim.g.neovide then
                enable_transparency = false
            end
            return {
                flavour = "mocha",
                transparent_background = enable_transparency,
            }
        end,
    },

    {
        "bluz71/vim-nightfly-colors",
        name = "nightfly",
        lazy = false,
        priority = 1000
    },

	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
            local enable_transparency = true

            if vim.g.neovide then
                enable_transparency = false
            end
			return {
				transparent = enable_transparency,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                }
			}
		end,
	},

    {
        "tiagovla/tokyodark.nvim",
        opts = {
            transparent_background = true,
        },
        config = function(_, opts)
            require("tokyodark").setup(opts)
        end,
    },
}
