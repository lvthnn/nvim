local ls = require('luasnip')

-- shorthands
local snip = ls.snippet
local node = ls.node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local date = function() return { os.date('%Y-%m-%d') } end

ls.add_snippets(nil, {
  all = {
    snip({
      trig = "rmd",
      namr = "Metadata",
      dscr = "Basic RMarkdown header."
    }, {
      text({ "---",
        "title: " }), insert(1, "note_title"), text({ "",
      "author: " }), insert(2, "author"), text({ "",
      "date: " }), insert(3, "date"), text({ "",
      "type: " }), insert(4, "output_type"), text({ "",
      "---" }),
      insert(0)
    }),
  },
})

ls.add_snippets("tex", {
  snip({
    trig = "hmwk",
    namr = "LaTeX Homework Template",
    dscr = "Basic setup for KH homework template",
  }, {
    text({
      "\\documentclass{homework}",
      "", "\\newcommand{\\hmwkLang}{",
    }), insert(1, "1"),
    text({
      "} % [1] Icelandic [2] English",
      "", "\\configureLang",
      "", "% Header data",
      "", "\\newcommand{\\hmwkTitle}{"
    }), insert(2, "Homework Title"),
    text({
      "}",
      "\\newcommand{\\hmwkClsNo}{",
    }), insert(3, "CLS123M"),
    text({
      "}",
      "", "\\newcommand{\\hmwkCls}{",
    }), insert(4, "Homework Class"),
    text({
      "}",
      "\\newcommand{\\hmwkAuthor}{",
    }), insert(5, "Homework Author"),
    text({
      "}",
      "\\newcommand{\\hmwkAuthEmail}{",
    }), insert(6, "auth123@gmail.com"),
    text({
      "}",
      "", "\\begin{document}",
      "", "\\input{titlepage.tex}",
      "", "",
    }), insert(0),
    text({
      "", "", "\\end{document}",
    }),
  }),
  snip({
    trig = "frac",
    namr = "Fraction macro",
    dscr = "Implements \\frac{a}{b} macro",
  }, {
    text("\\frac{"), insert(1), text("}{"), insert(2), text("}"),
  }),
  snip({
    trig = "alph",
    namr = "Enumerate macro",
    dscr = "Implement enumerate environment macro",
  }, {
    text({
      "\\begin{enumerate}[label=\\alph*]", "  \\item ",
    }),
    insert(0),
    text({
      "", "\\end{enumerate}"
    })
  })
})

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
keymap("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
