"=============================================================================
" lsp_sorbet.vim --- LSP Sorbet Layer file for SpaceVim
"=============================================================================

" See https://spacevim.org/development/#contributing-a-layer

function! SpaceVim#layers#lsp_sorbet#config() abort
  let g:_spacevim_mappings_space.k = get(g:_spacevim_mappings_space, 'k',  {'name' : '+Sorbet'})

  " See https://github.com/neovim/nvim-lspconfig#keybindings-and-completion
  call SpaceVim#mapping#space#langSPC('nnoremap', ['k', 'd'],
        \ 'lua vim.lsp.buf.definition()', 'definition', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['k', 'D'],
        \ 'lua vim.lsp.buf.declaration()', 'declaration', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['k', 't'],
        \ 'lua vim.lsp.buf.type_definition()', 'type definition', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['k', 'i'],
        \ 'lua vim.lsp.buf.implementation()', 'implementation', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['k', 'u'],
        \ 'lua vim.lsp.buf.references()', 'references', 1)

  call SpaceVim#mapping#space#langSPC('nnoremap', ['k', 'h'],
        \ 'lua vim.lsp.buf.hover()', 'hover', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['k', 'k'],
        \ 'lua vim.lsp.diagnostic.show_line_diagnostics()', 'signature help', 1)

  call SpaceVim#mapping#space#langSPC('nnoremap', ['k', 'f'],
        \ 'lua vim.lsp.buf.code_action()', 'fix', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['k', 'r'],
        \ 'lua vim.lsp.buf.rename()', 'rename', 1)

  call SpaceVim#mapping#space#langSPC('nnoremap', ['k', 'n'],
        \ 'lua vim.lsp.diagnostic.goto_next()', 'goto next', 1)
  call SpaceVim#mapping#space#langSPC('nnoremap', ['k', 'p'],
        \ 'lua vim.lsp.diagnostic.goto_prev()', 'goto prev', 1)
endfunction
