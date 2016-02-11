# My Vimrc

It's pretty complicated. Organization should be pretty self explanatory.

Depends on Vundle, make sure to clone it into `~/.vim/bundle/Vundle.vim`
before you open Vim otherwise it will whine a lot.

Primarily designed for GUI use (GVim, MacVim). Some features are disabled
under terminal mode to reduce performance issues when using through ssh.

# Installation

Make sure you have Python2 available, and Python2 support in your Vim.

Clone this repository (or your own) as your `~/.vim`, then:

    mkdir -p ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
    echo "source ~/.vim/vimrc" >> ~/.vimrc

`~/.vimrc` will act as your deployment-local configuration. You need to source
the repo `vimrc` here to enable the global config. Configure your font and
whatnot here as well.

Open up graphical Vim (gvim, mvim) and run

    :PluginInstall

Close vim, and run:

    cd ~/.vim/bundle/YouCompleteMe
    ./install.py [options] <-- See the YouCompleteMe manual for instructions

For eclim support, run the eclim install process and point its vimfiles to
`~/.vim/eclim` (**not `~/.vim`**). Then, add `let g:idola_conf_eclim = 1`
before the `source` of `~/.vim/vimrc` in your local configuration. As with
typical eclim procedure, you need to run the `eclimd` before you can use it;
that instance should be shared between all Vim sessions.

This is largely incompatible with NeoVim at the moment, I don't really intend
to move to it until its GUI support matures.

# Mapping Cheatsheet

This table is non-exhaustive, see plugins for more info

## Normal mode
Mapping       | Description
------------- | --------------------------------------------------------------
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
\<C-w\>(hjkl) | Move to window in direction
,bn           | Next buffer
,bp           | Previous buffer
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

