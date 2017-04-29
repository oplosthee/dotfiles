call plug#begin('~/.config/nvim/plugged')

" Colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'

" Utilities
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' " File drawer
Plug 'neomake/neomake' " Neovim replacement for syntastic using neovim's job control functionality
Plug 'vim-airline/vim-airline' " Fancy statusline
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' } | Plug 'junegunn/fzf.vim' " Fuzzy file finder
Plug 'Raimondi/delimitMate' " Automatic closing of quotes, parenthesis, brackets, etc.
Plug 'tpope/vim-fugitive' " Git wrapper for vim
Plug 'tpope/vim-commentary' " Comment stuff out easily
Plug 'tpope/vim-unimpaired' " Mappings for normal mode aliases for commonly used ex commands
Plug 'benmills/vimux' " Interact with tmux from vim
Plug 'ervandew/supertab' " Perform vim insert mode completions with tab

" Haskell Plugins
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'alx741/vim-hindent', { 'for': 'haskell' }
Plug 'bitc/vim-hdevtools', { 'for': 'haskell' }

call plug#end()
