if status is-interactive
end

function setup_user_path
    fish_add_path ~/.local/bin
    fish_add_path ~/.cargo/bin
    fish_add_path ~/.bun/bin
end

function setup_aliases
    if command -q tmux
        alias tm="tmux"
        alias tma="tmux attach"
    end

    if command -q bat
        alias cat="bat --paging=never --style=plain --color=auto"
    end

    if command -q exa
        alias ll="exa --git --git-repos --icons --long --header --smart-group"
        alias ls="exa --git --git-repos --icons --smart-group"
    end
end

function fish_greeting
    setup_user_path
    setup_aliases
    if command -q starship
        starship init fish | source
    end
    if command -q fastfetch
        fastfetch
    end
end


