" DO NOT SOURCE THIS OUTSIDE OF INTELLIJ-IDEA (~/.ideavimrc)
" THIS IS NON-STANDARD VIM

" vim-surround emulation
" note: this is only in dev atm, not released
set surround

" some of these aren't in 0.44...
set number
set relativenumber
set incsearch
set ignorecase
set smartcase

" Quicker OS clipboard copy/paste
"nnoremap <Leader>y "*y
"vnoremap <Leader>y "*y
"nnoremap <Leader>d "*d
"vnoremap <Leader>d "*d
"nnoremap <Leader>p "*p
"vnoremap <Leader>p "*p
"nnoremap <Leader>P "*P
"vnoremap <Leader>P "*P
"nnoremap <Leader>x "*x
"vnoremap <Leader>x "*x

" Mimic pseudo-motion splits
" Not quite the same, it doesn't make a new buffer.
nnoremap ,sh <C-W>v<C-W>h
nnoremap ,sl <C-W>v
nnoremap ,sj <C-W>s
nnoremap ,sk <C-W>s<C-W>k

" Simulate commenting commands
nnoremap gcc :action CommentByLineComment<CR>
nnoremap gcgc :action CommentByLineComment<CR>
"vnoremap gc :action CommentByLineComment<CR>

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
nnoremap ,icr :action RunToCursor<CR>
nnoremap ,ip :action ChooseRunConfiguration<CR>
nnoremap ,it :action SurroundWith<CR>
nnoremap ,igd :action GotoDeclaration<CR>

" Scala bindings
nnoremap ,t :action Scala.TypeInfo<CR>
nnoremap ,sds :action Scala.CreateScalaDocStub<CR>
nnoremap ,sco :action Scala.GenerateCompanionObject<CR>
nnoremap ,oi :action OptimizeImports<CR>
nnoremap ,qi :action QuickImplementations<CR>
nnoremap ,qd :action QuickJavaDoc<CR>
