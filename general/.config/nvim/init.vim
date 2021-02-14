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
  au VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')
""" Neovim Appearance
" wal plugin
Plug 'dylanaraps/wal.vim'
" Vim-Airline
Plug 'vim-airline/vim-airline'
" Relative numbers (auto-toggle)
Plug 'jeffkreeftmeijer/vim-numbertoggle'
""" General Utilities
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
" Undo Tree
Plug 'simnalamburt/vim-mundo'
" Goyo - Distraction free writing
Plug 'junegunn/goyo.vim'
" Limelight - higlight only current line
Plug 'junegunn/limelight.vim'
" Easily align
Plug 'junegunn/vim-easy-align'
""" Markdown editing
" Vim_Pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-criticmarkup'
Plug 'vim-pandoc/vim-markdownfootnotes'
" Vimwiki
Plug 'vimwiki/vimwiki'
" Vim Markdown-Folding
Plug 'masukomi/vim-markdown-folding'
""" Misc syntaxes
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

" Configure Mundo
set undofile
set undodir=~/.vim/undo
nnoremap <F5> :MundoToggle<CR>

" Configure vimwiki
let g:vimwiki_list = [{'path': '~/sync/permanent/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0
let g:vimwiki_folding = 'expr'

" Configure airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Configure Markdown folding
set nocompatible
if has("autocmd")
  filetype plugin indent on
endif

" Configure Goyo with Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
nnoremap <silent> <F8> :Goyo<cr>
inoremap <silent> <F8> <C-O>:Goyo<cr>

" Configure default spell checker
set nospell spelllang=de_20
function! LanguageToggle() abort
  if &l:spelllang == "de_20"
    " Switch to English
    setlocal spelllang=en_gb
    echom "Switching to English"
    setlocal spellfile=$HOME/.config/nvim/spell/en.utf-8.add,$HOME/.config/nvim/spell/common.utf-8.add
  elseif &l:spelllang == "en_gb"
    " Switch to Portuguese
    setlocal spelllang=pt_pt
    echom "Switching to Portuguese"
    setlocal spellfile=$HOME/.config/nvim/spell/pt.utf-8.add,$HOME/.config/nvim/spell/common.utf-8.add
  else
    " Switch to German
    setlocal spelllang=de_20
    setlocal spellfile=$HOME/.config/nvim/spell/de.utf-8.add,$HOME/.config/nvim/spell/common.utf-8.add
    echom "Switching to German"
  endif
endfunction
" Toggle whether spell-checking is used or not 
nnoremap <silent> <F6> :set invspell<cr>
inoremap <silent> <F6> <C-O>:set invspell<cr>
" Toggle the language
command! LanguageToggle call LanguageToggle()
nnoremap <F7> :LanguageToggle<cr>
inoremap <F7> <C-O>:LanguageToggle<cr>
" Add word to both spellfiles
nnoremap <leader>zg zg2zg

" Configure EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Navigate display lines with arrow keys
nnoremap <buffer> <silent> <Down> gj
nnoremap <buffer> <silent> <Up> gk
inoremap <buffer> <silent> <Down> <C-o>gj
inoremap <buffer> <silent> <Up> <C-o>gk

" Set relative numbers
set number relativenumber
