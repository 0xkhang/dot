require("config.lazy")
require("vim-options")
require("vim-keymaps")

vim.api.nvim_create_user_command("G", "Neogit", {})
