let g:haskell_indent_disable=1

" Install fast-tags and create init-tags script in PATH
" See https://github.com/elaforge/fast-tags
" cabal v2-install fast-tags
augroup tags
  au BufWritePost *.hs            silent !init-tags %
  au BufWritePost *.hsc           silent !init-tags %
augroup END
