# PROMPT="[%*] %n:%c $(git_prompt_info)%(!.#.$) "
PROMPT='[%{$fg[yellow]%*%{$reset_color%} | %{$fg[red]%}%n%{$reset_color%}:%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info)] %(!.#) '
#RPROMPT='%{$fg[yellow]%*%{$reset_color%}'

#ZLE_RPROMPT_INDENT=8

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
