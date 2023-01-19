" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd        " Show (partial) command in status line.
"set showmatch      " Show matching brackets.
"set ignorecase     " Do case insensitive matching
set smartcase       " Do smart case matching
"set incsearch      " Incremental search
set autowrite       " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set mouse=a     " Enable mouse usage (all modes)
set mousemodel=extend

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
    source /etc/vim/vimrc.local
endif

"set noswapfile
"map <up> <nop>
"imap <up> <nop>
noremap! { {}O
noremap! java<tab> public class Hello{public static void main(string args[]){}}
noremap! cpp<tab> #include <iostream>using namespace std;int main(){return 0;}kO
noremap! ma<tab> #include <stdio.h>int main(){}O
noremap! in<tab> #include <>hi
noremap! pr<tab> printf("",);hhhi
noremap! sc<tab> scanf("", &);5hi
noremap! cl<tab> class {public:protected:private:};h%i
noremap! fo<tab> for ( ; ; ){}%h%la
noremap! wh<tab> while (  ){}%h%la
noremap! if<tab> if ( ){} else {}kka
noremap! sw<tab> switch (  ){case 1:break;case 2:break;case 3:break;default:}%hhix
map -- iimport java.io.*;import java.awt.*;import java.util.*;import javax.swing.*;import java.awt.event.*;
set ts=4
set sw=4
set nohls
set ai
set cindent
set nonumber
syntax on
filetype on
au BufNewFile,BufRead *.c set filetype=cpp
set tabpagemax=30
map [17~ :tabfind
map [12~ :mksession! .vimsess^M
map [13~ :source .vimsess^M
map!  A
noremap <ScrollWheelUp>     4<C-Y>
noremap <ScrollWheelDown>   4<C-E>
noremap <S-ScrollWheelUp>   <C-B>
noremap <S-ScrollWheelDown> <C-F>
noremap <silent><C-S> :wa<CR>
noremap <silent><C-Q> :qa<CR>
inoremap <silent><C-S> <C-O>:wa<CR>
inoremap <silent><C-Q> <C-O>:qa<CR>
set pastetoggle=<F2>    "윈도 클립보드로 붙일 때
inoremap <Nul> <C-n>
"set cursorline
"hi cursor ctermfg=white ctermbg=gray
"hi cursorline ctermbg=gray
map! "" ""
map ㅑ i
map ㅐ o
map ㅒ O
map ㅊㅈ cw
map ㄴ s
:command W w
:command Wq wq
set number


"여기서 부터는 개인 설정
set visualbell



set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Syntastic'
Plugin 'The-NERD-Tree'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'SirVer/ultisnips'


call vundle#end()




autocmd BufEnter * lcd %:p:h
autocmd VimEnter * if !argc() | NERDTree | endif
nmap <F9> :NERDTreeToggle<cr>
let NERDTreeShowLineNumbers=1
let g:NERDTreeWinPos = "right"






set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = "-std=c++17"
" let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"
" let g:syntastic_c_compiler_options = "-std=c11 -Wall -Wextra -Wpedantic"


"papercolor
set t_Co=256   " This is may or may not needed.

set background=dark
colorscheme PaperColor



"snippet
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
