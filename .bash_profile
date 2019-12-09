# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra,macosx}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# NVM related configs
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Pyenv related configs
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# GVM related configs
[[ -s "/Users/zuun/.gvm/scripts/gvm" ]] && source "/Users/zuun/.gvm/scripts/gvm"

# GOPATH
export PATH=$PATH:/usr/local/go/bin:/Users/zuun/go/bin
