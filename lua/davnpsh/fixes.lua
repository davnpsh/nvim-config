-- [[ Some fixes due to Neovim ]]

-- detect ejs filetypes
vim.cmd[[
  augroup EjsFileType
    autocmd!
    autocmd BufNewFile,BufRead *.ejs setfiletype ejs
  augroup END
]]
