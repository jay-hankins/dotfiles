"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

call plug#begin('~/.local/share/nvim/plugged')
Plug 'ayu-theme/ayu-vim'
call plug#end()

let ayucolor="mirage"
colorscheme ayu

set nocompatible                            " disable vi compatibility

syntax enable                               " enable syntax processing
set tabstop=4		                        " number of visual spaces per TAB
set softtabstop=4                           " number of spaces in tab when editing
set number                                  " show line numbers
set cursorline                              " highlight current line
set wildmenu                                " visual autocomplete for command menu
set showmatch                               " highlight matching [{()}]
set incsearch                               " search as characters are entered
set hlsearch                                " highlight matches

" mouse support
set mouse=a

" Be able to arrow key and backspace across newlines
set whichwrap=bs<>[]

" show '>   ' at the beginning of lines that are automatically wrapped
set showbreak=>\ \ \

" make laggy connections work faster
set ttyfast

nnoremap <leader><space> :nohlsearch<CR>    " turn off search highlight

" nnoremap j gj                               " move vertically by visual line
" nnoremap k gk

nnoremap gV `[v`]                           " highlight last inserted text by pressing gV

" Allow backspace to work on all characters (not just insert mode)
set backspace=indent,eol,start

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Use OS X clipboard
if $TMUX == ''
    set clipboard+=unnamed
endif
