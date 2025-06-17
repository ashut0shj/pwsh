if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_history $fish_config_dir/history
    set -g fish_autosuggest_enabled 1
    set -g fish_color_command yellow
    set -g fish_color_variable green
    set -g fish_color_error red
    set -g fish_color_operator yellow


    eval "$(oh-my-posh init fish --config ~/.poshthemes/jandedobbeleer.omp.json)"
    
end
set -Ux PYENV_ROOT $HOME/.pyenv
set -Ux fish_user_paths $PYENV_ROOT/bin $fish_user_paths
status is-interactive; and pyenv init - | source
status is-interactive; and pyenv virtualenv-init - | source

#aliases
alias penv="source venv/bin/activate.fish"

function gg
    set msg $argv[1]
    set branch (git rev-parse --abbrev-ref HEAD)

    if test (count $argv) -ge 2
        set branch $argv[2]
    end

    git add .
    git commit -m "$msg"
    git push origin $branch
end
