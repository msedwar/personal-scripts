# Found on the ZshWiki
#  http://zshwiki.org/home/config/prompt
#

local user_name="%n:"
local path_name="%{$reset_color%}%S%24<...<%~%<<>%s"

function create_git_prompt()
{
    local branch=$(git_current_branch)
    local dirty=$(parse_git_dirty)

    if [[ ! -z $branch ]]
    then
        if [[ -z $dirty ]]
        then
            echo "%{$reset_color%}[%{$fg_bold[green]%}$branch%{$reset_color%}]"
        else
            echo "%{$reset_color%}[$branch%{$fg[red]%}*%{$reset_color%}]"
        fi
    fi
}

function create_prompt()
{
    local prompt=$(create_git_prompt)

    if [[ -z $prompt ]]
    then
        prompt="%{$reset_color%}$user_name"
    fi

    echo "$prompt $path_name%{$reset_color%} "
}

PROMPT='$(create_prompt)'
