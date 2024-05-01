-- Some of my preferences

-- autocommands
vim.api.nvim_create_autocmd("VimLeave", {
    pattern = '*',
    callback = function()
        vim.cmd("set guicursor= | call chansend(v:stderr, \"\x1b[ q\")")
    end
})

