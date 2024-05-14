-- Some of my preferences

-- autocommands
vim.api.nvim_create_autocmd("VimLeave", {
    pattern = '*',
    callback = function()
        vim.cmd("set guicursor= | call chansend(v:stderr, \"\x1b[ q\")")
    end
})

-- if os is linux use clang as the treesitter so that it compiles dll's instead of so's
if (not (vim.fn.has('macunix'))) then
    require("nvim-treesitter.install").compilers= {"clang", "gcc"}
end

vim.opt.scrolloff = 8
