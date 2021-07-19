noremap <C-6> <C-^>

let $FZF_DEFAULT_COMMAND='rg --files --hidden'

func! myspacevim#before() abort
  "let g:indentLine_setConceal = 0
  let g:spacevim_enable_vimfiler_welcome = 0
  let g:spacevim_enable_vimfiler_filetypeicon = 1
  let g:spacevim_windows_leader = ''
endf

func! myspacevim#after() abort
lua << EOF
  require'lspconfig'.sorbet.setup{}
EOF
endf

function! PrepForRuby()
  setlocal foldmethod=syntax
endfunction

augroup filetype_ruby
  autocmd!
  autocmd Filetype ruby,eruby call PrepForRuby()
augroup END

function! Note(...)
  let path = strftime("%Y%m%d%H%M")." ".trim(join(a:000)).".md"
  execute ":e " . fnameescape(path)
endfunction
command! -nargs=* Note call Note(<f-args>)

" Show wrap indicator (bottom right) when search wraps
set shortmess-=s

" Start with all folds open
" autocmd Filetype ruby,eruby normal zR
set nofoldenable

" Disable cindent, enabled by default in SpaceVim
set nocindent
