# My aliases

alias ls='sl'
alias ls='ls -GFh'
alias ll='ls -GFhal'
alias ren=mv
alias del=rm
alias copy=cp
alias cls=clear
alias h=history
alias hist=history
alias type=less
alias tpye=less
alias mroe=less
alias more=less
alias move=mv
alias cx='chmod +x'
alias ro='chmod -w'
alias rw='chmod u+w'
alias lo=logout
alias chomd=chmod

alias delete=rm
alias dle=rm
alias cl='rm -f *.BAK *.CKP .*.BAK .*.CKP *% .*% *~ .*~ .emacs_11* \!*'

alias reload='source ~/.bash_profile'
alias bash_pref='open ~/.bash_profile -a "Sublime Text 2"'
alias ..='cd ..'

alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Add personal bin to PATH variable
export PATH=$PATH:/Users/matthew/bin:.

export CLICOLOR=1
export LSCOLORS=gxbxhxDxfxhxhxCxhxcxcx

function __checkCommand
{
	if [ $? = 0 ];
	then
		echo "Command Completed";
	else
		echo "Command NOT Completed";
	fi
}

# Change prompt
PS1_OLD=${PS1}

export PROMPT_DIRTRIM=4
export PS1='\[\033[0;0m\]\u\[\033[0m\]: \[\033[7m\]\w>\[\033[0m\] '

##
# Your previous /Users/matthew/.bash_profile file was backed up as /Users/matthew/.bash_profile.macports-saved_2017-11-09_at_17:45:49
##

# MacPorts Installer addition on 2017-11-09_at_17:45:49: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/matthew/google-cloud-sdk/path.bash.inc' ]; then . '/Users/matthew/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/matthew/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/matthew/google-cloud-sdk/completion.bash.inc'; fi

# Rust
export PATH="$HOME/.cargo/bin:$PATH"
