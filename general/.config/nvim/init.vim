""" General configuration
" show line numbers
set number
" Tab == 2 spaces
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

""" Keymap
nnoremap <C-Space> <C-W>

""" Plugin Section
" install vim-vplug if it's not there already
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')
" wal plugin
Plug 'dylanaraps/wal.vim'
" fzf plugin
Plug '~/.zplug/repos/junegunn/fzf'
" Completion Engine
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --java-completer' }
" Surroundings 
Plug 'tpope/vim-surround'
" Comments
Plug 'tpope/vim-commentary'
" Syntax Checker
Plug 'scrooloose/syntastic'
" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'
" Plantuml syntax
Plug 'aklt/plantuml-syntax'
call plug#end()
" use wal-colorscheme 
colorscheme wal
" Configure Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
