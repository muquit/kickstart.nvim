-- my personal settings
-- muquit@muquit.com Mar-24-2024

vim.g.mapleader = ' '
vim.keymap.set('i', 'jk', '<ESC>')
vim.api.nvim_set_keymap('n', ';', ':', {})
vim.opt.mouse = ''
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.shiftwidth = 4
vim.opt.wrapmargin = 2
vim.opt.textwidth = 78

-- map = to <C-F>
vim.api.nvim_set_keymap('n', '=', '<C-F>', {})
vim.api.nvim_set_keymap('v', '=', '<C-F>', {})

-- map - to <C-B>
vim.api.nvim_set_keymap('n', '-', '<C-B>', {})
vim.api.nvim_set_keymap('v', '-', '<C-B>', {})

-- Shift+K break lines at 77 column. possible conflickt with lsp
vim.api.nvim_set_keymap('n', 'K', '77|bi<CR><ESC>', {})

-- my abbreviations
vim.cmd [[
     iabbrev <expr> ,d strftime('%b-%d-%Y')
     iabbrev <expr> ,t strftime('%Y-%m-%dT%TZ')
     iabbrev <expr> xdate strftime('%b-%d-%Y')
     iabbrev <expr> ydate strftime('%a %b %d %T %Z %Y')
     abb @M muquit@muquit.com
     abb @@ #====================================================================<ESC>
     ab @P (void) fprintf(stderr,"
     ab @Q #include
]]
