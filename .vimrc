"leader=";"       "set Leader key
set nocompatible        "关闭兼容模式
filetype on             "开启文件类型侦测
filetype plugin on      "根据侦测的不同文件类型加载相应插件
if version >= 700
	set cursorline      "光标行下划线
end
set incsearch           "开启实时搜索
set hlsearch            "搜索高亮
set ignorecase          "搜索忽略大小写
set wildmenu            "开启vim命令行补全

"显示相关配置
set nu                  "显示行号
set laststatus=2        "总是显示底部状态栏
set ruler               "在状态栏显示当前行号和位置
syntax enable           "开启语法高亮功能
syntax on               "允许制定语法高亮配色方案代替默认方案

"缩进相关
filetype indent on      "依据不同语言采用不同的缩进方案
set expandtab           "将制表符扩展成空格
set tabstop=4           "设置编辑时制表符占用的空格数
set shiftwidth=4        "格式化时制表符占用的空格数
set softtabstop=4       "vim把连续数量的空格视为一个制表符
"set foldmethod=indent  "基于缩进折叠
set foldmethod=syntax   "基于语法折叠
set nofoldenable        "vim启动时关闭折叠代码(不自动折叠)
                        "za(toggle), zM(close all), zR(open all)
set foldcolumn=1
set nowrap              "超长行展开"
set encoding=utf-8
set fileencoding=utf-8

"配色方案
set background=dark
"colorscheme miko
"colorscheme black_angus
colorscheme Dark2

"插件管理

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

"File Explorer
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1  "删除文件时自动删除文件对应 buffer
"Tag Viewer
let tagbar_right=1              "设置tagbar子窗口位置
let g:tagbar_compact=1          "不显示帮助信息，帮助使用?
let tagbar_width=30

"快捷键
nmap <F2> :tabnew<CR>
nmap <F3> :close<CR>
nmap <F6> :TagbarToggle<CR>
"MiniBufferExplorer
nmap <F5> :MBEToggle<CR>        
nmap <F7> :NERDTreeToggle<CR>
"build
nmap <F10> :wa<CR>:make<CR><CR>:cw<CR>
