" DO NOT SOURCE THIS OUTSIDE OF INTELLIJ-IDEA (~/.ideavimrc)
" THIS IS NON-STANDARD VIM

" vim-surround emulation
" note: this is only in dev atm, not released
set surround

set number
set relativenumber
set incsearch
set ignorecase
set smartcase

" Quicker OS clipboard copy/paste
nnoremap <Leader>y "*y
vnoremap <Leader>y "*y
nnoremap <Leader>d "*d
vnoremap <Leader>d "*d
nnoremap <Leader>p "*p
vnoremap <Leader>p "*p
nnoremap <Leader>P "*P
vnoremap <Leader>P "*P
nnoremap <Leader>x "*x
vnoremap <Leader>x "*x

" Mimic pseudo-motion splits
" Not quite the same, it doesn't make a new buffer.
nnoremap ,sh <C-W>v<C-W>h
nnoremap ,sl <C-W>v
nnoremap ,sj <C-W>s
nnoremap ,sk <C-W>s<C-W>k

" Simulate commenting commands
nnoremap ,c<Space> :action CommentByLineComment<CR>
vnoremap ,c<Space> :action CommentByLineComment<CR>

" Reload ideavimrc
nnoremap ,rc :source ~/.ideavimrc<CR>

" Approximations of buffer switching
nnoremap ,bp :action PreviousTab<CR>
nnoremap ,bn :action NextTab<CR>
nnoremap ,bd :action CloseContent<CR>

" IDEA special bindings
nnoremap ,ii :action ImplementMethods<CR>
nnoremap ,io :action OverrideMethods<CR>
nnoremap ,ib :action CompileDirty<CR>
nnoremap ,id :action Debug<CR>
nnoremap ,ir :action Run<CR>
nnoremap ,ip :action ChooseRunConfiguration<CR>

" IDEA Git bindings
nnoremap ,ga :action Git.Add<CR>
nnoremap ,gc :action ChangesView.Commit<CR>
nnoremap ,gb :action Git.Branches<CR>
nnoremap ,gd :action Compare.SameVersion<CR>
