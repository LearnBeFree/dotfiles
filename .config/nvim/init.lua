-- My personal nvim configuration... finally in Lua!!! 
-- TODO: LSP!!!! That is so cool! What I need: no suggestions when I type, only errors and warnigs. Also, I want to be able to see what a function does, go to references, documentation... add stuff one by one, learn what each of it does
-- TODO I want pretty icons. For some reason they are present in my old config but not in this one. It seems I need to utilize the nerd font somehow. (the kickstarter/init.lua, search for "nerd" there)

require("config.options")
require("config.keybinds")
require("config.lazy")
require("config.autocmd")

-- TODO I want to do it properly, in colors.lua... or is it the correct way?
require("mellifluous").setup({ colorset = "kanagawa_dragon" })
vim.cmd.colorscheme("mellifluous")

