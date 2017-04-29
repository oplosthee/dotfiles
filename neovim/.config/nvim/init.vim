" Load plugins using vim-plug
source ~/.config/nvim/plugins.vim

""""""""""""""""""""""""""""""""""""""
" => General Configuration
""""""""""""""""""""""""""""""""""""""

set nocp		" Not compatible with vi
set number		" Show line numbers
set ttyfast		" Faster redrawing
colorscheme molokai	" Set the colorscheme

""""""""""""""""""""""""""""""""""""""
" => General Mappings
""""""""""""""""""""""""""""""""""""""

" Toggle the highlighted search
noremap <space> :set hlsearch! hlsearch?<cr>

" Easily access .vimrc for modifications
map <leader>ev :e! ~/.config/nvim/init.vim<cr>

" Disable arrow keys to get used to hjkl movement
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

""""""""""""""""""""""""""""""""""""""
" => Plugin Configuration
""""""""""""""""""""""""""""""""""""""

" Run Neomake on every save
autocmd! BufWritePost * Neomake

" vim-hdevtools keybindings:
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>

" haskell-vim configuration:
let g:haskell_enable_quantification = 1
let g:haskell_enable_recursivedo = 1
let g:haskell_enable_arrowsyntax = 1
let g:haskell_enable_pattern_synonyms = 1
let g:haskell_enable_typeroles = 1
let g:haskell_enable_static_pointers = 1

" vim-hindent configuration (defaults):
let g:hindent_on_save = 1
let g:hindent_indent_size = 2
let g:hindent_line_length = 100

" NERDTree configuration:
let g:NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
nmap <silent> <leader>k :NERDTreeToggle<cr>
nmap <silent> <leader>y :NERDTreeFind<cr>

" FZF configuration:
if isdirectory(".git")
	" if in a git project, use :GFiles
	nmap <silent> <leader>t :GFiles<cr>
else
	" otherwise, use :FZF
	nmap <silent> <leader>t :FZF<cr>
endif

nmap <silent> <leader>r :Buffers<cr>
nmap <silent> <leader>e :FZF<cr>
