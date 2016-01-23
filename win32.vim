" Win32 specific settings


" Ignore folders named 'target' under Rust
autocmd! FileType rust setlocal wildignore+=*\\target\\*
