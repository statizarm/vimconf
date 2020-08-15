set nocompatible " Это отключает обратную совместимость с vi

set t_Co=256 " Цвета получше
" Ширина разделительной линии
set colorcolumn=80

set number relativenumber " Включает относительную нумерацию строк
" tabstop - ширина табуляции, softtabstop - ширина мягкой табуляции
" shiftwidth - количество пробелов на которое изменяется ширина табуляции
"              при использовании символов изменения отступов
" noexpandtab - запрещать разворачивание табуляции в пробелы
set tabstop=4 softtabstop=2 shiftwidth=4 noexpandtab
set numberwidth=5 " ширина столбца нумерации строк
" Цвет вертикальной разделительной линии
"highlight ColorColumn ctermbg=grey


" Подгружать vimrc после каждой записи
autocmd bufwritepost $MYVIMRC source $MYVIMRC

" Формат строки состояния
" fileformat - формат файла (unix, dos); fileencoding - кодировка файла;
" позиция курсора (строка, символ в строке); процент прочитанного в файле;
" кол-во строк в файле;
" set statusline=%F%m%r%h%w\ %{&fileencoding}\ [%03v][%p%%]\ [%L]
"Изменяет шрифт строки статуса (делает его не жирным)
"hi StatusLine gui=reverse cterm=reverse
set laststatus=2 " всегда показывать строку состояния

set scrolloff=10 " количество строки внизу и вверху экрана при скроллинге

set termguicolors

let g:gruvbox_bold=1
let g:gruvbox_italic=1

set background=light

let g:airline_theme='gruvbox'

let g:gruvbox_contrast_light='medium'
let g:gruvbox_contrast_dark='soft'

" gruvbox кастомное цветовое оформление
let g:gruvbox_number_column='bg1'
let g:gruvbox_color_column='bg1'
let g:gruvbox_vert_split='bg4'

colorscheme gruvbox

