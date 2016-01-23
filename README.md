# My Vimrc

It's pretty complicated. Organization should be pretty self explanatory.

Depends on Vundle, make sure to clone it into `~/.vim/bundle/Vundle.vim` before
you open Vim otherwise it will whine a lot.

Primarily designed for GUI use (GVim, MacVim). Some features are disabled under
terminal mode to reduce performance issues when using through ssh.

# Mapping Cheatsheet

This table is non-exhaustive, see plugins for more info

## Normal mode
Mapping       | Description
------------- | ---------------------------------------------------------------
              | **mine**
,y            | Yank to clipboard (motion in nmode, selection in vmode)
,d            | Delete to clipboard (linewise)
,x            | Delete to clipboard (non-linewise)
,p            | Post-Paste from OS clipboard (replace-paste in vmode)
,P            | Pre-paste from OS clipboard
,rd           | `:redraw!`
,rc           | Reload vim configuration (manual, no autocmd is here)
,gs           | Show git status in temp buffer (fugitive)
,gd           | Git diff the current buffer's file and line (`:q` to return)
,gb           | Git blame the current buffer and line (`:q` to return)
,ga           | Add the current file to staging (`git add`)
,gc           | Open temp buffer to commit (`:wq` to finalize)
,\<Space\>    | Enable Ctrl-P search (can also use `C-p`)
,s(hjkl)      | Split window in direction (deciding vert/hori by motion)
<C-w>(hjkl)   | Move to window in direction
              | **nerdcommenter**
,c\<Space\>   | Toggle comment line
,cc           | Comment line/selection
,cu           | Uncomment line/selection
,ca           | Switches comment delimiter (`//` and `/**/` for example)
              | **vim-surround**
cs'"          | Replace ' surroundings with "
cs"'          | Replace " surroundings with ' (so on, so forth...)
cs({          | Replace () surroundings with {} (with spaces)
cs(}          | Replace () surroundings with {} (without spaces)
ysiw]         | Add [] around identifier/word (without spaces)
ds"           | Remove " surroundings
lots          | There are lots of bindings in surround, check out the manual

