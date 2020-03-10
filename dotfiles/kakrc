# theme
colorscheme palenight

# add line numbers
hook global KakBegin .* %{addhl global/ number-lines -relative}

# Tmux integration
# ================

declare-user-mode tmux
map global tmux '\' ':tmux-terminal-horizontal kak -c %val{session}<ret>' \
    -docstring 'horizontal split'
map global tmux '<minus>' ':tmux-terminal-vertical kak -c %val{session}<ret>' \
    -docstring 'vertical split'
map global tmux c ':tmux-terminal-window kak -c %val{session}<ret>' \
    -docstring 'new window'
map global tmux y ':nop %sh{tmux set-buffer "${kak_selection}"}<ret>' \
    -docstring 'yank primary selection to tmux buffer'
map global tmux p 'o<esc>!tmux show-buffer<ret>d' \
    -docstring 'paste tmux buffer contents'
map global tmux r ':tmux-repl<ret>' -docstring 'prefix for tmux repl commands'
def -hidden tmux %{ enter-user-mode tmux }

declare-user-mode tmux-repl
map global tmux-repl '\' ':tmux-repl-horizontal<ret>' \
    -docstring 'horizontal split'
map global tmux-repl '<minus>' ':tmux-repl-vertical<ret>' \
    -docstring 'vertical split'
map global tmux-repl c ':tmux-repl-window<ret>' \
    -docstring 'new window'
map global tmux-repl s ':send-text<ret>' \
    -docstring 'send selection to tmux repl'
map global tmux-repl l 'hxH:send-text<ret>;exec ";"<ret>' \
   -docstring 'send current line to tmux repl'
def -hidden tmux-repl %{ enter-user-mode tmux-repl }
map global user t :tmux<ret> -docstring 'prefix for tmux subcommands'
