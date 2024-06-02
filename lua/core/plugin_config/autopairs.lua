-- Import nvim-autopairs safely
local autopairs_setup, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_setup then
  return
end

-- Configure autopairs
autopairs.setup({
  check_ts = true,                      -- Enable treesitter
  ts_config = {
    lua = { "string" },                 -- Don't add pairs in lua string treesitter nodes
    javascript = { "template_string" }, -- Don't add pairs in JavaScript template_string treesitter nodes
    java = false,                       -- Don't check treesitter on Java
  },
})

-- Import nvim-autopairs completion functionality safely
local cmp_autopairs_setup, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_setup then
  return
end

-- Import nvim-cmp plugin safely (completions plugin)
local cmp_setup, cmp = pcall(require, "cmp")
if not cmp_setup then
  return
end

-- Make autopairs and completion work together
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

local Rule = require('nvim-autopairs.rule')
local cond = require('nvim-autopairs.conds')

autopairs.add_rules({
    Rule("\\(", "\\)", { "tex", "latex" })
    -- don't add a pair if the next character is %
        :with_pair(cond.not_after_regex("%%"))
    -- don't add a pair if  the previous character is xxx
        :with_pair(cond.not_before_regex("xxx", 3))
    -- don't move right when repeat character
        :with_move(cond.none())
    -- don't delete if the next character is xx
        :with_del(cond.not_after_regex("xx"))
    -- disable adding a newline when you press <cr>
        :with_cr(cond.none())
  },
  -- disable for .vim files, but it work for another filetypes
  Rule("a", "a", "-vim")
)

autopairs.add_rules({
  Rule("\\[", "\\]", { "tex", "latex" })
      :with_pair(function(opts)
        print(vim.inspect(opts))
        if opts.line == "aa $$" then
          -- don't add pair on that line
          return false
        end
      end)
})
