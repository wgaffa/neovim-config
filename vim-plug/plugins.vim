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
    Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'

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

    Plug 'rakr/vim-one'

    Plug 'honza/vim-snippets'
    Plug 'SirVer/ultisnips'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'kassio/neoterm'

    " Experimental
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'tpope/vim-surround'
call plug#end()
