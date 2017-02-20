# My Vimrc

It's pretty complicated. Organization should be pretty self explanatory.

Depends on Vundle, make sure to clone it into `~/.vim/bundle/Vundle.vim`
before you open Vim otherwise it will whine a lot.

Primarily designed for GUI use (GVim, MacVim). Some features are disabled
under terminal mode to reduce performance issues when using through ssh.

# Installation

Make sure you have Python2 available, and Python2 support in your Vim.

Either run the included `setup.sh`,

    ./setup.sh

Clone this repository (or your own) as your `~/.vim`, then:

- Run the included `setup.sh`
- Source the top level vimrc locally:

    echo "source ~/.vim/vimrc" >> ~/.vimrc

`~/.vimrc` will act as your deployment-local configuration. You need to source
the repo `vimrc` here to enable the global config. Configure your font and
whatnot here as well (Why? Mainly for Windows tweaks, since several binaries
have to be installed manually for this to work).

Open up graphical Vim (gvim, mvim) and run

    :PluginInstall

For ycm completions, close vim, and run:

    cd ~/.vim/bundle/YouCompleteMe
    ./install.py [options] <-- See the YouCompleteMe manual for instructions

~For eclim support, run the eclim install process and point its vimfiles to
`~/.vim/eclim` (**not `~/.vim`**). Then, add `let g:idola_conf_eclim = 1`
before the `source` of `~/.vim/vimrc` in your local configuration. As with
typical eclim procedure, you need to run the `eclimd` before you can use it;
that instance should be shared between all Vim sessions.~ eclim support is
disabled due to performance issues.

This is largely incompatible with NeoVim at the moment, I don't really intend
to move to it until its GUI support matures.

### Setting up Unite Ctrl-P file searching

Install `ag` and the vimproc plugin's native binary. _(How do I do this on
Windows? Precompiled binary?)_

In local configuration, set the following:

    let g:unite_source_rec_async_command =
      \ ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']

If `ag` isn't in the `PATH` when vim starts, you should give an absolute path
to it instead. 

### Setting a font for GUI only

    if has('gui')
      set guifont=Monaco\ for\ Powerline:h12
      let g:airline_powerline_fonts=1
    endif

### Using sh when login shell is set to fish

    if &shell =~# 'fish$'
        set shell=sh
    endif

# Mapping Cheatsheet

This table is non-exhaustive, see plugins for more info

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
,s(hjkl)      | Split window in direction (deciding vert/hori by motion)
\<C-(hjkl)\>  | Move to window in direction
,bn           | Next buffer
,bp           | Previous buffer
              | **Unite.vim**
\<C-p\>       | Unite.vim file and buffer fuzzy search
Esc           | Unite.vim buffer quick jump (only in normal mode)
              | **vim-commentary**
gcc           | comment out line (`4gcc` for 4 lines)
gc            | comment out motion (`gcap` for paragraph)
              | _command Commentary (:7,17Commentary)_
              | _:global invoke (:g/TODO/Commentary)_
              | **vim-surround**
cs'"          | Replace ' surroundings with "
cs"'          | Replace " surroundings with ' (so on, so forth...)
cs({          | Replace () surroundings with {} (with spaces)
cs(}          | Replace () surroundings with {} (without spaces)
ysiw]         | Add [] around identifier/word (without spaces)
ds"           | Remove " surroundings
lots          | There are lots of bindings in surround, check out the manual
              | **Folding** (standard vim)
za            | Toggle fold
zc            | Close fold
zo            | Open fold
zA/C/O        | Do the above at all folds on current level.
              | **Vanilla Motions**
\<C-(ud)\>      | Half-screen Up or Down (up, down)
\<C-(fb)\>      | Full-screen Up or Down (forward, back)
H             | Home (equivalent to gg)
M             | Middle
L             | Last (equivalent to G without line number)
( )           | Next/previous sentence (`2)` is 2 sentences forward)
{ }           | Next/previous paragraph
%             | Next _related item_ (context-specific)
\`\`          | Back to _last position_ (last motion?)
f{char}       | Move to next occurrence of {char} in current line.
F{char}       | Move to previous occurrence of {char} in current line.
(tT){char}    | Move _before_ next/prev occurrence of {char}
;             | Repeat last ftFT motion
              | **Vanilla Semantic Selections**
vip           | Enter Visual, select current paragraph
gq            | Reformat selection (V), visual motion (N), to textwidth
gqip          | Reformat paragraph (N)
vipgq         | Reformat paragraph (V)
=             | Re-indent selection (V), visual motion (N)
