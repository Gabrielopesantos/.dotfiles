local function init()
    require('gitsigns').setup {
        signs = {
            add          = { hl = 'GitSignsAdd', text = '+', numhl = 'GitSignsAddNr', linehl = 'GitSignsAddLn' },
            change       = { hl = 'GitSignsChange', text = '~', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
            delete       = { hl = 'GitSignsDelete', text = '_', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
            topdelete    = { hl = 'GitSignsDelete', text = '‾', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
            changedelete = { hl = 'GitSignsChange', text = '~', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
        },
        current_line_blame_opts = {
            virt_text_pos = 'eol',
            delay = 100,
        },
        current_line_blame_formatter = '   · <author>, <author_time:%R> | <summary> (<abbrev_sha>)',
        keymaps = {
            noremap = true,
            ['n <leader>gp'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'" },
            ['n <leader>gn'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'" },
            ['n <leader>gs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
            ['v <leader>gs'] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
            ['n <leader>gu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
            ['n <leader>gx'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
            ['v <leader>gx'] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
            ['n <leader>gX'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
            ['n <leader>gh'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',

            -- Text objects
            --['o ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
            --['x ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>'
        }
    }
end

return {
    init = init
}
