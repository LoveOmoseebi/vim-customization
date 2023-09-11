set laststatus=2                                                                
set t_Co=256                                                                    
colo molokai                                                                    
set bg=dark                                                                     
set nohlsearch                                                                  
set clipboard=unnamedplus                                                       
set autoindent                                                                  
set fileformat=unix                                                             
set completeopt=menuone,longest                                                 
nnoremap c "_c                                                                  
set nocompatible                                                                
syntax on                                                                       
set encoding=utf-8                                                              
                                                                                
set number relativenumber                                                       
                                                                                
set wildmode=longest,list,full                                                  
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o  
                                                                                
set splitbelow splitright                                                       
                                                                                
" Shortcutting split navigation, saving a keypress:                             
        map <C-h> <C-w>h                                                        
        map <C-j> <C-w>j                                                        
        map <C-k> <C-w>k                                                        
        map <C-l> <C-w>l                                                        
" Emmet Shortcuts                                                               
let g:user_emmet_mode='n'   "Only enable normal mode functions.                 
let g:user_emmet_leader_key=','
                                                                                
" Replace all is aliased to S.                                                  
        nnoremap S :%s//g<Left><Left>                                           
                                                                                
" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
        vnoremap <C-c> "+y                                                      
        map <C-p> "+P                                                           
"Newtab with ctrl+t                                                             
        nnoremap <silent> <C-t> :tabnew<CR>                                     
"Paste from system clipboard with ctrl+i instead of shift insert                
        map <S-Insert> <C-i>                                                    
                                                                                
"Automatically deletes all trailing whitespace on save.                         
       autocmd BufWritePre * %s/\s\+$//e                                        
                                                                                
"Navigating with guides                                                         
        inoremap <leader><leader> <Esc>/<++><Enter>"_c4l                        
        vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l                        
        map <leader><leader> <Esc>/<++><Enter>"_c4l                             
inoremap jj <ESC>                                                               
                                                                                
set colorcolumn=80                                                              
                                                                                
highlight OverLength ctermbg=red ctermfg=white guibg=#592929                    
match OverLength /\%81v.\+/
