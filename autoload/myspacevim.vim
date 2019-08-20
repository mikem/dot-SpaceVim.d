noremap <C-6> <C-^>

func! myspacevim#before() abort
  let g:indentLine_setConceal = 0
  let g:spacevim_enable_vimfiler_filetypeicon = 1
endf

autocmd Filetype ruby,eruby setlocal foldmethod=syntax

" Show "search hit BOTTOM, continuing at TOP" when search wraps
set shortmess-=s

" Start with all folds open
" autocmd Filetype ruby,eruby normal zR
set nofoldenable
