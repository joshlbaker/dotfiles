
export ZSH=/Users/joshbaker/.oh-my-zsh

ZSH_THEME="agnoster"

DEFAULT_USER="joshbaker"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias setup_core='git pull && update && bin/rake dev:create_apps && echo "Shop.first.beta.enable(:inbox_in_admin)" | bin/rails c && restart'
alias setup_web='git pull && update && restart'

prompt_dir() {
  prompt_segment blue black '%c'
}

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/usr/local/opt/libxml2/lib/pkgconfig"

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
if [ -e /Users/joshbaker/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/joshbaker/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
