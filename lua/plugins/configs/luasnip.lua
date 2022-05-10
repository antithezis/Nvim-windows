local ls = require ("luasnip")
if not ls then execute 'PackerSync' end

require("luasnip.loaders.from_lua").load({ paths = "~/AppData/Local/nvim/lua/snippets/"})

ls.config.set_config {
  history = true,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = true,
  ext_opts = {
    [require("luasnip.util.types").choiceNode] = {
      active = {
        virt_text = { {" ", "Error"} }
      }
    }
  }
}
  luasnip.snippets = {
    all = {
      ls.parser.parse_snippet("expand", "-- this test expand")
    },

    lua = {
      ls.parser.parse_snippet("clg", "console.log('$1')")
    }
  }
  require("luasnip.loaders.from_vscode").lazy_load()




vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/AppData/Local/nvim/lua/plugins/configs/luasnip.lua <CR>")

vim.keymap.set({"i", "s"}, "<c-k>", function()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end 
end, {silent = true})

vim.keymap.set({"i", "s"}, "<c-j>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end 
end, {silent = true})

vim.keymap.set({"i"}, "<c-l>", function()
	if ls.choice_active() then
		ls.change_choice(-1)
	end 
end)
