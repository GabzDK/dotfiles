return {

	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
		[[                                                                                       ]],
		[[                                                                                       ]],
		[[                                                                                       ]],
		[[                                                                                       ]],
        [[                                                                                       ]],
        [[        _____    ____    ____         ____      ____  ____      ______  _______        ]],      
        [[    ___|\    \  |    |  |    |       |    |    |    ||    |    |      \/       \       ]],   
        [[   |    |\    \ |    |  |    |       |    |    |    ||    |   /          /\     \      ]],  
        [[   |    | |    ||    | /    //       |    |    |    ||    |  /     /\   / /\     |     ]],     
        [[   |    | |    ||    |/ _ _//        |    |    |    ||    | /     /\ \_/ / /    /|     ]],      
        [[   |    | |    ||    |\    \'        |    |    |    ||    ||     |  \|_|/ /    / |     ]],      
        [[   |    | |    ||    | \    \        |\    \  /    /||    ||     |       |    |  |     ]],      
        [[   |____|/____/||____|  \____\       | \ ___\/___ / ||____||\____\       |____|  /     ]],      
        [[   |    /    | ||    |   |    |       \ |   ||   | / |    || |    |      |    | /      ]],          
        [[   |____|____|/ |____|   |____|        \|___||___|/  |____| \|____|      |____|/       ]],          
        [[     \(    )/     \(       )/            \(    )/      \(      \(          )/          ]],          
        [[      '    '       '       '              '    '        '       '          '           ]],  
		[[                                                                                       ]],
		[[                                                                                       ]],
		[[                                                                                       ]],
		[[                                                                                       ]],
		[[                                                                                       ]],
                                                                               

		}

		dashboard.section.buttons.val = {
			dashboard.button("SPC o", "Options"),
			dashboard.button("SPC p","Telescope"),
			dashboard.button("SPC s", "Session"),
			dashboard.button("SPC b", "Buffers"),
			dashboard.button("SPC e", "Filetree"),
			dashboard.button("SPC l", "LSP"),
			dashboard.button("SPC p", "Window"),
		}
		_Gopts = {
			position = "center",
			hl = "Type",
			-- wrap = "overflow";
		}

		local function footer()
			return "Like a city whose walls are broken through is a person who lacks self-control."
		end

		dashboard.section.footer.val = footer()

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)
	end,
}
