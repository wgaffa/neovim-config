" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Haskell
    Plug 'neovimhaskell/haskell-vim'

    " Airline status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Git gutter
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

    Plug 'ryanoasis/vim-devicons'

    "Plug 'dense-analysis/ale'

    Plug 'rakr/vim-one'
    Plug 'sainnhe/sonokai'
    Plug 'morhetz/gruvbox'
call plug#end()