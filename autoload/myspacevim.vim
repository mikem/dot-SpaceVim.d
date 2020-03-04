noremap <C-6> <C-^>

let $FZF_DEFAULT_COMMAND='rg --files --hidden'

func! myspacevim#before() abort
  "let g:indentLine_setConceal = 0
  let g:spacevim_enable_vimfiler_welcome = 0
  let g:spacevim_enable_vimfiler_filetypeicon = 1
  let g:spacevim_windows_leader = ''
endf

function! PrepForRuby()
  setlocal foldmethod=syntax
endfunction

augroup filetype_ruby
  autocmd!
  autocmd Filetype ruby,eruby call PrepForRuby()
augroup END

" Show wrap indicator (bottom right) when search wraps
set shortmess-=s

" Start with all folds open
" autocmd Filetype ruby,eruby normal zR
set nofoldenable
