set nocompatible    " Vim 디폴트 기능들을 사용함
set backspace=2     " 삽입 모드에서 백스페이스를 계속 허용
set autoindent      " 자동 들여쓰기
set cindent         " c언어 자동 들여쓰기
set smartindent     " 자동 들여쓰기
set textwidth=0     " turn off auto line break on column80
set nowrapscan      " 찾기에서 파일의 맨 끝에 이르면 계속하여 찾지 않음
set nobackup       " 백업파일을 만들지 않음
set novisualbell    " 비주얼벨 기능을 사용하지 않음
set nojoinspaces    " J 명령어로 줄을 붙일 때 마침표 뒤에 한칸만 띔
set ruler           " 상태 표시줄에 커서 위치를 표시
set tabstop=4       " 탭간격
set shiftwidth=4    " 자동 들여쓰기 간격
"set keywordprg=edic    " K를 눌렀을 때 실행할 명령어
set showcmd         " (부분적인) 명령어를 상태라인에 보여줌
set showmatch       " 매치도는 괄호의 반대쪽을 보여줌
set ignorecase      " 찾기에서 대/소문자를 구별하지 않음
set incsearch       " 점진적으로 찾기
set autowrite       " :next나 :make같은 명령을 입력하면 자동으로 저장
set title           " 타이틀바에 현재 편집중인 파일을 표시
set nu              " 라인번호
set enc=UTF-8       " 인코딩
set fileencodings=UTF-8 " 파일 인코딩 UTF-8
syntax on           " 문법 강조기능

" Spaces are better than a tab character
set expandtab
set smarttab

set ignorecase
set title

set smartcase
" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

if has ("mouse")
	set mouse=a
	endif

set history=1000
set noet
set magic
set scs

filetype on
filetype indent on
filetype plugin on 
syntax on " Default to no syntax highlightning 
set wrapscan
set hlsearch

"자동으로 괄호닫기
"au BufNewFile,BufRead * imap { {<CR>}<ESC>O
"au BufNewFile,BufRead * imap [ []<LEFT>
"au BufNewFile,BufRead *.c imap ( ( )<LEFT><LEFT>


syntax enable
set background=dark
colorscheme molokai

if has('gui_running')
	set background=light
else
	set background=dark
endif
highlight Normal ctermbg=black

"pathogen
execute pathogen#infect()

syntax enable
filetype plugin indent on

"nerd tree
" autocmd vimenter * NERDTree | wincmd p
" map <C-n> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
