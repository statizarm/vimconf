set nocompatible " Это отключает обратную совместимость с vi
set termguicolors

filetype on
filetype detect
filetype indent off

let ftype = &filetype

" set t_Co=256 " Цвета получше
" Ширина разделительной линии
set colorcolumn=80

if has('nvim')
	set relativenumber " Включает относительную нумерацию строк
endif

set number " Включает относительную нумерацию строк
" tabstop - ширина табуляции, softtabstop - ширина мягкой табуляции
" shiftwidth - количество пробелов на которое изменяется ширина табуляции
"              при использовании символов изменения отступов
" expandtab - разрешить разворачивание табуляции в пробелы
if ftype ==# 'c' || ftype ==# 'cpp'
	set tabstop=4 softtabstop=2 expandtab shiftwidth=4
elseif ftype ==# 'vim'
	set tabstop=2 noexpandtab shiftwidth=2
elseif ftype ==# 'haskell'
	set tabstop=4 expandtab shiftwidth=4
else
	set tabstop=4 noexpandtab shiftwidth=4
endif

set numberwidth=5 " ширина столбца нумерации строк
" Цвет вертикальной разделительной линии
"highlight ColorColumn ctermbg=grey

" Автоотступ при новой строке
" set autoindent

" Подгружать vimrc после каждой записи
" autocmd bufwritepost $MYVIMRC source $MYVIMRC

" Формат строки состояния
" fileformat - формат файла (unix, dos); fileencoding - кодировка файла;
" позиция курсора (строка, символ в строке); процент прочитанного в файле;
" кол-во строк в файле;
" set statusline=%F%m%r%h%w\ %{&fileencoding}\ [%03v][%p%%]\ [%L]
"Изменяет шрифт строки статуса (делает его не жирным)
"hi StatusLine gui=reverse cterm=reverse
set laststatus=2 " всегда показывать строку состояния

set scrolloff=10 " количество строки внизу и вверху экрана при скроллинге

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
	
if has('nvim')

	" let g:haskell_classic_highlighting=1

	call plug#begin(stdpath('data') . '/plugged')

  Plug 'neovim/nvim-lspconfig'

  Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
  Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
	Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

	Plug 'morhetz/gruvbox'

	Plug 'kyazdani42/nvim-web-devicons' " for file icons
	Plug 'kyazdani42/nvim-tree.lua'

	" lualine
	Plug 'nvim-lualine/lualine.nvim'

	" semantic code highlight
	Plug 'jackguo380/vim-lsp-cxx-highlight'

	"theme
	Plug 'EdenEast/nightfox.nvim'

	call plug#end()

	source ~/.config/nvim/etc/haskell.vim
	source ~/.config/nvim/etc/nvim-keybindings.vim
	" source ~/.config/nvim/etc/airline.vim
	" source ~/.config/nvim/etc/gruvbox.vim
  " source ~/.config/nvim/etc/cxx-highlight.vim

	luafile ~/.config/nvim/etc/devicons.lua
	luafile ~/.config/nvim/etc/nvim-tree.lua
	luafile ~/.config/nvim/etc/coq.lua
	luafile ~/.config/nvim/etc/lsp.lua
	luafile ~/.config/nvim/etc/lualine.lua

	colorscheme nightfox
else
	call plug#begin('~/.vim/plugged')

	Plug 'morhetz/gruvbox'

	call plug#end()

	source ~/.vim/etc/gruvbox.vim

	colorscheme gruvbox
endif


filetype indent off

syntax on

