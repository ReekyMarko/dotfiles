# install zplugin if it's not already installed
if [ ! -f ~/.zplugin/bin/zplugin.zsh ]; then
	mkdir ~/.zplugin
	git clone https://github.com/zdharma/zplugin.git ~/.zplugin/bin
fi

source ~/.zplugin/bin/zplugin.zsh

# pure prompt
zplugin ice load multisrc'{async,pure}.zsh'
zplugin light sindresorhus/pure

# fzf as tab completion
zplugin ice lucid
zplugin light Aloxaf/fzf-tab

# substring search
zplugin ice lucid
zplugin light zsh-users/zsh-history-substring-search

# fzf git awesomeness
zplugin ice wait'1' lucid atload'source $HOME/.config/zsh/03-functions.zsh'
zplugin light wfxr/forgit

# lots of completions
zplugin ice wait'1' lucid as'completion'
zplugin light zsh-users/zsh-completions

# swaymsg completions
zplugin ice wait'1' lucid as'completion'
zplugin snippet https://gist.githubusercontent.com/RPigott/a3efdc08fa4d5fd7df38d091ab5e8532/raw/867ac1884d97d1bd1e5d4037d4eefdf4a004e72b/_swaymsg

# dotdrop completion
zplugin ice wait'1' lucid as'completion'
zplugin snippet $DOTREPO/dotdrop/completion/_dotdrop-completion.zsh

# docker-compose completion
zplugin ice wait'1' lucid as'completion'
zplugin snippet https://raw.githubusercontent.com/docker/compose/master/contrib/completion/zsh/_docker-compose

# syntax highlighting
zplugin ice lucid atinit'zpcompinit'
zplugin light zdharma/fast-syntax-highlighting

# use fzf with zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
